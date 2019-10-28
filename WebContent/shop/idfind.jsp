<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/idfind.css">
<title>아이디 찾기</title>
</head>
<body>
    <div class="signup-container">
      <p class="signup-title1">Fit Motion</p>
      <div class="controls">
        <h3 class="step-title">아이디 찾기</h3>
          <div class="ui field">
            <div class="ui input">
              <input id="email" name="email" value="" class="email" placeholder="이메일 주소"><a class="request-phone-authorization" href="#">인증메일 전송</a>
            </div>
          </div>
          <div class="ui field">
            <div class="ui input">
              <input id="certtext" name="certtext" placeholder="인증번호 입력">
            </div>
          </div>
          <div class="ui field"><a class="ui fluid gradation button" href="#">아이디 찾기</a></div>
      </div>      
    </div>
</body>
</html>