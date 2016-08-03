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
	<a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a>
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
          <input type="submit" data-inline="true" value="회원가입">
        </div><!-- 로그인 끝 -->
      </form>
    </div><!-- 팝업끝 -->
</div><!-- 왼쪽 panel끝 -->

<div data-role="panel" id="info" data-position="right">
	<p>알림과 나누톡이 들어가는 곳입니다. </p>
</div><!-- 오른쪽 panel끝 -->

<div data-role="content">
<h3>회원가입</h3>
<form method="post" action="demoform.asp">
<div class="ui-field-contain">
<div class="ui-grid-b">
	  <div class="ui-block-a">
        <label for="id">아이디 </label>
      </div>
      <div class="ui-block-b">
        <input type="text" id="id" name="id" placeholder="아이디 입력"/>
      </div>
      <div class="ui-block-c">
        <a href="#" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a>
      </div>
</div>

<div class="ui-grid-b">
	  <div class="ui-block-a">
        <label for="nickname">닉네임 </label>
      </div>
      <div class="ui-block-b">
        <input type="text" id="nickname" name="nickname"placeholder="닉네임 입력"/>
      </div>
      <div class="ui-block-c">
        <a href="#" id="nickname" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a>
      </div>
</div>

<label for="id">비밀번호</label>
<input type="text" name="pw"placeholder="비밀번호 입력"/>

<label for="id">비밀번호확인</label>
<input type="text" name="pwcheck"placeholder="비밀번호 입력"/>

<label for="id">성별</label>
<fieldset data-role="controlgroup" data-type="horizontal">
<label for="M">남</label>
<input type="radio" name="theme" id="M">
<label for="F">여</label>
<input type="radio" name="theme" id="F">
</fieldset>

<div class="ui-grid-b">
	  <div class="ui-block-a">
        <label for="phone">연락처 </label>
      </div>
      <div class="ui-block-b">
        <input type="text" name="phone" placeholder="연락처 입력"/>
      </div>
      <div class="ui-block-c">
        <a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">본인인증</a>
      </div>
</div>

<div class="ui-grid-b">
	  <div class="ui-block-a">
        <label for="id">인증번호 </label>
      </div>
      <div class="ui-block-b">
        <input type="text" name="check" placeholder="인증번호 입력"/>
      </div>
      <div class="ui-block-c">
        <a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">확인</a>
      </div>
</div>

<label for="id">카카오톡ID </label>
<input type="text" name="cacaoid"placeholder="카카오톡ID 입력"/>
</div><!-- ui-field-contain끝 -->

<input type="submit" data-inline="true" value="회원가입">
</form>

</div><!-- content끝 -->
<div data-role="footer">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q@A
</div><!-- footer끝 -->
</div><!-- page끝 -->
</body>
</html>