<?php

function pageBanner($args = NULL) {
	if (!$args['title']) { // default if no title provided
		$args['title'] = get_the_title();
	}

	if (!$args['subtitle']) {
		$args['subtitle'] = get_field('page_banner_subtitle');

	}

	if (!$args['photo']) {
		if(get_field('page_banner_background_image')) {
			$args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
		} else {
			$args['photo'] = get_theme_file_uri('/images/ocean.jpg');
		}
	}

	?>
	<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo']; ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php echo $args['title'] ?></h1>
      <div class="page-banner__intro">
        <p><?php echo $args['subtitle']?></p>
      </div>
    </div>  
  </div>

	<?php
}

function university_files() {
	wp_enqueue_script('main-university-js', get_theme_file_uri('/js/scripts-bundled.js'), NULL, microtime(), true);
	wp_enqueue_style('custom-google-font', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
	wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	wp_enqueue_style('university_main_styles', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts','university_files');

function university_features() {
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails'); //allows featured images on blog posts
	add_image_size('professorLandscape', 400, 260, true); //custom image size (name, w, h, cropped?)
	add_image_size('professorPortrait', 480, 650, true);
	add_image_size('pageBanner', 1500, 350, true);

}

add_action('after_setup_theme', 'university_features');


function university_adjust_queries($query) {
	if (!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()) {
			$query->set('orderby', 'title');
			$query->set('order', 'ASC');
			$query->set('posts_per_page', -1);

	}

	if (!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()) {
		    $today = date('Ymd');// getting today's date
			$query->set('meta_key', 'event_date');
			$query->set('orderby', 'meta_value_num');
			$query->set('order', 'ASC');
			$query->set('meta_query', array( //creating new array to further sort)
              array(
                'key' => 'event_date', //only get events dates
                'compare' => '>=', // that are greater than or equal
                'value' => $today, // to today's date
                'type' => 'numeric' // expect return value to be numbers.
              )
            ));
	}
}

add_action('pre_get_posts', 'university_adjust_queries');

	// FOR DYNAMIC MENUS - Place this in University_features() funciton
	//register_nav_menu('headerMenuLocation', 'Header Menu Location');
	//register_nav_menu('footerLocationOne', 'Footer Location One');
	//register_nav_menu('footerLocationTwo', 'Footer Location Two');
	

?>

