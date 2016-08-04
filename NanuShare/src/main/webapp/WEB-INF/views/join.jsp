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

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
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
<table width="100%">
<tr>
         <td rowspan="2"><a href="#" class="ui-btn ui-corner-all ui-icon-user ui-btn-icon-notext"></a></th>
         <td align="center">아이디</td>
         <td colspan="2"><input type="text" id="id" name="id" placeholder="아이디 입력"/></td>
         <td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a></td>
        </tr>
        <tr>
        <td align="center">닉네임</td>
        <td colspan="2"><input type="text" id="nickname" name="nickname"placeholder="닉네임 입력"/></td>
		<td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-btn-b ui-corner-all">중복확인</a></td>
        </tr>
        <tr>
        <td colspan="2" align="center">현재비밀번호</td>
        <td colspan="3"><input type="text" name="pw"placeholder="비밀번호 입력"/></td>
        </tr>
        <tr>
        <td colspan="2" align="center">비밀번호 확인</td>
        <td colspan="3"><input type="text" name="pwcheck"placeholder="비밀번호 입력"/></td>
        </tr>
        <tr>
        <td colspan="2" align="center">성별</td>
        <td colspan="3"><fieldset data-role="controlgroup" data-type="horizontal">
		<label for="M">남</label>
		<input type="radio" name="theme" id="M">
		<label for="F">여</label>
		<input type="radio" name="theme" id="F">
		</fieldset></td>
        </tr>
        <tr>
        <td colspan="2" align="center" >생년월일</td>
        <td><select id="sel1">
        <option>출생연도</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select></td>
      <td><select id="sel2">
        <option>월</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select></td>
      <td><select id="sel3">
        <option>일</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select></td>
        </tr>
         <tr>
        <td colspan="2" align="center">연락처</td>
        <td colspan="2"><input type="text" name="pw"placeholder="연락처 입력"/></td>
        <td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">본인인증</a></td>
        </tr>
        <td colspan="2" align="center">인증번호</td>
        <td colspan="2"><input type="text" name="pw"placeholder="인증번호 입력"/></td>
        <td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">확인</a></td>
        </tr>
        <tr>
        <td colspan="2" align="center">카카오톡ID</td>
        <td colspan="3"><input type="text" name="pwcheck"placeholder="카카오톡ID 입력"/></td>
        </tr>
</table>
<br/>
<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">주소 1</a></li>
    <li><a data-toggle="tab" href="#menu1">주소 2</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <table width="100%">
      <tr>
      <td align="center">우편번호</td>
      <td><input type="text" name="pw"placeholder=""/></td>
      <td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">검색</a></td>
      </tr>
      <tr>
      <td align="center">주소</td>
      <td colspan="2"><input type="text" name="pw"placeholder=""/></td>
      </tr>
       <tr>
      <td align="center">상세주소</td>
      <td colspan="2"><input type="text" name="pw"placeholder=""/></td>
      </tr>
      </table>
      </div>
    <div id="menu1" class="tab-pane fade">
      <table width="100%">
      <tr>
      <td align="center">우편번호</td>
      <td><input type="text" name="pw"placeholder=""/></td>
      <td align="center"><a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all">검색</a></td>
      </tr>
      <tr>
      <td align="center">주소</td>
      <td colspan="2"><input type="text" name="pw"placeholder=""/></td>
      </tr>
       <tr>
      <td align="center">상세주소</td>
      <td colspan="2"><input type="text" name="pw"placeholder=""/></td>
      </tr>
      </table>
    </div>
  </div>
<input type="submit" value="회원가입" data-role="button" data-iconpos="bottom">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
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
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</div><!-- content끝 -->
<div data-role="footer" align="center">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- page끝 -->
</body>
</html>

