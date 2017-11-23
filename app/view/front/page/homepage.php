<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Risai Kuru - Everything Is Useful</title>

  <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/reset.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link href="<?php echo base_url('skin/homepage/'); ?>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Bootstrap core CSS -->
  <link href="<?php echo base_url('skin/homepage/'); ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url('skin/front/'); ?>css/jquery.gritter.css">
  <link rel="stylesheet" href="<?php echo base_url('skin/homepage/'); ?>css/style.css">
  <link rel="stylesheet" href="<?php echo base_url('skin/homepage/'); ?>css/epggea.css">
<style>
.modal {
  padding-right: 0.75em;
}
.container.atas {
  min-height: 80vh;
}
</style>

<script>
var base_url_api = 'http://dsbdg.local/api/';
var product_current = {};
</script>
</head>

<body>
  <body>
	<header role="banner">
		<div id="cd-logo"><a href="#"><img src="<?php echo base_url('skin/homepage/'); ?>img/logo.png" alt="Logo"></a></div>

		<nav id="main-nav-login" class="main-nav">
			<ul style="z-index:99;">
				<!-- inser more links here -->
				<li><a class="cd-signin" href="#0">Login</a></li>
				<li><a class="cd-signup" href="#0">Daftar</a></li>
			</ul>
		</nav>

		<nav id="main-nav-logout" class="main-nav" style="display:none;">
			<ul style="z-index:99;">
				<li><a id="aname_span" class="cd-signin" href="#0">Logout</a></li>
				<li><a id="alogout_nav" class="cd-signup" href="#0">Logout</a></li>
			</ul>
		</nav>

	</header>

	<div id="mlogin_depan" class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Log in</a></li>
				<li><a href="#0">Daftar</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
				<form id="flogin_depan" method="post" action="" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="iemail">E-mail *</label>
						<input class="full-width has-padding has-border" id="iemail" type="email" placeholder="E-mail" required>
						<span id="ieemail" class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="ipassword">Password *</label>
						<input class="full-width has-padding has-border" id="ipassword" type="text"  placeholder="Password" required>
						<a href="#0" class="hide-password">Hide</a>
						<span id="ieepassword" class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked />
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input data-dismiss="modal" class="full-width" type="submit" value="Login" />
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form id="flupa_password" action="" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="ilupa_email">E-mail *</label>
						<input class="full-width has-padding has-border" id="ilupa_email" type="email" placeholder="E-mail" />
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password" />
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
</body>

