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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function execDaumPostcode1() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('detail_address1').focus();
            }
        }).open();
    }
    
    function execDaumPostcode2() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode2').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address2').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('detail_address2').focus();
            }
        }).open();
    }
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
<div data-role="page" id="join1">
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
<h3>회원가입</h3>
      <label><input type="checkbox" value="">전체 약관 동의</label>
    <hr>
    
    <table width="100%">
	<tr><td><label><input type="checkbox" value="">서비스 이용약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">위치정보 이용약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">개인정보 취급 약관 동의</label></td>
      <td align="center"> | 내용</td></tr>
      <tr><td><label><input type="checkbox" value="">개인정보 취급 위탁 동의(선택)</label></td>
      <td align="center"> | 내용</td></tr>
      </table>
      
  <table width="100%">
  <tr>
  <td width="50%">
  <a href="#join2"><button type="button" class="btn btn-primary btn-lg btn-block">동의</button></a></td>
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

<div data-role="page" id="join2">
<div data-role="header" data-theme="f">
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
      <td><input type="text" id="postcode1" placeholder=""></td>
      <td align="center"><input type="button" onclick="execDaumPostcode1()" value="검색"><br></td>
      </tr>
      <tr>
      <td align="center">주소</td>
      <td colspan="2"><input type="text" id="address1" placeholder=""></td>
      </tr>
       <tr>
      <td align="center">상세주소</td>
      <td colspan="2"><input type="text" id="detail_address1" placeholder=""></td>
      </tr>
      </table>
      </div>
    <div id="menu1" class="tab-pane fade">
      <table width="100%">
      <tr>
      <td align="center">우편번호</td>
      <td><input type="text" id="postcode2" placeholder=""></td>
      <td align="center"><input type="button" onclick="execDaumPostcode2()" value="검색"><br></td>
      </tr>
      <tr>
      <td align="center">주소</td>
      <td colspan="2"><input type="text" id="address2" placeholder=""></td>
      </tr>
       <tr>
      <td align="center">상세주소</td>
      <td colspan="2"><input type="text" id="detail_address2" placeholder=""></td>
      </tr>
      </table>
    </div>
  </div>
<a href=#join3><input type="submit" value="회원가입" data-role="button" data-iconpos="bottom"></a>

</div><!-- content끝 -->
<div data-role="footer" align="center">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- join2 page끝 -->

<div data-role="page" id="join3">
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
<h3>회원가입을 축하합니다!</h3>
<h4>로그인해주세요.</h3>
    <hr>
      <input type="text" name="user" id="usrnm" placeholder="아이디">
          <input type="password" name="passw" id="pswd" placeholder="비밀번호">
          <label><input type="checkbox" value="1">자동로그인</label>
          <a href="#">아이디 찾기</a>
          <a href="#">비밀번호 찾기</a><br>
  <a href="#join2"><button type="button" class="btn btn-primary btn-lg btn-block">로그인</button></a>
</div><!-- content끝 -->
<div data-role="footer" align="center">
회사 : ㈜나누셰어<br>
주소 : 부산광역시 서구 부민동 동아대학교 부민캠퍼스 국제관 스터디룸 9-B<br>
대표자 이름 : 염지연<br>
회사운영방침 | FAQ | 회사소개 | Q&A
</div><!-- footer끝 -->
</div><!-- join3 page끝 -->

</body>
</html>

