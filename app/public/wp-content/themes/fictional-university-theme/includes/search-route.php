<?php

//first arguments is wp event we want to hook onto
//second argument is funtion we want to rn
add_action('rest_api_init', 'universityRegisterSearch');

function universityRegisterSearch() {
	//this take 3 arguments
	//1. name space we want - choose a unique name for less conflict with plugins
	//2. the route - (ex. /posts)
	//3. array() describes what should happen when they visit the url
	register_rest_route('university/v1', 'search', array( // Think CRUD
		'methods' => WP_REST_SERVER::READABLE, //safe way of saying 'GET'
		'callback' => 'universitySearchResults'
		));
}

//Wordpress will convert php into JSON
function universitySearchResults($data) { 
		$mainQuery = new WP_Query(array(
			'post_type' => array('post', 'page', 'professor', 'program', 'campus', 'event'),
			's' => sanitize_text_field($data['term']) // extra security 
		));

		$results = array(
			'generalInfo' => array(),
			'professors' => array(),
			'programs' => array(),
			'events' => array(),
			'campuses' => array()
		);

		while($mainQuery->have_posts()) {
			$mainQuery->the_post();

			//Pushes into 'generalInfo array'
			if (get_post_type() == 'post' OR get_post_type() == 'page') {
				//array_push takes 2 arguments
				//1. the empty array you want to add on to
				//2. what you want to add on to the array
				array_push($results['generalInfo'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'postType' => get_post_type(),
					'authorName' => get_the_author()
				));

			}
			//Pushes into 'professors array'
			if (get_post_type() == 'professor') {
				array_push($results['professors'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'image' => get_the_post_thumbnail_url(0, 'professorLandscape') //which post, size
				));

			}
			//Pushes into 'programs array'
			if (get_post_type() == 'program') {
				$relatedCampuses = get_field('related_campus'); //how you get value of a custom field.

				if ($relatedCampuses) {
					foreach($relatedCampuses as $campus) {
						array_push($results['campuses'], array(
							'title' => get_the_title($campus),
							'permalink' => get_the_permalink($campus),
						));
					}
				}
			

				array_push($results['programs'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'id' => get_the_id(),

				));

			}
			//Pushes into 'campuses array'
			if (get_post_type() == 'campus') {
				array_push($results['campuses'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink()
				));

			}
			//Pushes into 'events array'
			if (get_post_type() == 'event') {
			$eventDate = new DateTime(get_field('event_date'));
			$description = null;
				if (has_excerpt()) {
					$description = get_the_excerpt();
					} else {
					$description = wp_trim_words(get_the_content(), 18);
					}
				array_push($results['events'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'month' => $eventDate->format('M'),
					'day' => $eventDate->format('d'),
					'description' => $description
				));

			}

		}

		//dynamic code for multiple programs

		if ($results['programs']) {
			$programsMetaQuery = array('relation' => 'OR');

		foreach($results['programs'] as $item) {
			array_push($programsMetaQuery, array( 
					'key' => 'related_programs', //name of custom field
					'compare' => 'LIKE', 
					'value' => '"' . $item['id'] . '"'
				));
		}

		$programRelationshipQuery = new WP_Query(array(
			'post_type' => array('professor', 'event'),
			'meta_query' => $programsMetaQuery
		));

		while($programRelationshipQuery->have_posts()) {
			$programRelationshipQuery->the_post();

			//Pushes into 'professors array'
			if (get_post_type() == 'professor') {
				array_push($results['professors'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'image' => get_the_post_thumbnail_url(0, 'professorLandscape')
				));
			}

			//Pushes into 'events array'
			if (get_post_type() == 'event') {
				$eventDate = new DateTime(get_field('event_date'));
				$description = null;
				if (has_excerpt()) {
					$description = get_the_excerpt();
					} else {
					$description = wp_trim_words(get_the_content(), 18);
					}
				array_push($results['events'], array(
					'title' => get_the_title(),
					'permalink' => get_the_permalink(),
					'month' => $eventDate->format('M'),
					'day' => $eventDate->format('d'),
					'description' => $description
				));

			}


		}

		//remove duplicates from array and keeps from setting an numerical key
		$results['professors'] = array_values(array_unique($results['professors'], SORT_REGULAR));
		$results['events'] = array_values(array_unique($results['events'], SORT_REGULAR));
		}
		

		return $results;
}