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

<div data-role="panel" id="myMenu">
	<p>마이페이지 등등이 들어가는 곳입니다.</p>
	<a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a>
	<a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all ui-icon-check ui-btn-icon-left">로그인</a>

    <div data-role="popup" id="myPopup" class="ui-content" style="min-width:250px;">
      <form method="post" action="demoform.asp">
        <div>
          <h3>Login information</h3>
          <label for="usrnm" class="ui-hidden-accessible">Username:</label>
          <input type="text" name="user" id="usrnm" placeholder="Username">
          <label for="pswd" class="ui-hidden-accessible">Password:</label>
          <input type="password" name="passw" id="pswd" placeholder="Password">
          <label for="log">Keep me logged in</label>
          <input type="checkbox" name="login" id="log" value="1" data-mini="true">
          <input type="submit" data-inline="true" value="Log in">
        </div>
      </form>
    </div>
	
</div>

<div data-role="panel" id="info" data-position="right">
	<p>알림과 나누톡이 들어가는 곳입니다. </p>
</div>

<div data-role="content">
회원가입
<form method="post" action="demoform.asp">
      <div class="ui-field-contain">

<label for="id">아이디 </label>
<input type="text" name="id" placeholder="아이디를 입력하세요."/>
<a href="#" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a>

<label for="id">닉네임 </label>
<input type="text" name="nickname"placeholder="닉네임을 입력하세요."/>
<a href="#" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a>

<label for="id">비밀번호</label>
<input type="text" name="pw"placeholder="비밀번호를 입력하세요."/>

<label for="id">비밀번호확인</label>
<input type="text" name="pwcheck"placeholder="비밀번호를 입력하세요."/>

<label for="id">연락처 </label>
<input type="text" name="phone"placeholder="연락처를 입력하세요."/>
<a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">본인인증</a>

<label for="id">인증번호 </label>
<input type="text" name="check" placeholder="인증번호를 입력하세요."/>
<a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">확인</a>

<label for="id">카카오톡ID </label>
<input type="text" name="cacaoid"placeholder="카카오톡ID를 입력하세요."/>
</div>
      <input type="submit" data-inline="true" value="회원가입">
    </form>
  </div>

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