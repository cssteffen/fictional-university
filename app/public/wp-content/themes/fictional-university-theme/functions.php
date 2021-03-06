<?php

require get_theme_file_path('/includes/search-route.php'); // pulling in file 
require get_theme_file_path('/includes/like-route.php');

function university_custom_rest() {
	//'post-type to customize', 'name of new field', 'array() to manage field'
	register_rest_field('post', 'authorName', array(
		'get_callback' => function() {return get_the_author();}
	));

	//'post-type to customize', 'name of new field', 'array() to manage field'
	register_rest_field('note', 'userNoteCount', array(
		'get_callback' => function() {return count_user_posts(get_current_user_id(), 'note');}
	));
}

add_action('rest_api_init', 'university_custom_rest');

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

//wp_register_script('googlemaps', 'https://maps.googleapis.com/maps/api/js?&key=AIzaSyAnZV9ORCcs9HJUPtUXE3EGtC_o3KAHqGI&callback=initMap', array(), '', true);

function university_files() {
	wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=AIzaSyAnZV9ORCcs9HJUPtUXE3EGtC_o3KAHqGI', NULL, '1.0', true);
	wp_enqueue_script('main-university-js', get_theme_file_uri('/js/scripts-bundled.js'), NULL, microtime(), true);
	wp_enqueue_style('custom-google-font', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
	wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	wp_enqueue_style('university_main_styles', get_stylesheet_uri());

	//outputs js data into source of html webpage
	wp_localize_script('main-university-js', 'universityData', array(
		'root_url' => get_site_url(),
		//this will allow logged in user to delete note
		'nonce' => wp_create_nonce('wp_rest')
	)); 
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
	if (!is_admin() AND is_post_type_archive('campus') AND $query->is_main_query()) {
			$query->set('posts_per_page', -1);

	}

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

//Redirect subscriber accounts out of admin and onto homepage
add_action('admin_init', 'redirectSubscribersToFrontend');

function redirectSubscribersToFrontend() {
$ourCurrentUser = wp_get_current_user();

	if (count($ourCurrentUser->roles) == 1 AND $ourCurrentUser->roles[0] == 'subscriber') {
		wp_redirect(site_url('/'));
		exit; // stop spinning gears after redirecting

	}
}

//Removed Wordpress header admin bar for subscriber only users
add_action('wp_loaded', 'noSubscriberAdminBar');

function noSubscriberAdminBar() {
$ourCurrentUser = wp_get_current_user();

	if (count($ourCurrentUser->roles) == 1 AND $ourCurrentUser->roles[0] == 'subscriber') {
		show_admin_bar(false);
	}
}

// Customize LOGIN Screen
//(1st argument is value/object you want to change, 2nd argument is function you want to use instead )
add_filter('login_headerurl', 'ourHeaderUrl');

function ourHeaderUrl() {
	return esc_url(site_url('/'));
}

add_action('login_enqueue_scripts', 'ourLoginCSS');

function ourLoginCSS() {
	wp_enqueue_style('university_main_styles', get_stylesheet_uri());
	wp_enqueue_style('custom-google-font', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
}

add_filter('login_headertitle', 'ourLoginTitle');

function ourLoginTitle() {
	return get_bloginfo('name');
}

// ===== Force note posts to be private =======
// Sanatizing Title & Textarea for security
// Set note post_status to "private" for extra security
// Setting post per user limit 
add_filter('wp_insert_post_data','makeNotePrivate', 10, 2); //10=priority callback 2=parameters

function makeNotePrivate($data, $postarr) {

	if($data['post_type'] == 'note') {
		if(count_user_posts(get_current_user_id(), 'note') > 4 AND !$postarr['ID']) {
			die("You have reached your note limit."); // no new post will be created
		}

		$data['post_content'] = sanitize_textarea_field($data['post_content']);
		$data['post_title'] = sanitize_text_field($data['post_title']);
	}

	if($data['post_type'] == 'note' AND $data['post_status'] != 'trash') {
		$data['post_status'] = "private";
	}
	return $data;
}


// ADDS Google Maps Functionality
function universityMapKey($api) {
	$api['key'] = 'AIzaSyAnZV9ORCcs9HJUPtUXE3EGtC_o3KAHqGI';
	return $api;
}
//NEW KEY??: AIzaSyCnvIliUA8GAIpelrZga1QJ7KcBr3nESfE
//static map API: AIzaSyB1xcW-i2zLMdNgvOCF8NMd7rUc1n03NNM
//JS MAP API: AIzaSyAnZV9ORCcs9HJUPtUXE3EGtC_o3KAHqGI

add_filter('acf/fields/google_map/api', 'universityMapKey');

// =========== Method 2: Setting.=============
//function my_acf_init() {
//    acf_update_setting('google_api_key', 'AIzaSyAnZV9ORCcs9HJUPtUXE3EGtC_o3KAHqGI');
//}
//add_action('acf/init', 'my_acf_init');

	// FOR DYNAMIC MENUS - Place this in University_features() funciton
	//register_nav_menu('headerMenuLocation', 'Header Menu Location');
	//register_nav_menu('footerLocationOne', 'Footer Location One');
	//register_nav_menu('footerLocationTwo', 'Footer Location Two');
	

?>

