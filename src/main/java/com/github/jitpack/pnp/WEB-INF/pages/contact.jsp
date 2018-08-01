<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<link rel="shortcut icon" href="http://14.63.216.145/Pnp_intro/Web/Images/pnpfavicon.ico"/>
<title>Plan&Plan</title>
<script>

//구글맵 ---------- 시작
function geocode()
{
   var address = "논현동 111-21";
   var geocoder = new google.maps.Geocoder();
   geocoder.geocode({'address':address,'partialmatch':true}, geocodeResult);
}
function geocodeResult(results, status)
{
   if(status == 'OK' && results.length > 0)
   {
      var latlng = new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng());
      var myOptions = {
            zoom:15,
            center : latlng,
            mapTypeId : google.maps.MapTypeId.ROADMAP
      }
      var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
      var marker = new google.maps.Marker({
         position : latlng,
         map : map
      });
   }
   else
   {
      alert("실패 : "+status);
   }
}
function init()
{
	geocode();
}
//구글맵 ---------- 끝
function contact_submit()
{
	if(document.getElementById("contact_email").value == '')
	{
		alert("이메일을 입력해 주세요.");
		document.getElementById("contact_email").focus();
		return;
	}
	if(document.getElementById("contact_title").value == '')
	{
		alert("제목을 입력해 주세요.");
		document.getElementById("contact_title").focus();
		return;
	}
	if(document.getElementById("contact_content").value == '')
	{
		alert("내용을 입력해 주세요.");
		document.getElementById("contact_content").focus();
		return;
	}
	document.getElementById("contact_form").target = "contactframe";
	document.getElementById("contact_form").submit();
}
</script>

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
		position: absolute;
		width:100%;
		height:100%;
		background-color: #444444;
	}
	#imageBG1{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage1.jpg")no-repeat 50% 50% / 100% fixed;
	}
	#imageBG2{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage2.jpg")no-repeat 50% 50% / 100% fixed;
	}
	#imageBG3{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage3.jpg")no-repeat 50% 50% / 100% fixed;
	}
	#imageBG4{
		background: url("http://14.63.216.145/Pnp_intro/Web/Images/bgImage4.jpg")no-repeat 50% 50% / 100% fixed;
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
	.contactText{
		position: absolute;
		margin-left:1055px;
		margin-top:-477px;
		width:312px;
		height:14px;
		padding:9px 14px;
		font-size:12px;
		border:0;
		font-family: arial;
	}
	.sendBtn{
		position: absolute;
		margin-left:1055px;
		margin-top:-75px;
		cursor:pointer;
	}
</style>
</head>
<body onload="init()">
<div class="logo">
	<a href="main.pnp"><img src="http://14.63.216.145/Pnp_intro/Web/Images/logo.png"></a>
</div>
<div class="menu">
	<a href="main.pnp"><img src="http://14.63.216.145/Pnp_intro/Web/Images/home.png"></a>
<!-- 	<a href="#" style="margin-left:18px;"><img src="http://14.63.216.145/Pnp_intro/Web/Images/work.png"></a> -->
	<a href="contact.pnp" style="margin-left:18px;"><img src="http://14.63.216.145/Pnp_intro/Web/Images/contact.png"></a>
</div>
<div class="h_line1px"></div>
	<div class="imageBG" id="imageBG3"></div>
	<div class="imageBG" id="imageBG4"></div>
	<div class="imageBG" id="imageBG2"></div>
	<div class="imageBG" id="imageBG1"></div>
<div class="comInfo">
	(주)플랜앤플랜  대표이사:강태훈  사업자등록번호:261-81-25492  서울시 강남구 논현동 111-21 F2 Tel : 02-511-6807 Fax : 02-511-6808
</div>
<div class="copyright">
	© Plan and Plan Inc. All rights reserved.
</div>
<div class="sliderBg">
		<img src="http://14.63.216.145/Pnp_intro/Web/Images/slider6.png">
		<!-- 구글지도 -->
		<div id="map_canvas" style="position:absolute; width:962px; height:637px; margin-top:-673px; margin-left:33px;"></div>
		<!-- //구글지도// -->
	<div>
		<form id="contact_form" name="contact_form" method="post" action="contact_output.pnp">
			<input class="contactText" type="text" placeholder="E-mail" id="contact_email" name="contact_email">
			<input class="contactText" type="text" placeholder="제목" style="margin-top:-436px;" id="contact_title" name="contact_title">
			<textarea class="contactText" placeholder="내용을 입력해 주세요." style="margin-top:-395px; height:276px;" id="contact_content" name="contact_content"></textarea>
			<img class="sendBtn" src="http://14.63.216.145/Pnp_intro/Web/Images/sendBtn.png" onclick="contact_submit()">
		</form>
	</div>
	<iframe id="contactframe" name="contactframe" style="display:none;"></iframe>
</div>
</body>
</html>