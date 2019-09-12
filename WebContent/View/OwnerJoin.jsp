<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: pink;">
<head>
<meta charset="UTF-8">
<title>join(점주용)</title>
</head>
<style type ="text/css">
.signup-container{
   margin:5% 44%;
   padding:0%;
} 
   
.ui-input input {
   width: 300px;
   height: 38px;
   margin: 7px -45px;
   border: 1px solid #d9e6e8;
   padding-left: 5px;
}
    
.container{
    border: 1px solid;
    height: 1023px;
    width: 266px;
    padding-left: 51px;
    background-color: white;
    padding-top: 37px;
}
.list {
   margin-top: 33px;
   margin-bottom: 30px;
}
   
</style>
<body>
<div class="signup-container">
	<div class="container">
		<span class="signup-title2" style="font-size: 22px; padding-left: 54px; color: gray;">FitMotion</span>
        <div class="controls">
	        <div class="step-title" style="font-size: 40px; margin-top: 14px; margin-left: 23px; font-weight: 600;">회원가입</div>
        	<form>
	            <div class="ui-input">
	            	<input placeholder="아이디" id="id" name="id" value="" autofocus="" required="" onkeyup="checkIdDuplicated();onKeyUpDelBlank(event);" aria-required="true"/>
	          	</div>
				<div class="ui-input">
	            	<input placeholder="비밀번호" type="password" id="pwd" name="pwd" required="" aria-required="true"/>
	          	</div>
	            <div class="ui-input">
	            	<input placeholder="비밀번호 확인" type="password" id="pwdChk" name="pwdChk" required="" aria-required="true"/>
	            </div>
	            <div class="ui-input">
	            	<input placeholder="이름" id="name" name="name" value="" onkeyup="onKeyUpDelBlank(event);" required="" aria-required="true"/>
	          	</div>
	            <div class="ui-input">
		            <input type="text" class="phone-number" style="ime-mode:disabled" placeholder="휴대폰번호" id="hpno" name="hpno" value=""
		            		required="" onkeyup="checkHpnoDuplicated();removeChar(event);" onkeydown="onlyNumber(event);" aria-required="true"/>
		        </div>
				<div class="step-title" style="font-size: 15px;font-weight: 600; margin-left:-40px;">지점 정보입력</div>
	            <div class="ui-input">
	            	<input placeholder="지점 이름" id="name" name="name" onkeyup="onKeyUpDelBlank(event);" autofocus="" required="" aria-required="true"/>
	        	</div>
	        	<div class="ui-input">
	            	<input placeholder="지점 주소" id="addr" name="addr" readonly="" required="" onclick="onClickOpenAddrQuery();" aria-required="true"/>
	               	<a  style="margin-left: 18px;" class="request-phone-authorization" href="#" onclick="onClickOpenAddrQuery();" id="a-postno">우편번호 검색</a>
	        	</div>
	        	<div class="ui-input">
	            	<input placeholder="상세 주소" id="addrdetail" name="addrdetail"/>
	          	</div>
	            <div class="ui-input">
	            	<input type="text" style="ime-mode:disabled" placeholder="지점전화번호" id="contact" name="contact" onkeyup="chkContactChange();removeChar(event);" onkeydown="onlyNumber(event);"/>
	                <a  style="margin-left: 18px;" class="request-phone-authorization" href="#" onclick="sendNumberReq();">발신번호 등록</a>
	          	</div>
	            <div class="container-pic">
	      			<h2>사진등록하기</h2>
	        		<div class="card" style="height: 115px; border: 1px solid; margin-left: 21px; width: 187px;">
	          		<img class="card-img-top" src="/imimg_avatar1.png" style="width:100%; height: 100%">
	        		</div>
		          	<div class="card-body" style="margin-left: 49px;">
		            	<input type="file" name="uploadfile" id="uploadfile" accept="image/*" style="display:none;" autocomplete="off"/>          
		                <a href="#" class="btn btn-primary">등록하기</a>
		                <a href="#" class="btn btn-primary">삭제하기</a>
					</div>
		           <!--  <br> -->
				</div>
				<div class="ui input" style="text-align: center ;padding-bottom: 10px;font-size:10px; margin-right: 21px; margin-bottom: 23px;">
		                 이미지를 등록하시면, 'FitMotion' 앱 내 대표 이미지로 설정됩니다.
		              등록 후, 마이페이지에서 변경 가능합니다.
		        </div>
				<div class="ui field" >
		        	<a class="ui fluid gradation button" onclick="onClickNext(); " style="cursor:pointer">다음</a>
		        </div>
			</form>
		</div>
	</div>
</div>
</body>
</html>