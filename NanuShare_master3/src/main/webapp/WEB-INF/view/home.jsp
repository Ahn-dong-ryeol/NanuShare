<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">
<link rel="stylesheet" href="./resources/css/sample.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
</head>
<body>
<div data-role="header"  data-theme="f">
<a href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1>Nanushare</h1>
<a href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="content">
<!-- Slideshow -->
  <div class="w3-display-container mySlides">
    <img src="./resources/images/sample.jpg" style="width:100%">
  </div>
  <div class="w3-display-container mySlides">
    <img src="./resources/images/sample2.JPG" style="width:100%">
  </div>
  <div class="w3-display-container mySlides">
    <img src="./resources/images/sample.jpg" style="width:100%">
  </div>
  <!-- Slideshow next/previous buttons -->
  <div class="w3-container w3-dark-grey w3-padding-8 w3-xlarge">
    <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div>
    <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>
    
    <div class="w3-center">
      <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
      <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
      <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
    </div>
  </div>

<div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="./resources/images/profile.jpg" alt="profile" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">1 min</span>
        <h4>John Do</h4>
        <span class="w3-right w3-badge w3-blue">3명</span><span class="w3-right w3-badge w3-teal">사연</span><span class="w3-right w3-badge w3-lime">택배</span>
        <br>
        <hr class="w3-clear">
        <img src="./resources/images/sample.jpg" style="width:100%" class="w3-margin-bottom">
        
        <h4>제목을 좌라라라라</h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      
        <hr class="w3-clear">
        <div class="ui-grid-b">
      <div class="ui-block-a w3-center" style="border-right:1px solid grey;">
        <a href="#"><i class="fa fa-heart" style="font-size:38px;color:red;"></i></a><br>
        <span>횟수</span>
      </div>
      <div class="ui-block-b w3-center" style="border-right:1px solid grey;">
        <a href="#"><i class="fa fa-pencil" style="font-size:38px;color:grey;"></i></a><br>
        <span>횟수</span>
      </div>
      <div class="ui-block-c w3-center">
        <a href="#"><i class="fa fa-comment" style="font-size:38px;color:grey;"></i></a><br>
        <span>횟수</span>
      </div>
    </div>
      </div>
      
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="img_avatar5.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">16 min</span>
        <h4>Jane Doe</h4><br>
        <hr class="w3-clear">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div> 
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="img_avatar6.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">32 min</span>
        <h4>Angie Jane</h4><br>
        <hr class="w3-clear">
        <p>Have you seen this?</p>
        <img src="img_nature.jpg" style="width:100%" class="w3-margin-bottom">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>
</div><!-- content끝 -->
<div data-role="footer" data-position="fixed" class="w3-footer-list">
      <div data-role="navbar">
       <ul>
         <li><a data-ajax=false href="#anylink">Home</a></li>
         <li><a data-ajax=false href="#anylink">Search</a></li>
         <li><a data-ajax=false href="/view/nanum">Nanum</a></li>
         <li><a data-ajax=false href="#anylink">Review</a></li>
         <li><a data-ajax=false href="#anylink">Mypage</a></li>
       </ul>
        </div>
   </div><!-- footer끝 -->
</div><!-- page끝 -->
<script>
// Slideshow script
var slideIndex = 1;
showDivs(slideIndex);
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function currentDiv(n) {
  showDivs(slideIndex = n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-white";
}
</script>
</body>
</html>