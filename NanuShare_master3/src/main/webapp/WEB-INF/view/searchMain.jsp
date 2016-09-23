<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">
<link rel="stylesheet" href="C:/Users/석유진/Desktop/nanushare/resources/css/sample.css">
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
<form class="ui-filterable">
  <input id="myFilter" data-type="search" placeholder="Search..">
</form>
<div class="ui-grid-a"data-filter="true" data-input="#myFilter">
      <div class="ui-block-a"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img src="/resources/images/sample_icon.jpg" alt="furniture_icon" width="80" height="80"/>
      <p >가구/가전</p></a>
      </div>
      <div class="ui-block-b"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img alt="clothes_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>의류</p></a>
      </div>
      <div class="ui-block-a"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img alt="baby_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>육아</p></a>
      </div>
      <div class="ui-block-b"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img alt="IT_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>IT</p></a>
      </div>
      <div class="ui-block-a"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img alt="gifticon_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>기프티콘</p></a>
      </div>
      <div class="ui-block-b"><a href="<c:url value='/Nanum.do?action=list'/>">
      <img alt="etc_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>기타</p></a>
      </div>
</div><!-- grid끝 -->
</div><!-- content끝 -->
<div data-role="footer" data-position="fixed" class="w3-footer-list">
      <div data-role="navbar">
       <ul>
         <li><a href="#anylink">Home</a></li>
         <li><a href="#anylink">Search</a></li>
         <li><a href="/view/nanum">Nanum</a></li>
         <li><a href="#anylink">Review</a></li>
         <li><a href="#anylink">Mypage</a></li>
       </ul>
        </div>
   </div><!-- footer끝 -->
</div><!-- page끝 -->
</body>
</html>