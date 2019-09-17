<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join(점주용)</title>
</head>
<style type ="text/css">
 *{margin:-2px;}

 .signup-container{
   margin:5% 40%;
   padding:0%;
   } 
 .ui-input input {
   width: 300px;
   height: 45px;
   margin: 7px 12px;
   padding-left:7px;
   border: 1px solid #d9e6eb;
   }

  </style>

<body>
<div class="signup-container">

     <span class="signup-title2"
            style="font-size: 22px; padding-left: 100px; color: gray;">FitMotion
     </span>
      <div class="controls">
            <div class="step-title"
               style="font-size: 40px; margin-top: 14px; margin-left: 75px; font-weight: 600;">회원가입
            </div>
        
        <form>
            <div class="ui-input">
            	<input placeholder="아이디" id="id" name="id" autofocus="" required="" onkeyup="checkIdDuplicated();onKeyUpDelBlank(event);" aria-required="true">
          	</div>
            <div class="ui-input">
              <input placeholder="비밀번호" type="password" id="pwd" name="pwd" required="" aria-required="true">
        	</div>
            <div class="ui-input">
              <input placeholder="비밀번호 확인" type="password" id="pwdChk" name="pwdChk" required="" aria-required="true">
            </div>
            <div class="ui-input">
              <input placeholder="이름" id="name" name="name" value="" onkeyup="onKeyUpDelBlank(event);" required="" aria-required="true">
	        </div>
            <div class="ui-input">
              <input type="text" class="phone-number" style="ime-mode:disabled" placeholder="휴대폰번호" id="hpno" name="hpno" value="" required="" onkeyup="checkHpnoDuplicated();removeChar(event);" onkeydown="onlyNumber(event);" aria-required="true">
    	    </div>
          
         <div class="step-title"
                  style="font-size: 15px;font-weight: 600; margin-left: 10px;">지점 정보입력</div>


          <div class="ui-input">
            <input placeholder="지점 이름" id="name" name="name" onkeyup="onKeyUpDelBlank(event);" autofocus="" required="" aria-required="true">
        </div>
        
          <div class="ui-input">
            <input placeholder="지점 주소" id="addr" name="addr" readonly="" required="" onclick="onClickOpenAddrQuery();" aria-required="true"><br>
            <button style="margin-left: 12px;margin-top:3px;margin-bottom:3px" class="request-phone-authorization" href="#" onclick="onClickOpenAddrQuery();" id="a-postno">우편번호 검색</button>
        </div>
        
          <div class="ui-input">
            <input placeholder="상세 주소" id="addrdetail" name="addrdetail">
          </div>
          
          
            <div class="ui-input">
              <input type="text" style="ime-mode:disabled" placeholder="지점전화번호" id="contact" name="contact" onkeyup="chkContactChange();removeChar(event);" onkeydown="onlyNumber(event);">
                <button style="margin-left: 12px;margin-top:3px;margin-bottom:3px" class="request-phone-authorization" href="#" onclick="onClickOpenAddrQuery();" id="a-postno">발신번호 등록</button>
          </div>
          
          
          
          <div class="ui field image-container">
          		<img id="upImg">          
          		<div class="options">
          
				  부트스트랩 이미지 카드 넣는거 따오기  요기서 부터 밑에는 내일 
				<a class="item" for="uploadfile" style="cursor:pointer">이미지 등록하기</a>
				<a class="item" href="#" onclick="onDeleteImg()">이미지 삭제</a></div>
				<input type="file" name="uploadfile" id="uploadfile" accept="image/*" style="display:none;" autocomplete="off">          
        </div>

          <div class="ui input" style="text-align: left;font-weight: 400;height: 45px;padding-bottom: 10px;">
                 이미지를 등록하시면, 'FitMotion' 앱 내 대표 이미지로 설정됩니다.
              등록 후, 마이페이지에서 변경 가능합니다.
          </div>

          <div class="ui field" ><a class="ui fluid gradation button" onclick="onClickNext(); " style="cursor:pointer">다음</a></div>
        </form>
      </div>      
    </div>
  
</body>
</html>