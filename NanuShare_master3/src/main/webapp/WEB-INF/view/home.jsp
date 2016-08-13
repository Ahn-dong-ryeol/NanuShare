<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>Home</title>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">

<link rel="stylesheet"href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  #nanum-list > img {
		width: 70%;
		margin : 10px;
  }
  </style>

</head>
<body>
<div data-role="page">
<div data-role="header">
<a href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1>Nanushare</h1>
<a href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->

<div data-role="panel" id="myMenu" data-display="overlay">
	<a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all ui-icon-check ui-btn-icon-left">로그인</a>

    <div data-role="popup" id="myPopup" class="ui-content" style="min-width:250px;">
      <form method="post" action="demoform.asp">
      	<div>
          <h3>로그인</h3>
          <input type="text" name="user" id="usrnm" placeholder="아이디">
          <input type="password" name="passw" id="pswd" placeholder="비밀번호">
          <label for="log">자동 로그인</label>
          <input type="checkbox" name="login" id="log" value="1" data-mini="true">
          <a href="#">아이디 찾기</a>
          <a href="#">비밀번호 찾기</a><br>
          <input type="submit" data-inline="true" value="로그인">
          <a href='member/join'><input type="submit" data-inline="true" value="회원가입"></a>
        </div><!-- 로그인 끝 -->
      </form>
    </div><!-- 팝업끝 -->
	<hr>
	<p><a herf="#">마이 페이지</a></p>
	<hr>
	<table data-role="table" class="ui-responsive" id="get-list">
	<thead>
		<tr>
			<td>받은 내역</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>샘플 데이터 1</td>
		</tr>
		<tr>
			<td>샘플 데이터 2</td>
		</tr>
		<tr>
			<td>샘플 데이터 3</td>
		</tr>
	</tbody>
	</table>
	<table data-role="table" class="ui-responsive" id="share-list">
	<thead>
		<tr>
			<td>나눔 내역</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>샘플 데이터 1</td>
		</tr>
		<tr>
			<td>샘플 데이터 2</td>
		</tr>
		<tr>
			<td>샘플 데이터 3</td>
		</tr>
	</tbody>
	</table>
	<hr>
	<div class="ui-grid-solo">
      <div class="ui-block-a">
        <a href="#">회원정보 수정</a><hr>
        <a href="#" >공지사항</a><hr>
        <a href="#" >운영정책</a><hr>
        <a href="#" >자주묻는질문</a><hr>
        <a href="#" >1:1질문</a><hr>
        <a href="#" >신고하기</a>
      </div>
    </div><!-- grid 끝 -->
</div>

<div data-role="panel" id="info" data-position="right"  data-display="overlay">
	<p>알림과 나누톡이 들어가는 곳입니다. </p>
</div>

<div data-role="content">
<input type="search" name="search" id="search"> <!-- 검색 -->
<div class="container">
<div class="ui-grid-b">
      <div class="ui-block-a"> 
        <a href="nanum" class="ui-btn ui-corner-all ui-shadow">나눔하기</a><br>
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
</div><!-- grid 끝 -->
<hr>
<div id="ad-banner" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#ad-banner" data-slide-to="0" class="active"></li>
	      <li data-target="#ad-banner" data-slide-to="1"></li>
	      <li data-target="#ad-banner" data-slide-to="2"></li>
	      <li data-target="#ad-banner" data-slide-to="3"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img src="./resources/images/sample.jpg" alt="Chania" width="460" height="345">
	      </div>
	
	      <div class="item">
	        <img src="./resources/images/sample.jpg" alt="Chania" width="460" height="345">
	      </div>
	    
	      <div class="item">
	        <img src="./resources/images/sample.jpg" alt="Flower" width="460" height="345">
	      </div>
	
	      <div class="item">
	        <img src="./resources/images/sample.jpg" alt="Flower" width="460" height="345">
	      </div>
	    </div>
	
	    <!-- Left and right controls -->
	    <!--<a class="left carousel-control" href="#ad-banner" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#ad-banner" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>   -->
</div><!-- banner 끝 -->
<hr>
<div class="ui-grid-b" id="nanum-list">
	<p>최근 나눔 목록</p>
	 <div class="ui-block-a"> 
        <img src="./resources/images/sample.jpg" alt="" width="150" height="150">
        <p>게시글 받아오자</p>
      </div>
      <div class="ui-block-b">
	     <img src="./resources/images/sample.jpg" alt="" width="150" height="150">
	     <p>게시글 받아오자</p>
      </div>
      <div class="ui-block-c">
         <img src="./resources/images/sample.jpg" alt="" width="150" height="150">
         <p>게시글 받아오자</p>
      </div>

</div><!-- grid 끝 -->
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