<div class="container atas">
  <div class="row section-banner">
    <div class="col-sm-offset-3 col-sm-12 col-xs-12 text-center">
      <div>
        <span class="line about"></span>
        <span class="section-title about">KATEGORI BUKU</span>
        <span class="line about"></span>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-12">
      <div class="sub-header ">
        <div id="slick_buku_nav" class="swipe-tabs">
          <div class="swipe-tab">Programming</div>
          <div class="swipe-tab">Seni &amp; Desain</div>
          <div class="swipe-tab">Bisnis & Ekonomi</div>
          <div class="swipe-tab">Fiksi Populer</div>
          <div class="swipe-tab">Agama</div>
        </div>
      </div>
      <div class="main-container">
        <div id="slick_buku_con" class="swipe-tabs-container ">
          <div class="swipe-tab-content">
            <div class="row">

              <?php foreach($kategori['programming'] as $k){ ?>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('media/'.$k->image); ?>" alt="<?php echo $k->name;?>">
                  <div class="card-body">
                    <p class="card-text text-center"><?php echo $k->name;?></p>
                    <div class="btn-ground text-center">
                      <button id="aproduk_detail" type="button" class="btn btn-primary" data-toggle="modal" data-produk-id="<?php echo $k->id; ?>"><i class="fa fa-search"></i> Lihat Detail</button>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>

            </div>
          </div>
          <div class="swipe-tab-content">
            <div class="row">

              <?php foreach($kategori['seni'] as $k){ ?>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('media/'.$k->image); ?>" alt="<?php echo $k->name;?>">
                  <div class="card-body">
                    <p class="card-text text-center"><?php echo $k->name;?></p>
                    <div class="btn-ground text-center">
                      <button id="aproduk_detail" type="button" class="btn btn-primary" data-toggle="modal" data-produk-id="<?php echo $k->id; ?>"><i class="fa fa-search"></i> Lihat Detail</button>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>

            </div>
          </div>
          <div class="swipe-tab-content">
            <div class="row">

              <?php foreach($kategori['bisnis'] as $k){ ?>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('media/'.$k->image); ?>" alt="<?php echo $k->name;?>">
                  <div class="card-body">
                    <p class="card-text text-center"><?php echo $k->name;?></p>
                    <div class="btn-ground text-center">
                      <button id="aproduk_detail" type="button" class="btn btn-primary" data-toggle="modal" data-produk-id="<?php echo $k->id; ?>"><i class="fa fa-search"></i> Lihat Detail</button>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>

            </div>
          </div>
          <div class="swipe-tab-content">
            <div class="row">

              <?php foreach($kategori['fiksi'] as $k){ ?>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('media/'.$k->image); ?>" alt="<?php echo $k->name;?>">
                  <div class="card-body">
                    <p class="card-text text-center"><?php echo $k->name;?></p>
                    <div class="btn-ground text-center">
                      <button id="aproduk_detail" type="button" class="btn btn-primary" data-toggle="modal" data-produk-id="<?php echo $k->id; ?>"><i class="fa fa-search"></i> Lihat Detail</button>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>

            </div>
          </div>
          <div class="swipe-tab-content">
            <div class="row">

              <?php foreach($kategori['agama'] as $k){ ?>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('media/'.$k->image); ?>" alt="<?php echo $k->name;?>">
                  <div class="card-body">
                    <p class="card-text text-center"><?php echo $k->name;?></p>
                    <div class="btn-ground text-center">
                      <button id="aproduk_detail" type="button" class="btn btn-primary" data-toggle="modal" data-produk-id="<?php echo $k->id; ?>"><i class="fa fa-search"></i> Lihat Detail</button>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row section-banner" style="display:none;">
    <div class="col-sm-offset-3 col-sm-12 col-xs-12 text-center">
      <div>
        <span class="line about"></span>
        <span class="section-title about">KATEGORI FASHION</span>
        <span class="line about"></span>
      </div>
    </div>
  </div>


  <div class="row" style="display:none;">
    <div class="col-sm-12">
      <div  class="sub-header ">
        <div id="slick_fashion_nav" class="swipe-tabs">
          <div class="swipe-tab">Baju</div>
          <div class="swipe-tab">Celana</div>
          <div class="swipe-tab">Sepatu</div>
          <div class="swipe-tab">Tas</div>
          <div class="swipe-tab">Jaket</div>
        </div>
      </div>
      <div class="main-container">
        <div id="slick_fashion_con" class="swipe-tabs-container ">
          <div class="swipe-tab-content">
            <div class="row">
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image01.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image02.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image03.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="swipe-tab-content">
            <div class="row">
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image01.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image02.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
              <div class="col-sm-4">
                <div class="card mb-3">
                  <img class="card-image-top img-card img-responsive" src="<?php echo base_url('skin/homepage/'); ?>img/image03.jpg" alt="">
                  <div class="card-body">
                    <p class="card-text text-center">Judul Buku : Lorem ipsum dolor sit amet</p>
                    <div class="btn-ground text-center">
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fashion_view"><i class="fa fa-search"></i>Lihat Detail</button>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="swipe-tab-content">Tab 3</div>
          <div class="swipe-tab-content">Tab 4</div>
          <div class="swipe-tab-content">Tab 5</div>
        </div>
      </div>
    </div>
  </div>

</div>

  <footer class="py-5 bg-dark mt-3">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; 2017. Risaikuru - Everything is Useful</p>
        <p class="m-0 text-center text-white">Supported by MainAPI - DevSummit</p>
      </div>
      <!-- /.container -->
  </footer>

<!-- DETAIL BUKU MODAL -->
<div class="modal fade product_view" id="produk_view">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
          <h3 id="produk_view_h3" class="modal-title">JUDUL BUKU</h3>
            <a href="#" data-dismiss="modal" class="class pull-right"><i class="fa fa-times" aria-hidden="true"></i></a>

        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-6 product_img">
                    <img id="produk_view_image" src="<?php echo base_url('skin/homepage/'); ?>img/image01.jpg" class="img-responsive">
                </div>
                <div class="col-md-6 product_content">
                    <h4>Judul Buku : <span id="produk_view_judul">Lorem ipsum dolor sit amet</span></h4>

                    <div id="produk_view_rating" class="rating">
                        Kondisi
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star-o" aria-hidden="true"></i>
                        <i class="fa fa-star-o" aria-hidden="true"></i>

                    </div>
                    <p style="display:none;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>Bahasa : <span id="produk_view_language" >Lorem ipsum dolor sit amet</span></p>
                    <p>Genre : <span id="produk_view_genre" >Lorem ipsum dolor sit amet</span></p>
                    <p>Pengarang : <span id="produk_view_author" >Lorem ipsum dolor sit amet</span></p>
                    <p>Oleh : <span id="produk_view_fnama" >Lorem ipsum dolor sit amet</span></p>
                    <br>
                    <h3 class="cost" style="display:none;"><i class="fa fa-usd" aria-hidden="true"></i> 75.00 <small class="pre-cost"><i class="fa fa-usd" aria-hidden="true"></i> 60.00</small></h3>
                    <div class="space-ten"></div>
                    <div class="btn-ground">
                        <button data-toggle="modal"  data-dismiss="modal" data-target="#checkout_modal" type="button" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Sumbangkan</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- END DETAIL MODAL -->

<!-- DETAIL FASHION MODAL -->
<div class="modal fade product_view" id="fashion_view">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title">JUDUL FASHION</h3>
            <a href="#" data-dismiss="modal" class="class pull-right"><i class="fa fa-times" aria-hidden="true"></i></a>

        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-6 product_img">
                    <img src="<?php echo base_url('skin/homepage/'); ?>img/image01.jpg" class="img-responsive">
                </div>
                <div class="col-md-6 product_content">
                    <h4>Jenis Fashion : <span>Lorem ipsum dolor sit amet</span></h4>

                    <div class="rating">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star-o" aria-hidden="true"></i>
                        (10 reviews)
                    </div>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>Ukuran : <span>Lorem ipsum dolor sit amet</span></p>
                    <p>Warna : <span>Lorem ipsum dolor sit amet</span></p>
                    <p>Berat : <span>Lorem ipsum dolor sit amet</span></p>
                    <br>
                    <h3 class="cost"><i class="fa fa-usd" aria-hidden="true"></i> 75.00 <small class="pre-cost"><i class="fa fa-usd" aria-hidden="true"></i> 60.00</small></h3>
                    <div class="space-ten"></div>
                    <div class="btn-ground">
                        <button data-toggle="modal"  data-dismiss="modal" data-target="#checkout_modal" type="button" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Beli</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- END DETAIL MODAL -->

<!-- CHECKOUT MODAL -->
<div class="modal fade product_view" id="checkout_modal">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title">Sumbangkan</h3>
            <a href="#" data-dismiss="modal" class="class pull-right"><i class="fa fa-times" aria-hidden="true"></i></a>

        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12 product_img">
                    <table id="checkout_modal_order_list" class="table">
                      <thead>
                        <tr>
                          <th>Nama</th>
                          <th>Kondisi</th>
                          <th>Penyedia</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Nama</td>
                          <td>Kondisi</td>
                          <td>Penyedia</td>
                        </tr>
                      </tbody>
                    </table>
                </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-12">
                <div class="well">
                  <p>Alamat Tujuan</p>
                  <div class="text-left">
                    <p>
                      <strong>Yayasan Kasih Bunda</strong> Jalan Taman sari No. 20, Kota Bandung Jawa Barat
                    </p>
                  </div>
                </div>
              </div>
            </div>

        </div>
        <div class="modal-footer">
          <button id="bajukan" type="button" class="btn btn-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Ajukan</button>
        </div>
    </div>
</div>
</div>

<!-- END CHECKOUT MODAL -->

  <script src="<?php echo base_url('skin/homepage/'); ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url('skin/front/'); ?>js/jquery.gritter.min.js"></script>
  <script src="<?php echo base_url('skin/homepage/'); ?>js/epggea.js"></script>
  <script src="<?php echo base_url('skin/homepage/'); ?>js/index.js"></script>
  <script src="<?php echo base_url('skin/homepage/'); ?>vendor/popper/popper.min.js"></script>
  <script src="<?php echo base_url('skin/homepage/'); ?>vendor/bootstrap/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){

    function gritter(judul,isi){
      jQuery.gritter.add({
    		title: judul,
    		text: isi,
    		image: '<?php echo base_url('skin/homepage/img/risai.png'); ?>',
    		sticky: false,
    		time: ''
    	});
    }
  $("#flogin_depan").on("submit",function(e){
    e.preventDefault();
    var url = base_url_api+'account/login/';
    var fd = {};
    fd.email = $(this).find("#iemail").val();
    fd.password = $(this).find("#ipassword").val();

    if(fd.email.length<=5){
      $(this).find("#iemail").focus();
      $(this).find("#ieemail").html('silakan isi email dengan benar');
      return false;
    }
    if(fd.password.length<3){
      $(this).find("#ipassword").focus();
      $(this).find("#ieepassword").html('silakan isi password dengan benar');
      return false;
    }

    $.post(url,fd).done(function(dt){
      if(dt.status == '100' | dt.status == 100){
        $("#main-nav-login").hide();
        $("#main-nav-logout").show();
        $("#aname_span").html(dt.result.fnama);
        $("#mlogin_depan").removeClass('is-visible');
      }else{
        alert('Error: '+dt.message);
      }
    }).fail(function(){
        alert('Error: mohon maaf tidak dapat login sekarang, silakan coba beberapa saat lagi');
    });
  });

  $("#alogout_nav").on("click",function(e){
    e.preventDefault();
    var c = confirm('Apakah anda yakin?');
    if(c){
      $("#main-nav-logout").hide();
      $("#main-nav-login").show();
    }
  });

  $("#main-nav-logout").find('.cd-signin').on("click",function(e){
    e.preventDefault();
  });
  $("#slick_buku_con").on("click","#aproduk_detail",function(e){
    var pid = $(this).attr("data-produk-id");
    $.get(base_url_api+'produk/detail/'+pid).done(function(dt){
      var p = dt.result;
      var produk_current = p;

      $("#produk_view").find("#produk_view_h3").html(p.name);
      $("#produk_view").find("#produk_view_judul").html(p.name);
      $("#produk_view").find("#produk_view_image").attr('src',p.image);
      $("#produk_view").find("#produk_view_author").html(p.author);
      $("#produk_view").find("#produk_view_genre").html(p.genre);
      $("#produk_view").find("#produk_view_language").html(p.language);
      $("#produk_view").find("#produk_view_fnama").html(p.nama_seller);

      var t = '';
      $("#checkout_modal_order_list").find("tbody").empty();
      t += '<tr>';
      t += '<td>'+p.name+'</td>';
      t += '<td>'+Math.floor((Math.random() * 5) + 1)+' dari 5</td>';
      t += '<td>'+p.nama_seller+'</td>';
      t += '</tr>';
      $("#checkout_modal_order_list").find("tbody").html(t);

      $("#produk_view").modal('show');
    });
  });
  $("#bajukan").on("click",function(e){
    e.preventDefault();
    $("#checkout_modal").modal("hide");
    gritter('Mohon Tunggu','Pengajuan sumbangan anda dalam proses');
    $.get(base_url_api+'/account/sms/').done(function(dt){
      gritter('Terimakasih','Terimakasih atas kebaikan hati kamu, kami akan proses segera!');
    });
  });
});
</script>
</body>
</html>
