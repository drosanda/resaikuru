//skin/homepage
function slick_init() {
	'use strict';

	var $swipeTabsContainer = $('#slick_fashion_nav'),
		$swipeTabs = $('#slick_fashion_nav .swipe-tab'),
		$swipeTabsContentContainer = $('#slick_fashion_con'),
		currentIndex = 0,
		activeTabClassName = 'active-tab';

	$swipeTabsContainer.on('init', function(event, slick) {
		$swipeTabsContentContainer.removeClass('invisible');
		$swipeTabsContainer.removeClass('invisible');

		currentIndex = slick.getCurrent();
		$swipeTabs.removeClass(activeTabClassName);
       	$('#slick_fashion_nav .swipe-tab[data-slick-index=' + currentIndex + ']').addClass(activeTabClassName);
	});

	$swipeTabsContainer.slick({
		//slidesToShow: 3.25,
		slidesToShow: 3,
		slidesToScroll: 1,
		arrows: false,
		infinite: false,
		swipeToSlide: true,
		touchThreshold: 10
	});

	$swipeTabsContentContainer.slick({
		asNavFor: $swipeTabsContainer,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		infinite: false,
		swipeToSlide: true,
    draggable: false,
		touchThreshold: 10
	});


	$swipeTabs.on('click', function(event) {
        // gets index of clicked tab
        currentIndex = $(this).data('slick-index');
        $swipeTabs.removeClass(activeTabClassName);
        $('#slick_fashion_nav .swipe-tab[data-slick-index=' + currentIndex +']').addClass(activeTabClassName);
        $swipeTabsContainer.slick('slickGoTo', currentIndex);
        $swipeTabsContentContainer.slick('slickGoTo', currentIndex);
    });

    //initializes slick navigation tabs swipe handler
    $swipeTabsContentContainer.on('swipe', function(event, slick, direction) {
    	currentIndex = $(this).slick('slickCurrentSlide');
		$swipeTabs.removeClass(activeTabClassName);
		$('#slick_fashion_nav .swipe-tab[data-slick-index=' + currentIndex + ']').addClass(activeTabClassName);
	});

	var $swipeTabsContainer2 = $('#slick_buku_nav'),
		$swipeTabs2 = $('#slick_buku_nav .swipe-tab'),
		$swipeTabsContentContainer2 = $('#slick_buku_con'),
		currentIndex2 = 0,
		activeTabClassName2 = 'active-tab';

	$swipeTabsContainer2.on('init', function(event, slick2) {
		$swipeTabsContentContainer2.removeClass('invisible');
		$swipeTabsContainer2.removeClass('invisible');

		currentIndex2 = slick2.getCurrent();
		$swipeTabs2.removeClass(activeTabClassName2);
       	$('#slick_buku_nav .swipe-tab[data-slick-index=' + currentIndex2 + ']').addClass(activeTabClassName2);
	});

	$swipeTabsContainer2.slick({
		//slidesToShow: 3.25,
		slidesToShow: 3,
		slidesToScroll: 1,
		arrows: false,
		infinite: false,
		swipeToSlide: true,
		touchThreshold: 10
	});

	$swipeTabsContentContainer2.slick({
		asNavFor: $swipeTabsContainer2,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		infinite: false,
		swipeToSlide: true,
    draggable: false,
		touchThreshold: 10
	});


	$swipeTabs2.on('click', function(event2) {
        // gets index of clicked tab
        currentIndex2 = $(this).data('slick-index');
        $swipeTabs2.removeClass(activeTabClassName2);
        $('#slick_buku_nav .swipe-tab[data-slick-index=' + currentIndex2 +']').addClass(activeTabClassName2);
        $swipeTabsContainer2.slick('slickGoTo', currentIndex2);
        $swipeTabsContentContainer2.slick('slickGoTo', currentIndex2);
    });

    //initializes slick navigation tabs swipe handler
    $swipeTabsContentContainer2.on('swipe', function(event, slick2, direction2) {
    	currentIndex2 = $(this).slick('slickCurrentSlide');
		$swipeTabs2.removeClass(activeTabClassName2);
		$('#slick_buku_nav .swipe-tab[data-slick-index=' + currentIndex2 + ']').addClass(activeTabClassName2);
	});

}



