<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">

<link rel="stylesheet"href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>

<style>
  .ui-bar-f {
    color: white;
    background-color: lightgreen;
    border:0px;
}
  </style>
</head>
<body>
<div data-role="page" id="request3">
<div data-role="header"  data-theme="f">
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
<h3>문의하기</h3>
문의분류 | 문의글 제목 
<table style="width:100%">
		<tr>
         <td rowspan="2" align="center"><a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a></td>
         <td>작성자 : 닉네임(아이디)</td>
        </tr>
        <tr>
        <td>작성일시 : 불라불라불라~.~</td>
        </tr>
        </table>
        <hr>
        <label>*처리상태 : 답변완료</label>
        <hr>
        <textarea cols="50" rows="15" name="content">문의내용이 촤르르촤르르샤랄라샤랄라</textarea>
        <a href="#picturePopup" data-rel="popup" data-position-to="window">
    <img src="./resources/images/sample.jpg" style="width:25px;height:25px"></a>
        <a href="#picturePopup" data-rel="popup" data-position-to="window">
    <img src="./resources/images/sample.jpg" style="width:25px;height:25px"></a>
        <a href="#picturePopup" data-rel="popup" data-position-to="window">
    <img src="./resources/images/sample.jpg" style="width:25px;height:25px"></a>
    <a href="#picturePopup" data-rel="popup" data-position-to="window">
    <img src="./resources/images/sample.jpg" style="width:25px;height:25px"></a>
		<hr>
		답변
		<table style="width:100%">
		<tr>
         <td rowspan="2" align="center"><a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a></td>
         <td>관리자 | 작성시간</td>
        </tr>
        <tr>
        <td>답변내용이 솨라라라라</td>
        </tr>
        </table>
        <table width="50%">
  <tr>
  <td width="50%">
  <a href="#report1"><button type="button" class="btn btn-primary btn-lg btn-block">수정</button></a></td>
  <td width="50%">
  <a href="#report1"><button type="button" class="btn btn-default btn-lg btn-block">삭제</button></td></tr>
  		</table>
</div><!-- content끝 -->
<div data-role="popup" id="picturePopup">
      <a href="#report2" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img src="./resources/images/sample.jpg" style="width:400px;height:400px;">
    </div>
<div data-role="footer" align="center">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- request3끝   -->
</body>
</html>