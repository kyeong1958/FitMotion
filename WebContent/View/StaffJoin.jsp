<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/JEasyUiCommon.jsp"%>
<title>Join(직원용)</title>
</head>
<style type="text/css">
* {
   
   background-color: pink;
}

.signup-container {

    width: 345px;
    height: 650px;
    margin: 160px 39%;
    padding-left: 10px;
    border: 1px solid #d9e6e8;
    padding-top: 15px;
    background-color: white;
}

.ui-input input{
   width: 300px;
   height: 45px;
   margin: 7px 12px;
   padding-left:7px;
   border: 1px solid #d9e6eb;
   background-color: white;
   
}
.ui-field a[type=button]{
    cursor: pointer;
    FONT-SIZE: 25px;
    margin-left: 230px;
    border-bottom: groove;
    background-color: lightgray;
}

</style>
<body>
   <div  clsss="background" >
      <div class="signup-container"  >
         <span class="signup-title2"
            style="font-size: 22px; padding-left: 100px; color: gray; background-color: white;" >FitMotion
         </span>
         <div class="controls" style="background-color: white;">
         
            <div class="step-title"
               style="font-size: 40px; margin-top: 14px; margin-left: 75px; font-weight: 600; background-color: white;">회원가입
            </div>

            <form style="background-color: white;">

               <div class="ui-input" style="background-color: white;">
                  <input placeholder="아이디" id="id" name="id" aria-required="true">
               </div>
               <div class="ui-input" style="background-color: white;">
                  <input placeholder="비밀번호" type="password" id="pwd" name="pwd"
                     required="" aria-required="true">
               </div>
               <div class="ui-input" style="background-color: white;">
                  <input placeholder="비밀번호 확인" type="password" id="pwdChk"
                     name="pwdChk" required="" aria-required="true">
               </div>
               <div class="ui-input" style="background-color: white;">
                  <input placeholder="이름" id="name" name="name" value="" required=""
                     aria-required="true">
               </div>
               <div class="ui-input" style="background-color: white;">
                  <input type="text" class="phone-number" placeholder="휴대폰 번호"
                     id="hpno" name="hpno" value="" required="" aria-required="true">
               </div>
               <div class="step-title"
                  style="font-size: 15px;font-weight: 600; margin-left: 10px; background-color: white;">지점찾기</div>
               <div class="ui-input" style="background-color: white;">
                  <input  placeholder="지점명"
                     id="name" name="name" 
                     required="" aria-required="true" >
               </div>
            <div class="ui-field" style="background-color: white;">
               <a class="ui fluid gradation button" type="button"
                  style="cursor: pointer">가입하기</a>
            </div>
         </form>
      </div>
   </div>
</body>
</html>