jQuery(document).ready(function($){

	slick_init();

	var $form_modal = $('.cd-user-modal'),
		$form_login = $form_modal.find('#cd-login'),
		$form_signup = $form_modal.find('#cd-signup'),
		$form_forgot_password = $form_modal.find('#cd-reset-password'),
		$form_modal_tab = $('.cd-switcher'),
		$tab_login = $form_modal_tab.children('li').eq(0).children('a'),
		$tab_signup = $form_modal_tab.children('li').eq(1).children('a'),
		$forgot_password_link = $form_login.find('.cd-form-bottom-message a'),
		$back_to_login_link = $form_forgot_password.find('.cd-form-bottom-message a'),
		$main_nav = $('#main-nav-login');

	//open modal
	$main_nav.on('click', function(event){

		if( $(event.target).is($main_nav) ) {
			// on mobile open the submenu
			$(this).children('ul').toggleClass('is-visible');
		} else {
			// on mobile close submenu
			$main_nav.children('ul').removeClass('is-visible');
			//show modal layer
			$form_modal.addClass('is-visible');
			//show the selected form
			( $(event.target).is('.cd-signup') ) ? signup_selected() : login_selected();
		}

	});

	//close modal
	$('.cd-user-modal').on('click', function(event){
		if( $(event.target).is($form_modal) || $(event.target).is('.cd-close-form') ) {
			$form_modal.removeClass('is-visible');
		}
	});
	//close modal when clicking the esc keyboard button
	$(document).keyup(function(event){
    	if(event.which=='27'){
    		$form_modal.removeClass('is-visible');
	    }
    });

	//switch from a tab to another
	$form_modal_tab.on('click', function(event) {
		event.preventDefault();
		( $(event.target).is( $tab_login ) ) ? login_selected() : signup_selected();
	});

	//hide or show password
	$('.hide-password').on('click', function(){
		var $this= $(this),
			$password_field = $this.prev('input');

		( 'password' == $password_field.attr('type') ) ? $password_field.attr('type', 'text') : $password_field.attr('type', 'password');
		( 'Hide' == $this.text() ) ? $this.text('Show') : $this.text('Hide');
		//focus and move cursor to the end of input field
		$password_field.putCursorAtEnd();
	});

	//show forgot-password form
	$forgot_password_link.on('click', function(event){
		event.preventDefault();
		forgot_password_selected();
	});

	//back to login from the forgot-password form
	$back_to_login_link.on('click', function(event){
		event.preventDefault();
		login_selected();
	});

	function login_selected(){
		$form_login.addClass('is-selected');
		$form_signup.removeClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.addClass('selected');
		$tab_signup.removeClass('selected');
	}

	function signup_selected(){
		$form_login.removeClass('is-selected');
		$form_signup.addClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.removeClass('selected');
		$tab_signup.addClass('selected');
	}

	function forgot_password_selected(){
		$form_login.removeClass('is-selected');
		$form_signup.removeClass('is-selected');
		$form_forgot_password.addClass('is-selected');
	}

	//REMOVE THIS - it's just to show error messages
	//$form_login.find('input[type="submit"]').on('click', function(event){
	//	event.preventDefault();
	//	$form_login.find('input[type="email"]').toggleClass('has-error').next('span').toggleClass('is-visible');
	//});
	//$form_signup.find('input[type="submit"]').on('click', function(event){
	//	event.preventDefault();
	//	$form_signup.find('input[type="email"]').toggleClass('has-error').next('span').toggleClass('is-visible');
	//});


	//IE9 placeholder fallback
	//credits http://www.hagenburger.net/BLOG/HTML5-Input-Placeholder-Fix-With-jQuery.html
	if(typeof Modernizr !== 'undefined'){
	if(Modernizr.input !== 'undefined'){
	if(Modernizr.input.placeholder !== 'undefined'){
	if(!Modernizr.input.placeholder){
		$('[placeholder]').focus(function() {
			var input = $(this);
			if (input.val() == input.attr('placeholder')) {
				input.val('');
		  	}
		}).blur(function() {
		 	var input = $(this);
		  	if (input.val() == '' || input.val() == input.attr('placeholder')) {
				input.val(input.attr('placeholder'));
		  	}
		}).blur();
		$('[placeholder]').parents('form').submit(function() {
		  	$(this).find('[placeholder]').each(function() {
				var input = $(this);
						if (input.val() == input.attr('placeholder')) {
			 				input.val('');
							}
		  				})
					});
				}
			}
		}
	}

});


//credits https://css-tricks.com/snippets/jquery/move-cursor-to-end-of-textarea-or-input/
jQuery.fn.putCursorAtEnd = function() {
	return this.each(function() {
    	// If this function exists...
    	if (this.setSelectionRange) {
      		// ... then use it (Doesn't work in IE)
      		// Double the length because Opera is inconsistent about whether a carriage return is one character or two. Sigh.
      		var len = $(this).val().length * 2;
      		this.setSelectionRange(len, len);
    	} else {
    		// ... otherwise replace the contents with itself
    		// (Doesn't work in Google Chrome)
      		$(this).val($(this).val());
    	}
	});
};
