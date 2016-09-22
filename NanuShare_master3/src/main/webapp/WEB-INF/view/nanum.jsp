<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="utf-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
   <title>Home</title>
<meta name="viewport" content="user-scalable=no,width=divice-width"/>
<link href="mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width:799px)">
<meta name="viewport" content="width=device-width,initial-sacle=1">

<link rel="stylesheet" href="./resources/css/sample.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>

<style type="text/css">
.ui-bar-f {
    color: white;
    background-color: lightgreen;
    border:0px;
}
.ui-content {
	background-color : #fff;
}
.ui-content > .ui-grid-a > img {
		margin : auto;
	}
	.ui-content {
		text-align : center;
	}
	.ui-content > .ui-grid-a {
		padding-top : 50px;
	}
	.ui-content > input {
		padding-top : 50px;
	}
	table {
		border-collapse : collapse;
	}

</style>

<script>
function onSuccess($imageData){
	$('#camera-image').
		css({'background-image':'url('+$imageData + ')',
			'background-size':'100%', 'background-repeat':'no-repeat'});
}
function onFail($message){
	navigator.notification.alert('Fail...'+$message);
}
function getPictureFromCamera(){
	navigator.camera.getPicture(onSuccess,onFail,
			{quality:50,
			 destinationType:navigator.camera.DestinationType.FILE_URI,
			 sourceType:navigator.camera.PictureSourceType.CAMERA} );
}
function getPictureFromAlbum(){
	navigator.camera.getPicture(onSuccess, onFail,
			{quality:50,
			 destinationType:navigator.camera.DestinationType.FILE_URI,
			 sourceType:navigator.camera.PictureSourceType.PHOTOLIBRARY} );
}
function addForm() {
	var form = $("#teleForm");
	$("#demo").html(form.html());
}
</script>

</head>
<body>

<div data-role="page" id="nanum1" >
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> 취소 </a>
상품 카테고리 선택
<a data-ajax=false href="#nanum2" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<div class="ui-grid-a">
      <div class="ui-block-a">
      <img src="/resources/images/sample_icon.jpg" alt="furniture_icon" width="80" height="80"/>
      <p>가구/가전</p>
      </div>
      <div class="ui-block-b">
      <img alt="clothes_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>의류</p>
      </div>
      <div class="ui-block-a">
      <img alt="baby_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>육아</p>
      </div>
      <div class="ui-block-b">
      <img alt="IT_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>IT</p>
      </div>
      <div class="ui-block-a">
      <img alt="gifticon_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>기프티콘</p>
      </div>
      <div class="ui-block-b">
      <img alt="etc_icon" src="/resources/images/sample_icon.jpg" width="80" height="80"/>
      <p>기타</p>
      </div>
</div><!-- grid끝 -->
</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum2">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
상세 카테고리 선택
<a data-ajax=false href="#nanum3" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<input type="search" name="search" id="search" placeholder="상품의 종류를 입력하세요."> <!-- 검색 -->
	<table>
		<tbody>
			<tr>
				<td>책상</td>
			</tr>
			<tr>
				<td>의자</td>
			</tr>
			<tr>
				<td>침대</td>
			</tr>
		</tbody>
	</table>
</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum3">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
사진 등록
<a data-ajax=false href="#nanum4" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<div id="camera-image" class="ui-body ui-body-b" style="background-size:100%;min-height:330px;">
   </div>
  <fieldset class="ui-grid-a">
 <div class="ui-block-a">
      <button type="button" data-icon="plus" onClick=" getPictureFromCamera();">
      	카메라
      </button>
 </div>
 <div class="ui-block-b">
      <button type="button" data-icon="plus" onClick="getPictureFromAlbum();">
      	갤러리
      </button>
 </div>
  </fieldset>

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum4">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
나눔방식 선택
<a href="#blockPopup1" data-rel="popup" class="ui-btn ui-btn-inline ui-mini" data-position-to="window"> >> </a>
<div class="ui-grid-solo">
      <div class="ui-block-a" >
      <a href="#nanum5-1">
      	<div class="ui-grid-a">
      		<div class="ui-block-a">
      		<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      		</div>
      		<div class="ui-block-b">
      		<p style="font-weight : bold">선착순</p>
      		<p>신청이 빠른 순서대로 바드미를 정하는 나눔 방식</p>      		
      		</div>      		
      	</div>
      </a>
      <hr>
      </div>
      <div class="ui-block-a">
       <a data-ajax=false href="#nanum5-2">
      	<div class="ui-grid-a">
      		<div class="ui-block-a">
      		<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      		</div>
      		<div class="ui-block-b">
      		<p style="font-weight : bold">랜덤 선정</p>
      		<p>컴퓨터가 마감시간 이후 바드미를 자동으로 정하는 나눔 방식</p>      		
      		</div>
      	</div>
      	</a>
      	<hr>
      </div>
      <div class="ui-block-a">
       <a data-ajax=false href="#nanum5-3">
      	<div class="ui-grid-a">
      		<div class="ui-block-a">
      		<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      		</div>
      		<div class="ui-block-b">
      		<p style="font-weight : bold">텔레파시</p>
      		<p>일정한 퀴즈로 나와 통하는 바드미를 정하는 나눔 방식</p>      		
      		</div>
      	</div>
      	</a>
      	<hr>
      </div>
      <div class="ui-block-a">
       <a data-ajax=false href="#nanum5-4">
      	<div class="ui-grid-a">
      		<div class="ui-block-a">
      		<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      		</div>
      		<div class="ui-block-b">
      		<p style="font-weight : bold">사연</p>
      		<p>꼭 필요한 이유나 원하는 질문에 대답하는 나눔 방식</p>      		
      		</div>
      	</div>
      	</a>
      	<hr>
      </div>
