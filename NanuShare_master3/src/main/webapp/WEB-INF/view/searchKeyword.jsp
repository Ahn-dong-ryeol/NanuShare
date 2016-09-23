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
<div class="ui-grid-b"data-filter="true" data-input="#myFilter">
      <div class="ui-block-a"><a href="<c:url value='/Nanum.do?action=list1'/>">
      <img src="/resources/images/sample_icon.jpg" alt="furniture_icon" width="80" height="80"/>
      <p >스마트폰</p></a>
      </div>
      <div class="ui-block-b"><a href="<c:url value='/Nanum.do?action=list2'/>">
      <img alt="clothes_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>PC</p></a>
      </div>
      <div class="ui-block-c"><a href="<c:url value='/Nanum.do?action=list3'/>">
      <img alt="baby_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>주변기기</p></a>
      </div>
      <div class="ui-block-a"><a href="<c:url value='/Nanum.do?action=list4'/>">
      <img alt="IT_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>카메라</p></a>
      </div>
      <div class="ui-block-b"><a href="<c:url value='/Nanum.do?action=list5'/>">
      <img alt="gifticon_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>음향기기</p></a>
      </div>
      <div class="ui-block-c"><a href="<c:url value='/Nanum.do?action=list6'/>">
      <img alt="etc_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>기타</p></a>
      </div>
</div><!-- grid끝 -->

<c:forEach var="nanum" items="${lists}">
<div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="./resources/images/profile.jpg" alt="profile" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">1 min</span>
        <h4>${nanum.writer}</h4>
        <span class="w3-right w3-badge w3-blue">${nanum.choice_num}명</span><span class="w3-right w3-badge w3-teal">${nanum.method}</span><span class="w3-right w3-badge w3-lime">${nanum.delivery}</span>
        <br>
        <hr class="w3-clear">
        <img src="./resources/images/sample.jpg" style="width:100%" class="w3-margin-bottom">
        
        <h4>${nanum.title}</h4>
        <p>${nanum.content}</p>
      
        <hr class="w3-clear">
        <div class="ui-grid-b">
      <div class="ui-block-a w3-center" style="border-right:1px solid grey;">
        <a href="#"><i class="fa fa-heart" style="font-size:38px;color:red;"></i></a><br>
        <span>${nanum.like_cnt}</span>
      </div>
      <div class="ui-block-b w3-center" style="border-right:1px solid grey;">
        <a href="#"><i class="fa fa-pencil" style="font-size:38px;color:grey;"></i></a><br>
        <span>신청자 수</span>
      </div>
      <div class="ui-block-c w3-center">
        <a href="#"><i class="fa fa-comment" style="font-size:38px;color:grey;"></i></a><br>
        <span>댓글 수</span>
      </div>
    </div>
      </div>
      </c:forEach>

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