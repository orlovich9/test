//animations
(function($) {
	$.fn.animated = function(inEffect) {
		$(this).each(function() {
			var ths = $(this);
			ths.css("opacity", "0").addClass("animated").waypoint(function(dir) {
				if (dir === "down") {
					ths.addClass(inEffect).css("opacity", "1");
				};
			}, {
				offset: "80%"
			});
		});
	};
})(jQuery);


$(function() {

	/*carousel*/
	$(".owl-carousel").owlCarousel({
		items: 1,
		nav: true,
		loop: true, /*infinity*/
		dots: false,
		autoplay: true,
		autoplayTimeout: 4000,
		animateOut: 'fadeOut',
	});

	//for animation each .item-wrap add '.on'
	$(".centerblock").waypoint(function() {
		$(".centerblock .item-wrap").each(function(index) {
			var ths = $(this);
			setInterval(function() {
						ths.addClass("on");
				}, 400*index);
			});
	}, {
			offset : "60%"
	});

	// modal
	$('a.myLinkModal').click( function(event){
    event.preventDefault();
    $('#myOverlay').fadeIn(297,	function(){
      $('#myModal') 
      .css('display', 'block')
      .animate({opacity: 1}, 198);
    });
  });

  $('#myModal__close, #myOverlay').click( function(){
    $('#myModal').animate({opacity: 0}, 198, function(){
      $(this).css('display', 'none');
      $('#myOverlay').fadeOut(297);
    });
	});
	
	// open menu on mobile
	$('.menu-btn').click(function(){
		$('.menu').slideToggle();
	})

	// show menu on click
	$('.sub > a').click(function(){
		if ($(this).attr('class') != 'active'){
			$('.sub ul').slideUp();
			$(this).next().slideToggle();
		}
		return false;
	});
	$('.menu-aside > ul > li > a').click(function(){
		$('.menu-aside ul li.active').removeClass('active');
		$('.menu-aside > ul > li > a, .sub a').removeClass('active');
		$(this).addClass('active');
	});
	$('.submenu li a').click(function(){
		$('.submenu li a.active2').removeClass('active2');
		$(this).addClass('active2');
	});

	// pagination add remove class
	$('.pagination li a').click(function(){
		$('.pagination li a').removeClass('active-pag');
		$(this).addClass('active-pag');
	});

	//animation
	$(".pagination").animated("fadeInUp");
	$(".centerblock .container .col-12.col-sm-6:first-child").animated("fadeInLeft");
	$(".centerblock .container .col-12.col-sm-6:last-child").animated("fadeInRight");


});
