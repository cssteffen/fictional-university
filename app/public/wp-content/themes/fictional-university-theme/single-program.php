<?php
get_header();

	while(have_posts()) {
		the_post(); ?>

		<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg') ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php the_title(); ?></h1>
      <div class="page-banner__intro">
        <p>DON'T FORGET TO REPLACE ME LATER</p>
      </div>
    </div>  
  </div>

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

          while($relatedProfessors->have_posts()) {
            $relatedProfessors->the_post(); ?>

        <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?> </a></li>

          <?php }

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

          	// Only Display Upcoming events IF there are some for that program
      if ($homepageEvents->have_posts()) {

          	// Adding Dynamic Headline for Upcoming Events
          echo '<hr class="section-break">';
          echo '<h2 class="headline headline--medium">Upcoming ' . get_the_title() . ' Events </h2>';
          // -------

          while($homepageEvents->have_posts()) {
            $homepageEvents->the_post(); ?>

        <div class="event-summary">
          <a class="event-summary__date t-center" href="#">
            <span class="event-summary__month"><?php 
              $eventDate = new DateTime(get_field('event_date'));
              echo $eventDate->format('M')
            ?></span>
            <span class="event-summary__day"><?php echo $eventDate->format('d')
            ?></span>  
          </a>
          <div class="event-summary__content">
            <h5 class="event-summary__title headline headline--tiny"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
            <p><?php if (has_excerpt()) {
              echo get_the_excerpt();
            } else {
              echo wp_trim_words(get_the_content(), 18);
            } ?><a href="<?php the_permalink(); ?>" class="nu gray">Learn more</a></p>
          </div>
        </div>

          <?php }

          }

          ?>

          <!-- End of Custom Query to Database ------------ -->


  </div>


		<?php }

get_footer();

?>