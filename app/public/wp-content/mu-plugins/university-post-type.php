<?php 

// ======= EVENT POST TYPE =======
function university_post_types() {
	register_post_type('event', array(
		'capability_type' => 'event', //is post by default, gives user access
		'map_meta_cap' => true, // requires 'event level permissions to edit events'
		'supports' => array('title', 'editor', 'excerpt'),
		'rewrite' => array('slug' => 'events'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Events',
			'add_new_item' => 'Add New Event',
			'edit_item' => 'Edit Event',
			'all_items' => 'All Events',
			'singular_name' => 'Event'
	),
		'menu_icon' => 'dashicons-calendar'
	));


// ======= PROGRAM POST TYPE =======
	register_post_type('program', array(
		'supports' => array('title', 'custom_fields'),
		'rewrite' => array('slug' => 'programs'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Programs',
			'add_new_item' => 'Add New Program',
			'edit_item' => 'Edit Program',
			'all_items' => 'All Program',
			'singular_name' => 'Program'
	),
		'menu_icon' => 'dashicons-awards'
	));


// ======= PROFESSOR POST TYPE =======
	register_post_type('professor', array(
		'show_in_rest' => true,
		'supports' => array('title', 'editor', 'custom_fields', 'thumbnail'), //enables featured image
		'public' => true,
		'labels' => array(
			'name' => 'Professors',
			'add_new_item' => 'Add New Professor',
			'edit_item' => 'Edit Professor',
			'all_items' => 'All Professors',
			'singular_name' => 'Professor'
	),
		'menu_icon' => 'dashicons-welcome-learn-more'
	));

// ======= CAMPUS POST TYPE =======
	register_post_type('campus', array(
		'capability_type' => 'campus',
		'map_meta_cap' => true,
		'supports' => array('title', 'editor', 'excerpt', 'custom_field', 'api'),
		'rewrite' => array('slug' => 'campuses'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Campuses',
			'add_new_item' => 'Add New Campus',
			'edit_item' => 'Edit Campus',
			'all_items' => 'All Campuses',
			'singular_name' => 'Campus'
	),
		'menu_icon' => 'dashicons-location-alt'
	));	


// ======= NOTES POST TYPE =======
	register_post_type('note', array(
		'capability_type' => 'note', // gives ability for all users to create notes
		'map_meta_cap' => true, // enforces AND requires permissions
		'show_in_rest' => true, // ability to work in rest API
		'supports' => array('title', 'editor', 'custom_fields'), //enables featured image
		'public' => false, // private & specific to each user
		'show_ui' => true, //shows in admin dashboard
		'labels' => array(
			'name' => 'Notes',
			'add_new_item' => 'Add New Note',
			'edit_item' => 'Edit Note',
			'all_items' => 'All Notes',
			'singular_name' => 'Note'
	),
		'menu_icon' => 'dashicons-welcome-write-blog'
	));

// ======= LIKE POST TYPE =======
//using custom logic & custom handling of permissions
	register_post_type('like', array(
		'supports' => array('title', 'custom_fields'), //enables featured image
		'public' => false, // private & specific to each user
		'show_ui' => true, //shows in admin dashboard
		'labels' => array(
			'name' => 'Likes',
			'add_new_item' => 'Add New Like',
			'edit_item' => 'Edit Like',
			'all_items' => 'All Likes',
			'singular_name' => 'Like'
	),
		'menu_icon' => 'dashicons-heart'
	));

}

add_action('init', 'university_post_types');

?>

