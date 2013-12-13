<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title><?php echo $this->title; ?></title>
<base href="<?php echo $this->base; ?>"/>
<?php echo $this->head; ?>
<?php echo $this->stylesheets; ?>
<meta name="description" content="<?php echo $this->description; ?>"/>
<meta name="keywords" content="<?php echo $this->keywords; ?>"/>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,800,700&amp;subset=latin,vietnamese">
<link rel="icon" type="image/png" href="<?php echo $this->base; ?>/tl_files/tt-tech/img/ttfavicon.png">
<link rel="stylesheet" type="text/css" href="<?php echo $this->base; ?>/tl_files/tt-tech/style.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo $this->base; ?>/tl_files/tt-tech/css/anythingslider.css"/>
<script src="<?php echo $this->base; ?>/tl_files/tt-tech/jquery-1.9.1.min.js"></script>
<script src="<?php echo $this->base; ?>/tl_files/tt-tech/jquery.easing-1.3.js"></script>
<script src="<?php echo $this->base; ?>/tl_files/tt-tech/jquery.anythingslider.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>
var map;
var myLatlng = new google.maps.LatLng(10.75751,106.648549);
var image = 'tl_files/tt-tech/img/marker.png';
var contentString="<div id='map_tittle'><strong>TT-Technologies IT-Service GmbH</strong></div><br /><div id='map_tel'>Tel: 08 22431061 - 22431062<br />Fax: 08 39603443<br/>Email: info@tt-tech.vn</div>";
function initialize() {
  var mapOptions = {
    zoom: 19,
    center: myLatlng,
	mapTypeId: google.maps.MapTypeId.HYBRID,
    panControl: false,
    zoomControl: false,
    scaleControl: true,
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
 var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
	  icon:image,
      title: "TT-Technologies IT-Service GmbH"
  });
  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(marker.get('map'), marker);
  });


}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
<script>
$(document).ready(function() {
	$('#menu a').click(function(e){
		 e.preventDefault();
		 $('.active').removeClass('active');
		 name = $(this).attr('href');
		 pos = $(name).position().top;
		 $(this).addClass('active');
    	$('html,body').stop().animate({scrollTop:pos},'slow','easeInQuart');
		return false;
		});
	$(window).scroll(function(){
    t = $(window).scrollTop();
    $('#wrapper').find('.page').each(function(){
        p = $(this).position().top;
        if(p <= t){
            id = $(this).attr('id');
            $('.active').removeClass('active');
            $("[href='#"+id+"']").addClass('active');
        }
    });
});
$('#top img').click(function(){
	$('.active').removeClass('active');
	pos = $('#page04').position().top;
	$('#m04').addClass('active');
    $('html,body').stop().animate({scrollTop:pos},'slow','easeInQuart');
	if($('#pref-section').hasClass('hidden')){
		$('#pref-section').removeClass('hidden');
	}else{
		$('#pref-section').addClass('hidden');
	}
	return false;
});
$('#top span').click(function(){
	$('.active').removeClass('active');
	pos = $('#page04').position().top;
	$('#m04').addClass('active');
    $('html,body').stop().animate({scrollTop:pos},'slow','easeInQuart');
	if($('#pref-section').hasClass('hidden')){
		$('#pref-section').removeClass('hidden');
	}else{
		$('#pref-section').addClass('hidden');
	}
	return false;
});
$('#programing a').click(function(){
	$('.show').removeClass('show');
	if(!$('#rmain').hasClass('hidden')){
		$('#rmain').addClass('hidden')
};
	$('#programing ul').addClass('show');
	$('#content-pro').addClass('show');
});
$('#network a').click(function(){
	$('.show').removeClass('show');
		if(!$('#rmain').hasClass('hidden')){
		$('#rmain').addClass('hidden')
};
	$('#network ul').addClass('show');
	$('#content-net').addClass('show');
});
$('#design a').click(function(){
	$('.show').removeClass('show');
		if(!$('#rmain').hasClass('hidden')){
		$('#rmain').addClass('hidden')
};
	$('#content-desi').addClass('show');
});
$('#document a').click(function(){
	$('.show').removeClass('show');
		if(!$('#rmain').hasClass('hidden')){
		$('#rmain').addClass('hidden')
};
	$('#document ul').addClass('show');
	$('#content-doc').addClass('show');
});
$('#business a').click(function(){
	$('.show').removeClass('show');
		if(!$('#rmain').hasClass('hidden')){
		$('#rmain').addClass('hidden')
};
	$('#business ul').addClass('show');
	$('#content-bus').addClass('show');
});
$('.rNav a').click(function(){
	name = $(this).attr('content');
	$('.block div').removeClass('show');
	$('#'+name).addClass('show');
});
$('#m01 a').click(function(){
	if($('#news-section').hasClass('hidden')){
		$('#news-section').removeClass('hidden');
	}
});
$('#m02 a').click(function(){
	if($('#about-section').hasClass('hidden')){
		$('#about-section').removeClass('hidden');
	}
});
$('#m03 a').click(function(){
	if($('#services-section').hasClass('hidden')){
		$('#services-section').removeClass('hidden');
	}
});
$('#m04 a').click(function(){
	if($('#pref-section').hasClass('hidden')){
		$('#pref-section').removeClass('hidden');
	}
});
$('#m05 a').click(function(){
	if($('#products-section').hasClass('hidden')){
		$('#products-section').removeClass('hidden');
	}
});
$('#m06 a').click(function(){
	if($('#contact-section').hasClass('hidden')){
		$('#contact-section').removeClass('hidden');
	}
});
$('#m07 a').click(function(){
	if($('#recrui-section').hasClass('hidden')){
		$('#recrui-section').removeClass('hidden');
	}
});
$('#page01').click(function(){
	if($('#news-section').hasClass('hidden')){
		$('#news-section').removeClass('hidden');
	}else{
		$('#news-section').addClass('hidden');
	}
});
$('#page02').click(function(){
	if($('#about-section').hasClass('hidden')){
		$('#about-section').removeClass('hidden');
	}else{
		$('#about-section').addClass('hidden');
	}
});
$('#page03').click(function(){
	if($('#services-section').hasClass('hidden')){
		$('#services-section').removeClass('hidden');
	}else{
		$('#services-section').addClass('hidden');
	}
});
$('#page04').click(function(){
	if($('#pref-section').hasClass('hidden')){
		$('#pref-section').removeClass('hidden');
	}else{
		$('#pref-section').addClass('hidden');
	}
});
$('#page05').click(function(){
	if($('#products-section').hasClass('hidden')){
		$('#products-section').removeClass('hidden');
	}else{
		$('#products-section').addClass('hidden');
	}
});
$('#page06').click(function(){
	if($('#contact-section').hasClass('hidden')){
		$('#contact-section').removeClass('hidden');
	}else{
		$('#contact-section').addClass('hidden');
	}
});
$('#page07').click(function(){
	if($('#recrui-section').hasClass('hidden')){
		$('#recrui-section').removeClass('hidden');
	}else{
		$('#recrui-section').addClass('hidden');
	}
});
$('#news1 .more').click(function(){
	if($('#news1 .showmore').hasClass('hidden')){
		$('#news1 .showmore').removeClass('hidden');
		$('#news1 .more').addClass('hidden');
	}
});
$('#news1 .close').click(function(){
	if($('#news1 .more').hasClass('hidden')){
		$('#news1 .more').removeClass('hidden');
		$('#news1 .showmore').addClass('hidden');
	}
});
$('#news2 .more').click(function(){
	if($('#news2 .showmore').hasClass('hidden')){
		$('#news2 .showmore').removeClass('hidden');
		$('#news2 .more').addClass('hidden');
	}
});
$('#news2 .close').click(function(){
	if($('#news2 .more').hasClass('hidden')){
		$('#news2 .more').removeClass('hidden');
		$('#news2 .showmore').addClass('hidden');
	}
});
$('#about1 .more').click(function(){
	if($('#about1 .showmore').hasClass('hidden')){
		$('#about1 .showmore').removeClass('hidden');
		$('#about1 .more').addClass('hidden');
	}
});
$('#about1 .close').click(function(){
	if($('#about1 .more').hasClass('hidden')){
		$('#about1 .more').removeClass('hidden');
		$('#about1 .showmore').addClass('hidden');
	}
});
$('#about2 .more').click(function(){
	if($('#about2 .showmore').hasClass('hidden')){
		$('#about2 .showmore').removeClass('hidden');
		$('#about2 .more').addClass('hidden');
	}
});
$('#about2 .close').click(function(){
	if($('#about2 .more').hasClass('hidden')){
		$('#about2 .more').removeClass('hidden');
		$('#about2 .showmore').addClass('hidden');
	}
});
$('#pref-section .more').click(function(){
	$('.panel').css('height','900px');
	$('#slider').addClass('newh');
	if($('#pref-section .showmore').hasClass('hidden')){
		$('#pref-section .showmore').removeClass('hidden');
		$('#pref-section .more').addClass('hidden');
	}
});
$('#pref-section .close').click(function(){
	if($('#pref-section .more').hasClass('hidden')){
		$('#pref-section .more').removeClass('hidden');
		$('#pref-section .showmore').addClass('hidden');
	}
});
});
</script>
<script>
$().ready(function() {
$('#slider').anythingSlider({ 
  // Appearance 
  theme               : "default", // Theme name 
  mode                : "horiz",   // Set mode to "horizontal", "vertical" or "fade" (only first letter needed); replaces vertical option 
  expand              : false,     // If true, the entire slider will expand to fit the parent element 
  resizeContents      : true,      // If true, solitary images/objects in the panel will expand to fit the viewport 
  showMultiple        : false,     // Set this value to a number and it will show that many slides at once 
  easing              : "swing",   // Anything other than "linear" or "swing" requires the easing plugin or jQuery UI 
 
  buildArrows         : true,      // If true, builds the forwards and backwards buttons 
  buildNavigation     : false,      // If true, builds a list of anchor links to link to each panel 
  buildStartStop      : false,      // If true, builds the start/stop button 
 
  appendForwardTo     : null,      // Append forward arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null 
  appendBackTo        : null,      // Append back arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null 
  appendControlsTo    : null,      // Append controls (navigation + start-stop) to a HTML element (jQuery Object, selector or HTMLNode), if not null 
  appendNavigationTo  : null,      // Append navigation buttons to a HTML element (jQuery Object, selector or HTMLNode), if not null 
  appendStartStopTo   : null,      // Append start-stop button to a HTML element (jQuery Object, selector or HTMLNode), if not null 
 
  toggleArrows        : false,     // If true, side navigation arrows will slide out on hovering & hide @ other times 
  toggleControls      : false,     // if true, slide in controls (navigation + play/stop button) on hover and slide change, hide @ other times 
 
  startText           : "Start",   // Start button text 
  stopText            : "Stop",    // Stop button text 
  forwardText         : "&raquo;", // Link text used to move the slider forward (hidden by CSS, replaced with arrow image) 
  backText            : "&laquo;", // Link text used to move the slider back (hidden by CSS, replace with arrow image) 
  tooltipClass        : "tooltip", // Class added to navigation & start/stop button (text copied to title if it is hidden by a negative text indent) 
 
  // Function 
  enableArrows        : true,      // if false, arrows will be visible, but not clickable. 
  enableNavigation    : false,      // if false, navigation links will still be visible, but not clickable. 
  enableStartStop     : false,      // if false, the play/stop button will still be visible, but not clickable. Previously "enablePlay" 
  enableKeyboard      : false,      // if false, keyboard arrow keys will not work for this slider. 
 
  // Navigation 
  startPanel          : 1,         // This sets the initial panel 
  changeBy            : 1,         // Amount to go forward or back when changing panels. 
  hashTags            : false,      // Should links change the hashtag in the URL? 
  infiniteSlides      : false,      // if false, the slider will not wrap & not clone any panels 
  navigationFormatter : null,      // Details at the top of the file on this use (advanced use) 
  navigationSize      : false,     // Set this to the maximum number of visible navigation tabs; false to disable 
 
  // Slideshow options 
  autoPlay            : false,     // If true, the slideshow will start running; replaces "startStopped" option 
  autoPlayLocked      : false,     // If true, user changing slides will not stop the slideshow 
  autoPlayDelayed     : false,     // If true, starting a slideshow will delay advancing slides; if false, the slider will immediately advance to the next slide when slideshow starts 
  pauseOnHover        : true,      // If true & the slideshow is active, the slideshow will pause on hover 
  stopAtEnd           : false,     // If true & the slideshow is active, the slideshow will stop on the last page. This also stops the rewind effect when infiniteSlides is false. 
  playRtl             : false,     // If true, the slideshow will move right-to-left 
 
  // Times 
  delay               : 5000,      // How long between slideshow transitions in AutoPlay mode (in milliseconds) 
  resumeDelay         : 15000,     // Resume slideshow after user interaction, only if autoplayLocked is true (in milliseconds). 
  animationTime       : 600,       // How long the slideshow transition takes (in milliseconds) 
  delayBeforeAnimate  : 0,         // How long to pause slide animation before going to the desired slide (used if you want your "out" FX to show). 
 
 
  // Interactivity 
  clickForwardArrow   : "click",         // Event used to activate forward arrow functionality (e.g. add jQuery mobile's "swiperight") 
  clickBackArrow      : "click",         // Event used to activate back arrow functionality (e.g. add jQuery mobile's "swipeleft") 
  clickControls       : "click focusin", // Events used to activate navigation control functionality 
  clickSlideshow      : "click",         // Event used to activate slideshow play/stop button 
  allowRapidChange    : false,           // If true, allow rapid changing of the active pane, instead of ignoring activity during animation 

});
    
});
</script>
</head>
<body>
<div id="wrapper">
<div id="container">
<header id="header">
<div id="nav">
<div id="menu">
					<ul>
					<li id="m01">
						<a href="#page01" >TIN TỨC</a>
					</li>
					<li id="m02">
						<a href="#page02">GIỚI THIỆU</a>
					</li>
					<li id="m03">
						<a href="#page03">DỊCH VỤ</a>
					</li>
					<li id="m04">
						<a href="#page04">THAM KHẢO</a>
					</li>
					<li id="m05">
						<a href="#page05">SẢN PHẨM</a>
					</li>
					<li id="m06">
						<a href="#page06">LIÊN HỆ</a>
					</li>
                    <li id="m07">
						<a href="#page07">TUYỂN DỤNG</a>
					</li>
				</ul>
