<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://14.63.216.145/Pnp_intro/Web/CssJs/jquery.bxslider/jquery.bxslider.js"></script>
<link href="http://14.63.216.145/Pnp_intro/Web/CssJs/jquery.bxslider/jquery.bxslider.css" rel="stylesheet"/>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<link rel="shortcut icon" href="http://14.63.216.145/Pnp_intro/Web/Images/pnpfavicon.ico"/>
<title>Plan&Plan</title>
<script>
	// 배경이미지 왼쪽 오른쪽 버튼 넘어갈때 배경 바뀌는것
	var imgNum = 1;
	function imgChange(val) {
		if (val == '3') //next
		{
			if (imgNum != 1 && imgNum != 5) {
				$('#imageBG' + imgNum).fadeOut(500);
				$('#imageBG' + (imgNum + 1)).fadeIn(500);
			}
			if (imgNum == 5) {
				$('#imageBG5').fadeOut(500);
				$('#imageBG1').fadeIn(500);
				imgNum = 0;
			}
			imgNum++;
		} else if (val == '4') //prev
		{
			if (imgNum != 1 && imgNum != 2) {
				$('#imageBG' + imgNum).fadeOut(500);
				$('#imageBG' + (imgNum - 1)).fadeIn(500);
			}
			if (imgNum == 1) {
				$('#imageBG1').fadeOut(500);
				$('#imageBG5').fadeIn(500);
				imgNum = 6;
			}
			imgNum--;
		}
	}
	// --- 배경이미지 왼쪽 오른쪽 버튼 ---
	
	//bxslider 비엑스 슬라이드쇼
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			slideWidth : 1454,
			// 		auto: true,
			// 		pause: 5000,
			stopAuto : false,
		});
	});
	// ---- bxslider 비엑스 슬라이드쇼 -----
</script>
</head>
<style>
	body, div, dl, dt, dd, ul, ol, menu, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, blockquote, th, td, p{
		margin:0;
		padding:0;	
	}
	.h_line1px{
		position:fixed;
		top:58px;
		width:100%;
		height:1px;
		background-color:#e4e4e4;
		opacity:0.5;
		z-index: 10;
	}
	.logo{
		position:absolute;
		top:6px;
		left:134px;
		z-index: 10;
	}
	.imageBG{
		position:absolute;
		width:100%;
		height:100%;
		background-color: #444444;
		display: none;
	}
	#imageBG1{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage1.jpg")no-repeat 50% 50% / 100% fixed;
		background-color: #444444;
		display: block;
	}
	#imageBG2{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage1.jpg")no-repeat 50% 50% / 100% fixed;
		background-color: #444444;
	}
	#imageBG3{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage3.jpg")no-repeat 50% 50% / 100% fixed;
		background-color: #444444;
	}
	#imageBG4{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage4.jpg")no-repeat 50% 50% / 100% fixed;
		background-color: #444444;
	}
	#imageBG5{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage5.jpg")no-repeat 50% 50% / 100% fixed;
		background-color: #444444;
	}
	.menu{
		position: fixed;
		top:23px;
		right:134px;
		z-index: 10;
	}
	.comInfo{
		position:fixed;
		left:134px;
		bottom:38px;
		color:white;
		font-size:13px;
	}
	.copyright{
		position: fixed;
		right:134px;
		bottom:38px;
		color:white;
		font-size: 13px;
	}
	.sliderBg{
		position: fixed;
		width:1454px;
		top:50%;
		left:50%;
		margin-left:-741px;
		margin-top:-366px;
	}
	.bx-wrapper .bx-viewport{
		background-color: inherit;
	}
	.bx-wrapper .bx-pager{
		position:fixed;
		bottom:70px;
		right:134px;
		top:inherit;
		left:inherit;
		width:inherit;
	}
	.bx-wrapper .bx-pager.bx-default-pager a{
		width:44px;
		height:2px;
		border:0;
		background: white;
	}
	.bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active{
		border: 0;
		background: black;
	}
	.bx-wrapper .bx-controls-direction a{
		width:40px;
		height:95px;
	}
	.bx-wrapper .bx-prev{
		left:-85px;
		background:url(http://14.63.216.145/Pnp_intro/Web/CssJs/jquery.bxslider/images/controls.png) no-repeat 0 0px;
	}
	.bx-wrapper .bx-next{
		right:-85px;
		background:url(http://14.63.216.145/Pnp_intro/Web/CssJs/jquery.bxslider/images/controls.png) no-repeat -40px 0px;
	}
	.bx-wrapper .bx-prev:hover{
		background-position:0px -95px;
	}
	.bx-wrapper .bx-next:hover{
		background-position:-40px -95px;
	}
	.pnplink{
		position:absolute;
		width:138px;
		height:50px;
	}
	#gonglink{
		margin-left:1042px;
		margin-top:-212px;
	}
	#wedshoplink{
		margin-left:983px;
		margin-top:-169px;
	}
	#wedplanlink{
		margin-left:1040px;
		margin-top:-212px;
	}
	#deWednplanlink{
		margin-left:1150px;
		margin-top:-520px;
	}
	#deWedshoplink{
		margin-left:1150px;
		margin-top:-317px;
	}
	#deWedgonglink{
		margin-left:1150px;
		margin-top:-118px;
	}
