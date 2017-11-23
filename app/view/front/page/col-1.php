<!DOCTYPE html>
<html lang="en">
	<?php $this->getThemeElement("page/html/head",$__forward); ?>
	<?php $this->getBodyBefore(); ?>
	<body class="shopping-cart-page">
		<!-- mobile menu -->
		<?php $this->getThemeElement("page/html/menu_mobile",$__forward); ?>
		<!-- mobile menu -->

		<!-- page -->
		<div id="page">
			<!--[if lt IE 8]>
				<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
			<![endif]-->

			<!-- Header -->
			<?php $this->getThemeElement("page/html/menu",$__forward); ?>
			<!-- end header -->


			<!-- Breadcrumbs -->
			<?php $this->getThemeElement('page/html/breadcrumbs',$__forward); ?>
			<!-- Breadcrumbs End -->

			<!-- Main Container -->
			<?php $this->getThemeContent(); ?>
			<!-- Main Container End -->

			<!-- Footer -->
			<?php $this->getThemeElement('page/html/foot',$__forward); ?>
			<!-- End Footer -->
		</div>
		<!-- end page -->


		<?php $this->getJsFooter(); ?>

		<script>
			$(document).ready(function(e){
				<?php $this->getJsReady(); ?>
				<?php $this->getJsContent(); ?>
			});
		</script>
	</body>
</html>
