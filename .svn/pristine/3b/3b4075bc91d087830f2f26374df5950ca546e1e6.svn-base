/* --------------------------------------

=========================================

Pixel | Agency - Responsive Mutipurpose HTML5 Template

Version: 1.0 (Initial Release)

Designed By: rkwebdesigns

=========================================

*/



(function ($) {

	"use strict";



    jQuery(document).ready(function($){

	    

		//carousel active

        $(".carousel-inner .item:first-child").addClass("active");

		

		//Fixed nav on scroll

		$(document).scroll(function(e){

			var scrollTop = $(document).scrollTop();

			if(scrollTop > $('nav').height()){

				//console.log(scrollTop);

				$('nav').addClass('navbar-fixed-top');

			}

			else {

				$('nav').removeClass('navbar-fixed-top');

			}

		});

			

		//Portfolio Popup

		$('.magnific-popup').magnificPopup({type:'image'});

		

		

		

			

    });



	



    jQuery(window).load(function(){

		

		//Numaric Counter

		$('.counter').counterUp({

          delay: 10,

          time: 1000

        });		

				

		//Portfolio container			

		var $container = $('.portfolioContainer');

		$container.isotope({

			filter: '*',

			animationOptions: {

				duration: 750,

				easing: 'linear',

				queue: false

			}

		});

 

		$('.portfolioFilter a').on('click', function(){

			$('.portfolioFilter a').removeClass('current');

			$(this).addClass('current');

	 

			var selector = $(this).attr('data-filter');

			$container.isotope({

				filter: selector,

				animationOptions: {

					duration: 750,

					easing: 'linear',

					queue: false

				}

			 });

			 return false;

		}); 



	});



    //CONTACT FORM 

      

    $("#contact").submit(function (e) {

        e.preventDefault();

        var name = $("#cf-name").val();

        var email = $("#cf-email").val();

        var subject = $("#cf-subject").val();

        var message = $("#cf-message").val();

        var dataString = 'name=' + name + '&email=' + email + '&subject=' + subject + '&message=' + message;



        function isValidEmail(emailAddress) {

            var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);

            return pattern.test(emailAddress);

        };

        if (isValidEmail(email) && (message.length > 1) && (name.length > 1)) {

            $.ajax({

                type: "POST",

                url: "sendmail.php",

                data: dataString,

                success: function () {

                    $('.success').fadeIn(1000);

                    $('.error').fadeOut(500);

                }

            });

        }

        else {

            $('.error').fadeIn(1000);

            $('.success').fadeOut(500);

        }

        return false;

    });

	//Tabs

	function jQueryTabs2() {
	    $(".tabs2").each(function() {
	        $(".tabs-panel2").not(":first").hide(), $("li", this).removeClass("active"), $("li:first-child", this).addClass("active"), $(".tabs-panel:first-child").show(), $("li", this).click(function(t) {
	            var i = $("a", this).attr("href");
	            $(this).siblings().removeClass("active"), $(this).addClass("active"), $(i).siblings().hide(), $(i).fadeIn(400), t.preventDefault()
	        }), $(window).width() < 100 && $(".tabs-panel2").show()
	    })
	}
	$(document).ready(function() {
	    jQueryTabs2(), $(".tabs2 li a").each(function() {
	        var t = $(this).attr("href"),
	            i = $(this).html();
	        $(t + " .tab-title2").prepend("<p><strong>" + i + "</strong></p>")
	    })
	}), $(window).resize(function() {
	    jQueryTabs2()
	});

	
	// Accordion
	
	(function() {

		var $container = $('.acc-container'),
			$trigger   = $('.acc-trigger');

		$container.hide();
		$trigger.first().addClass('active').next().show();

		var fullWidth = $container.outerWidth(true);
		$trigger.css('width', fullWidth);
		$container.css('width', fullWidth);
		
		$trigger.on('click', function(e) {
			if( $(this).next().is(':hidden') ) {
				$trigger.removeClass('active').next().slideUp(300);
				$(this).toggleClass('active').next().slideDown(300);
			}
			e.preventDefault();
		});

		// Resize
		$(window).on('resize', function() {
			fullWidth = $container.outerWidth(true)
			$trigger.css('width', $trigger.parent().width() );
			$container.css('width', $container.parent().width() );
		});

	})();

	

	//Wow js

	new WOW().init();

	 

}(jQuery));	