</style>
<body onload="init()">
<div class="logo">
	<a href="main.pnp"><img src="http://14.63.216.145/Pnp_intro/Web/Images/logo.png"></a>
</div>
<div class="menu">
	<a href="main.pnp"><img src="http://14.63.216.145/Pnp_intro/Web/Images/home.png"></a>
<!-- 	<a href="#" style="margin-left:18px;"><img src="Images/work.png"></a> -->
	<a href="contact.pnp" style="margin-left:18px;"><img src="http://14.63.216.145/Pnp_intro/Web/Images/contact.png"></a>
</div>
<div class="h_line1px"></div>
	<div class="imageBG" id="imageBG1"></div>
	<div class="imageBG" id="imageBG2"></div>
	<div class="imageBG" id="imageBG3"></div>
	<div class="imageBG" id="imageBG4"></div>
	<div class="imageBG" id="imageBG5"></div>
<div class="comInfo">
	(주)플랜앤플랜  대표이사:강태훈  사업자등록번호:261-81-25492  서울시 강남구 논현동 111-21 F2 Tel : 02-511-6807 Fax : 02-511-6808
</div>
<div class="copyright">
	© Plan and Plan Inc. All rights reserved.
</div>
<div class="sliderBg">
	<ul class="bxslider">
		<li><img src="http://14.63.216.145/Pnp_intro/Web/Images/slider1.png"></li>
		<li><img src="http://14.63.216.145/Pnp_intro/Web/Images/slider2.png">
			<a class="pnplink" id="deWednplanlink" href="http://www.weddingnplan.co.kr/" target="_blank"></a>
			<a class="pnplink" id="deWedshoplink" href="http://www.theweddingshop.co.kr/" target="_blank"></a>
			<a class="pnplink" id="deWedgonglink" href="http://www.gonggamwed.co.kr/" target="_blank"></a>
		</li>
		<li><img src="http://14.63.216.145/Pnp_intro/Web/Images/slider3.png"><a class="pnplink" id="wedplanlink" href="http://www.weddingnplan.co.kr/" target="_blank"></a></li>
		<li><img src="http://14.63.216.145/Pnp_intro/Web/Images/slider4.png"><a class="pnplink" id="wedshoplink" href="http://www.theweddingshop.co.kr/" target="_blank"></a></li>
		<li><img src="http://14.63.216.145/Pnp_intro/Web/Images/slider5.png"><a class="pnplink" id="gonglink" href="http://www.gonggamwed.co.kr/" target="_blank"></a></li>
	</ul>
</div>
</body>
</html>