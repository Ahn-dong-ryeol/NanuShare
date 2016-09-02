<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>

<style>
  .ui-bar-f {
    color: white !important;
    background-color: lightgreen !important;
    border:0px !important;
}
  </style>
</head>

<body>
<div data-role="page" id="join1">
<div data-role="header" class="ui-bar-f" data-theme="f">
<a href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1>Nanushare</h1>
<a href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->

<div data-role="panel" id="myMenu" data-display="overlay">
	<p>마이페이지 등등이 들어가는 곳입니다.</p>
	<a href="#myMenu" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a>
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
      <label><input type="checkbox" value="">전체 약관 동의</label>
    <hr>
    
    <table style="width:100%">
	<tr><td><label><input type="checkbox" value="">서비스 이용약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">위치정보 이용약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">개인정보 취급 약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">개인정보 취급 위탁 동의(선택)</label></td>
      <td align="center"> | 내용</td></tr>
      </table>
      
  <table style="width:100%">
  <tr>
  <td width="50%">
  <a href="join2"><button type="button" class="btn btn-primary btn-lg btn-block">동의</button></a></td>
  <td width="50%">
  <button type="button" class="btn btn-default btn-lg btn-block">동의하지 않음</button></td></tr>
  		</table>
</div><!-- content끝 -->
<div data-role="footer" align="center">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- join1 page끝 -->
</body>
</html>