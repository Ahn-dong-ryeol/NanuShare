<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
   <title>Home</title>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">

<link rel="stylesheet"href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>

</head>
<body>
<div data-role="page">
<div data-role="header">
<a href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1>Nanushare</h1>
<a href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->

<div data-role="panel" id="myMenu" data-display="overlay">
	<p>마이페이지 등등이 들어가는 곳입니다.</p>
	<a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a>관리자님
</div>

<div data-role="panel" id="info" data-position="right"  data-display="overlay">
	<p>알림과 나누톡이 들어가는 곳입니다. </p>
</div>

<div data-role="content">
<input type="search" name="search" id="search"> <!-- 검색 -->
<div class="container">
<div class="ui-grid-b">
      <div class="ui-block-a"> 
        <a href="#" class="ui-btn ui-corner-all ui-shadow">나눔하기</a><br>
      </div>
      <div class="ui-block-b">
	       <form method="post" action="demoform.asp">
		  <fieldset class="ui-field-contain">
		    <select name="prod-catagory" id="catagory">
		      <option value="0">카테고리</option>
		      <option value="1">의류</option>
		      <option value="2">가구</option>
		      <option value="3">도서</option>
		    </select>
		  </fieldset>
		</form>
      </div>
      <div class="ui-block-c">
        <a href="join.jsp" class="ui-btn ui-corner-all ui-shadow">후기게시판</a><br>        
      </div>
      <div class="ui-block-a" id="ad-banner">
      	<img alt="" src="../images/sample_banner.JPG">
      </div>
      <div class="ui-block-a">
      <h2>최근 나눔 목록</h2>
      </div>
      <div class="ui-block-a"></div>
      <div class="ui-block-b"></div>
      <div class="ui-block-c"></div>
</div><!-- 버튼끝 -->
</div><!-- container끝 -->
</div><!-- content끝 -->
<div data-role="footer">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- page끝 -->
</body>
</html>