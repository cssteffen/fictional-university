<?php

get_header();

	while(have_posts()) {
		the_post(); 
		pageBanner(array());
		?>


  <div class="container container--narrow page-section">

<!-- ONLY WANT BREADCRUMBS NAV TO SHOW ON CHILD-PAGES-->
	<?php 
	$theParent = wp_get_post_parent_id(get_the_ID());
		if ($theParent) { ?>

	<div class="metabox metabox--position-up metabox--with-home-link">
      <p><a class="metabox__blog-home-link" href="<?php echo get_permalink($theParent); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($theParent); ?></a> <span class="metabox__main"><?php the_title(); ?></span></p>
    </div>

	<?php	}

	?>
	<!-- END OF BREADCRUMBS NAV -->

 
 	<!-- BEGIN SIDEBAR LINKS (this will check to see if current page
 		is a parent or a child of a parent - if true sidebar will load-->
   
   <?php 
   $testArray = get_pages(array(
   		'child_of' => get_the_ID()
   ));

   if ($theParent or $testArray) { ?>
    <div class="page-links">
      <h2 class="page-links__title"><a href="<?php echo get_permalink($theParent) ?>;"><?php echo get_the_title($theParent);?></a></h2>
      <ul class="min-list">
 			<?php 
 			if ($theParent) {
 				$findChildrenOf = $theParent;
 			} else {
 				$findChildrenOf = get_the_ID();
 			}

 				wp_list_pages(array(
 					'title_li' => NULL,
 					'child_of' => $findChildrenOf,
 					'sort_column' => 'menu_order'
 				));
 			?>

      </ul>
    </div>
<?php } ?>


    <div class="generic-content">
      <?php the_content(); ?> <!-- This displays the wp content -->
    </div>

  </div>

		<?php 
}

get_footer();

?>