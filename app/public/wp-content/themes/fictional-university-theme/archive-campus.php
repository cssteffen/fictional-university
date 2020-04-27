<?php

get_header(); 
pageBanner(array(
	'title' => 'Our Campuses',
	'subtitle' => 'We have several conveniently located campuses.'
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


<!-- USE THIS CODE IF GOOGLE MAP API NOT WORKING -->
<ul class="link-list min-list">
  	
  	<?php
  		while(have_posts()) {
  			the_post(); ?>
  			<li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li> 
  	<?php }

  	?>
 
	
	</ul>

<!-- IF I CAN GET GOOGLE MAP API TO WORK - USE THIS CODE -->
  	<div class= "acf-map">
  	
  	<?php
  		while(have_posts()) {
  			the_post(); 
  			$mapLocation = get_field('map_location');
  			?>
  			<div class="marker" data-lat="<?php echo $mapLocation['lat'] ?>" data-lng="<?php echo $mapLocation['lng'] ?>">
  				<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
  				<?php echo $mapLocation['address']; ?>
  			</div>
  	<?php } ?>
  	
	
	</div>


 </div>

<?php get_footer();
?>