</div><!-- end menu -->
</div><!--end nav-->
<img src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif" id="logo" width="313" height="149" alt="thientan" /> 
</header>
<div id="maincontent">
<div id="top">
<div id="top01">
<img height="122" width="143" alt="DICH VU PHAT TRIEN WEB" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top01.png"/><br/>
<span>
      DỊCH VỤ PHÁT TRIỂN WEB
</span>
</div>
<div id="top02">
<img height="122" width="143" alt="WEB THƯƠNG MẠI" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top02.png"/><br/>
<span>
      WEB THƯƠNG MẠI
    </span>
</div>
<div id="top03">
<img height="122" width="143" alt="CÁC ỨNG DỤNG MOBILE" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top03.png"/><br/>
<span>
      CÁC ỨNG DỤNG MOBILE
    </span>
</div>
<div id="top04">
<img height="122" width="143" alt="WEB QUẢN LÝ" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top04.png"/><br/>
<span>
      WEB QUẢN LÝ
    </span>
</div>
<div id="top05">
<img height="122" width="143" alt="IT - GIẢI PHÁP VÀ TỐI ƯU" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top05.png"/><br/>
<span>
      IT - GIẢI PHÁP VÀ TỐI ƯU
    </span>
</div>
<div id="top06">
<img height="122" width="143" alt="PHÁT TRIỂN VÀ ỨNG DỤNG PHẦN MỀM" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/top06.png"/><br/>
<span>
      PHÁT TRIỂN VÀ ỨNG DỤNG PHẦN MỀM
    </span>
