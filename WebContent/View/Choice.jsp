<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입 선택</title>
</head>
<style>
.signup-container {
    width: 280px;
    height: 850px;
    position: absolute;
    left: 50%;
    margin-left: -150px;
    margin-top: 100px;
    color: #37454a;
}
.signup-title {
    text-align: center;
    color: #718c96;
   font-size:50px;
}
.signup-container .controls .type {
    height: 130px;
    margin-top: 2px;
    color: white;
    box-shadow: none;
    border-radius: 0;
    border: none;
    background: linear-gradient(to right, #de77cc, #704ae3);
    cursor: pointer;
}
.signup-container .controls .type .inner-text1 {
    font-size: 20px;
    padding-top: 40px;
    padding-left: 20px;
}
</style>
<body>

    <div class="signup-container">
      <p class="signup-title">FitMotion</p>
      
      <div class="controls">
        <div class="type">
          <div class="inner-text1">점주 회원가입</div>
          
        </div>
        <div class="type">
          <div class="inner-text1">직원 회원가입</div>
          
        </div>
      </div>
            
    </div>
   
</body>
</html>