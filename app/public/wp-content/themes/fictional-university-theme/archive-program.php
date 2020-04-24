<?php
get_header(); ?>

	<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg') ?>);"></div>


    <!-- ALL EVENTS HEADER & TAGLINE -->
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title">All Programs</h1>
      <div class="page-banner__intro">
        <p>There is something for everyone. Have a look around.</p>
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

