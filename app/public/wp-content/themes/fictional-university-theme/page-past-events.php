<?php
get_header(); ?>

	<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg') ?>);"></div>


    <!-- ALL EVENTS HEADER & TAGLINE -->
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title">Past Events</h1>
      <div class="page-banner__intro">
        <p>A recap of our past events.</p>
      </div>
    </div>  
  </div>
    <!-- ------- -->

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
  			$pastEvents->the_post(); ?>

	    <!-- MATCHING EVENT STYLE FROM HOME PAGE -->
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
            <p><?php echo wp_trim_words(get_the_content(), 18); ?> <a href="<?php the_permalink(); ?>" class="nu gray">Learn more</a></p>
          </div>
        </div>
  				


    	<!-- ------- -->

  		<?php }
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


