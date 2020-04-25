<?php

get_header(); 
pageBanner(array(
	'title' => 'All Programs',
	'subtitle' => 'There is something for everyone. Have a look around.'
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

  	<ul class="link-list min-list">
  	
  	<?php
  		while(have_posts()) {
  			the_post(); ?>
  			<li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li> 
  	<?php }

  	?>
  	
<!-- ADDING PAGINATION LINKS -->
	<?php 
		echo paginate_links();
	?>
	
	</ul>


 </div>

<?php get_footer();
?>

