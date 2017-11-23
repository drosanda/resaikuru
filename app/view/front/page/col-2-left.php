<!DOCTYPE html>
<html lang="en">
	<?php $this->getThemeElement("page/html/head",$__forward); ?>
	<?php $this->getBodyBefore(); ?>
	<body class="category-page">
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

			<section class="main-container col2-left-layout">
				<div class="container">
					<div class="row">
						<!-- main -->
						<div class="col-sm-8 col-sm-push-4 col-md-9 col-md-push-3">
							<?php $this->getThemeContent(); ?>
						</div>
						<!-- end of smain -->

						<!-- sidebar -->
						<div class="sidebar col-sm-4 col-md-3 col-xs-12 col-md-pull-9 col-sm-pull-8">
							<aside class="sidebar">
								<?php $this->getThemeLeftContent(); ?>
							</aside>
						</div>
						<!-- end of sidebar -->
					</div>
				</div>
			</section>
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
