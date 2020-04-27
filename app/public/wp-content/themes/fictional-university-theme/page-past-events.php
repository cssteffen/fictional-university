<?php
get_header(); 
pageBanner(array(
	'title' => 'Past Events',
	'subtitle' => 'A recap of our past events.'
));

?>


    <!-- 2014 WORDPRESS CALL the_archive_title(); replaces this following code 
          <h1 class="page-banner__title"><?php if (is_category()) {
      	single_cat_title();
      }
      if (is_author()) {
      	echo 'Posts by '; the_author();
      }
      ?></h1>
  	-->



  <div class="container container--narrow page-section">
  	<?php

  	//======= Custom query for expired events for use on past events page
		$today = date('Ymd');// getting today's date

        $pastEvents = new WP_Query(array(
        	'paged' => get_query_var('paged', 1), //get current paged result, default to first page
        	//'posts_per_page' => '1', //only use to test pagination is working
            'post_type' => 'event',
            'meta_key' => 'event_date', //grabbing custom field "event_date"
            'orderby' => 'meta_value_num', //ordering by number
            'order' => 'ASC',
            'meta_query' => array( //creating new array to further sort)
              array(
                'key' => 'event_date', //only get events dates
                'compare' => '<', // that are greater than or equal
                'value' => $today, // to today's date
                'type' => 'numeric' // expect return value to be numbers.
              )
            )
          ));

  		while($pastEvents->have_posts()) {
  			$pastEvents->the_post(); 
  			get_template_part('template-parts/content', get_post_type());
  			 }
  	?>
  	
<!-- ADDING PAGINATION LINKS - CUSTOM QUERY FOR CUSTOM PAGE -->
	<?php 
		echo paginate_links(array(
			'total' => $pastEvents->max_num_pages
		));
	?>
 </div>

<?php get_footer();
?>


