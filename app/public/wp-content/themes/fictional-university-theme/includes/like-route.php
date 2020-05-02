<?php

//for new custom route or new field to a route
add_action('rest_api_init', 'universityLikeRoutes');

function universityLikeRoutes() {
	//registering route(3 arguments)
	register_rest_route('university/v1', 'manageLike', array(
		'methods' => 'POST',
		'callback' => 'createLike'
	));

		register_rest_route('university/v1', 'manageLike', array(
		'methods' => 'DELETE',
		'callback' => 'deleteLike'
	));

}


function createLike($data) {
	//make sure user is logged in
	if(is_user_logged_in()) {

	//incoming data
	$professor = sanitize_text_field($data['professorId']); //sanitize adds security

		$existQuery = new WP_Query(array(
            'author' => get_current_user_id(),
            'post_type' => 'like',
            'meta_query' => array(
              array(
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => $professor
              )
            )
          ));


	if ($existQuery->found_posts == 0 AND get_post_type($professor) == 'professor') { //this will see if the user already has a post liking this specific professor AND if the post_type = 'professor'

		//create new like
		return wp_insert_post(array(
			'post_type' => 'like',
			'post_status' => 'publish', //defaults to draft
			'post_title' => '2nd PHP Test',
			'meta_input' => array( //creates Wordpress Native custom fields
				'liked_professor_id' => $professor
			)
		));


	} else {
		// cancel current request.
		die("Invalid professor id");
	}

	
	} else {
		die('Only logged in users can create a like.');
	}


}

function deleteLike($data) {
	$likeId = sanitize_text_field($data['like']);
	if (get_current_user_id() == get_post_field('post_author', $likeId) AND get_post_type($likeId) == 'like') {
		wp_delete_post($likeId, true); //set to true will delete immediately
		return 'Congrats, like deleted';
	} else {
		die("You do not have permission to delete that.");
	}
}