</div>
</div><!--end top-->
<h1 id="page01" class="page">
<img id="aup" src="assets/img/pixel.gif"></img>
<span><marquee style="Filter:Alpha(Opacity=100, FinishOpacity=5, Style=1, StartX=0, StartY=45, FinishX=0, FinishY=0);font-weight:bold;overflow:hidden;height:20px;" onmouseout="this.start()" onmouseover="this.stop()" scrolldelay="3" scrollamount="1" direction="down">
       NEWS   -   Responsive Web Design – một cuộc cách tân mới trong ngành thiết kế web 
    </marquee></span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
   <div id="news-section" class="hidden">
      <?php echo  $this->sections['News'];?>
      <div class="clear"></div>
   </div>
<h1 id="page02" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Giới thiệu
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="about-section">
      <?php echo  $this->sections['About'];?>
      <div class="clear"></div>
   </div>
<h1 id="page03" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Dịch vụ
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="services-section">
      <?php echo  $this->sections['Services'];?>
      <div class="clear"></div>
   </div>
<h1 id="page04" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Tham khảo
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="pref-section">
<ul id="slider">
<?php echo  $this->sections['Preference'];?>
</ul>
<div class="clear"></div>
</div>
<h1 id="page05" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Sản phẩm
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="products-section">
      <?php echo  $this->sections['Products'];?>
      <div class="clear"></div>
</div>
<h1 id="page06" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Liên hệ
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="contact-section">
      <?php echo  $this->sections['Contact'];?>
      <div class="clear"></div>
</div>
<h1 id="page07" class="page">
<img id="aup" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
<span>
Tuyển dụng
</span>
    <img class="logo-headline" src="<?php echo $this->base; ?>/tl_files/tt-tech/img/pixel.gif"></img>
</h1>
<div id="recrui-section">
<?php echo  $this->sections['Recruiment'];?>
<div class="clear"></div>
</div>
</div><!--end maincontent-->
</div><!--end container-->
</div><!--end wraper-->
</body>
</html>
