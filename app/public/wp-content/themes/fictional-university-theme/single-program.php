<?php
get_header();

	while(have_posts()) {
		the_post(); 
		pageBanner();
		?>



  <div class="container container--narrow page-section">

  	<!-- METABOX  DISPLAYS EVENT HOME BREADCRUMB NAV, EVENT TITLE
  			AND NAVIGATES TO ARCHIVE EVENT LINK-->
  	<div class="metabox metabox--position-up metabox--with-home-link">
      <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program') ?>"><i class="fa fa-home" aria-hidden="true"></i> All Programs</a> <span class="metabox__main"><?php the_title(); ?></span></p>
    </div>

  	<!-- PAGE CONTENT -->
  	<div class="generic-content"><?php the_content(); ?></div>

  	
  	<!-- Custom Queries to database to find & display related program 
  	professors & upcoming events-->
  	 <?php
         
        // ======= Professor Custom Query =======
		$relatedProfessors = new WP_Query(array(
            'posts_per_page' => -1,
            'post_type' => 'Professor',
            'orderby' => 'title', //order alphabetically
            'order' => 'ASC',
            'meta_query' => array( //creating new array to further sort)
              array(	//can have multiple inner arrays
              	'key' => 'related_programs', // custom field we are looking in
              	'compare' => 'LIKE', // contains
              	'value' => '"' . get_the_ID() . '"' // the ID of the program
              	// this gets the correct info from the serialized data
              )
            )
          ));

          	// Only Display Upcoming events IF there are some for that program
      if ($relatedProfessors->have_posts()) {

          	// Adding Dynamic Headline for Upcoming Events
          echo '<hr class="section-break">';
          echo '<h2 class="headline headline--medium">' . get_the_title() . ' Professors</h2>';
          // -------

          echo '<ul class="professor-cards">';

          while($relatedProfessors->have_posts()) {
            $relatedProfessors->the_post(); ?>

        <li class="professor-card__list-item">
        	<a class="professor-card" href="<?php the_permalink(); ?>">
        		<img class="professor-card__image" src="<?php the_post_thumbnail_url('professorLandscape')?> " >
        		<span class="professor-card__name"><?php the_title(); ?></span> 
        	</a>
        </li>

          <?php }

          echo '</ul>';

          }

          wp_reset_postdata(); // resets global post object back to default

        // ======= Events Custom Query =======

          $today = date('Ymd');// getting today's date

          $homepageEvents = new WP_Query(array(
            'posts_per_page' => 2,
            'post_type' => 'event',
            'meta_key' => 'event_date', //grabbing custom field "event_date"
            'orderby' => 'meta_value_num', //ordering by number
            'order' => 'ASC',
            'meta_query' => array( //creating new array to further sort)
              array(		// think of inner-array as a filter
                'key' => 'event_date', //only get events dates
                'compare' => '>=', // that are greater than or equal
                'value' => $today, // to today's date
                'type' => 'numeric' // expect return value to be numbers.
              ),
              array(	//can have multiple inner arrays
              	'key' => 'related_programs', // custom field we are looking in
              	'compare' => 'LIKE', // contains
              	'value' => '"' . get_the_ID() . '"' // the ID of the program
              	// this gets the correct info from the serialized data
              )
            )
          ));

          	// Only Display programs IF there are some for that campus
      if ($homepageEvents->have_posts()) {

          	// Adding Dynamic Headline for programs
          echo '<hr class="section-break">';
          echo '<h2 class="headline headline--medium">Upcoming ' . get_the_title() . ' Events </h2>';
          // -------

          while($homepageEvents->have_posts()) {
            $homepageEvents->the_post(); 
            get_template_part('template-parts/content', get_post_type());
             }
          }

          wp_reset_postdata(); // RESET AFTER each custom query
          $relatedCampuses = get_field('related_campus');

          if ($relatedCampuses) {
          	echo '<hr class="section-break">';
          	echo '<h2 class="headline headline--medium">' . get_the_title() . ' is Available At These Campuses:</h2>';

          	echo '<ul class="min-list link-list">';
          	foreach($relatedCampuses as $campus) {
          		?> <li><a href="<?php echo get_the_permalink($campus); ?>"><?php echo get_the_title($campus); ?> </a></li> 
          		<?php

          	}
          }

          ?>

          <!-- End of Custom Query to Database ------------ -->


  </div>


		<?php }

get_footer();

?>