</div><!-- grid끝 -->
<div data-role="popup" id="blockPopup1" class="ui-content">
      <p>나눔방식을 선택해야합니다.</p>
      
</div><!-- popup끝 -->
</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum5-1">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
선착순 방식
<a data-ajax=false href="#nanum6" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<p>선정인원</p>
<input name="number" id="number-pattern" type="number" min="1" max="99" value="">
<hr>
<p>마감 시간</p>
<input name="deadline_time" id="deadline_time" type="time" value="">

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum5-2">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
랜덤 방식
<a data-ajax=false href="#nanum6" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<p>선정인원</p>
<input name="number" id="number-pattern" type="number" min="1" max="99" value="">
<hr>
<p>마감 시간</p>
<input name="deadline_time" id="deadline_time" type="time" value="">

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum5-3">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false  href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
텔레파시 방식
<a data-ajax=false href="#nanum6" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<p>텔레파시 문제</p>
<form method="post" action="#" id="teleForm">
        <input type="text" id="answer1" placeholder="첫번째 텔레파시">
        <input type="radio" name="telepathy" id="answer1" value="answer1">
        <input type="text" id="answer2" placeholder="두번째 텔레파시">
        <input type="radio" name="telepathy" id="answer2" value="answer2">
</form> 
<div id="demo"></div>
<button class="ui-btn ui-btn-inline ui-mini" id="telePlus" onclick="addForm()"> 문제 추가하기 </button>
<hr>
<p>선정인원</p>
<input name="number" id="number-pattern" type="number" min="1" max="99" value="">
<hr>
<p>마감 시간</p>
<input name="deadline_time" id="deadline_time" type="time" value="">

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum5-4">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
사연 방식
<a data-ajax=false href="#nanum6" class="ui-btn ui-btn-inline ui-mini"> >> </a>
<p>사연 양식</p>
<input type="text" name="storyTitle" id="storyTitle">
<hr>
<p>선정인원</p>
<input name="number" id="number-pattern" type="number" min="1" max="99" value="">
<hr>
<p>마감 시간</p>
<input name="deadline_time" id="deadline_time" type="time" value="">

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum6">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
배송 방식 선택
<a href="#blockPopup2" data-rel="popup" class="ui-btn ui-btn-inline ui-mini" data-position-to="window"> >> </a>
<div class="ui-grid-solo">
      <div class="ui-block-a" >
      <a data-ajax=false href="#nanum7">
      	<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      	<p style="font-weight : bold">택배 배송</p>
      </a>
      <hr>
      </div>
      <div class="ui-block-a">
      <a data-ajax=false href="#nanum7">
      	<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      	<p style="font-weight : bold">직접 거래</p>  	
      </a>	
      	<hr>
      </div>
      <div class="ui-block-a">
      <a data-ajax=false href="#nanum7">
      	<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      	<p style="font-weight : bold">우편 배송</p>	
      </a>
      	<hr>
      </div>
      <div class="ui-block-a">
      <a data-ajax=false href="#nanum7">
      	<img src="/resources/images/sample_icon.jpg" width="90px" height="90px">
      	<p style="font-weight : bold">기프티콘</p>
      </a>
      	<hr>
      </div>
</div><!-- grid끝 -->

<div data-role="popup" id="blockPopup2" class="ui-content">
      <p>배송 방식을 선택해야합니다.</p>
      
</div><!-- popup끝 -->

</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum7">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
<a data-ajax=false href="#" class="ui-btn ui-btn-inline ui-mini" data-rel="back"> << </a>
나눔글 작성
<a data-ajax=false href="#nanum8" class="ui-btn ui-btn-inline ui-mini"> 완료 </a>
<form>
 <input type="text" name="nanumTitle" id="nanumTitle" placeholder="나눔글 제목">
 <textarea rows="50" cols="100" name="nanumContents" id="nanumContents" placeholder="나눔하실 물품에 대해 설명해 주세요" required></textarea>
 </form>
</div><!-- main끝 -->
</div><!-- page끝 -->

<div data-role="page" id="nanum8">
<div data-role="header" data-theme="f">
<a data-ajax=false href="#myMenu" class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-notext"></a>
<h1><a data-ajax=false href="/">Nanushare</a></h1>
<a data-ajax=false href="#info" class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"></a>
</div><!-- header끝 -->
<div data-role="main" class="ui-content">
	<img src="/resources/images/sample_icon.jpg" width="100px" height="100px">
	<h2>작성 완료</h2>
	<a data-ajax=false href="/" class="ui-btn ui-btn-inline " > 내가 쓴 게시글 보러 가기 </a><br>
	<a data-ajax=false href="/" class="ui-btn ui-btn-inline " > 해당 카테고리 보러 가기 </a>
</div><!-- main끝 -->
</div><!-- page끝 -->

</body>
</html>