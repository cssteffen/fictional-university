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
      <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('event') ?>"><i class="fa fa-home" aria-hidden="true"></i> Event Home</a> <span class="metabox__main"><?php the_title(); ?></span></p>
    </div>

  	<!-- PAGE CONTENT -->
  	<div class="generic-content">
  		<?php the_content(); ?>


  	<!-- RELATED PROGRAM CONTENT -->

  		<?php 
  			$relatedPrograms = get_field('related_programs');


  			// Only displays IF there are related programs
  			if ($relatedPrograms) {
  				echo '<hr class="section-break">';
  				echo '<h2 class="headline headline--medium">Related Program(s)</h2>';
  				echo '<ul class="link-list min-list">';
  			
  			foreach ($relatedPrograms as $program) { ?>

  				<li><a href="<?php echo get_the_permalink($program); ?> " ><?php echo get_the_title($program); ?></a></li>
  				<?php }
  			echo '<ul>';

  			}
  			
 				?>

  	</div>

  </div>


		<?php }

get_footer();

?>