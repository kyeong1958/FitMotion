<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
 	String result = (String)request.getAttribute("find"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta charset="UTF-8">
				<title>join(점주용)</title>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
				<link rel="stylesheet" type="text/css" href="../themes/icon.css">
				<link rel="stylesheet" type="text/css" href="../demo/demo.css">
				<script type="text/javascript" src="../js/jquery.min.js"></script>
				<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
				<script type="text/javascript" src="../js/commons.js"/></script>
				<script type="text/javascript" src="../js/jquery.cookie.js"></script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
				    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
				    function sample4_execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
				                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
				                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				                var roadAddr = data.roadAddress; // 도로명 주소 변수
				                var extraRoadAddr = ''; // 참고 항목 변수
				
				                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                    extraRoadAddr += data.bname;
				                }
				                // 건물명이 있고, 공동주택일 경우 추가한다.
				                if(data.buildingName !== '' && data.apartment === 'Y'){
				                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                }
				                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				                if(extraRoadAddr !== ''){
				                    extraRoadAddr = ' (' + extraRoadAddr + ')';
				                }
				
				                // 우편번호와 주소 정보를 해당 필드에 넣는다.
				                document.getElementById('sample4_postcode').value = data.zonecode;
				                document.getElementById("sample4_roadAddress").value = roadAddr;
				                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
				                
				                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				                if(roadAddr !== ''){
				                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
				                } else {
				                    document.getElementById("sample4_extraAddress").value = '';
				                }
				
				                var guideTextBox = document.getElementById("guide");
				                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				                if(data.autoRoadAddress) {
				                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				                    guideTextBox.style.display = 'block';
				
				                } else if(data.autoJibunAddress) {
				                    var expJibunAddr = data.autoJibunAddress;
				                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				                    guideTextBox.style.display = 'block';
				                } else {
				                    guideTextBox.innerHTML = '';
				                    guideTextBox.style.display = 'none';
				                }
				            }
				        
				        }).open();
				    }
			    new daum.Postcode({
			        onclose: function(state) {
			            //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
			            if(state === 'FORCE_CLOSE'){
			                //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.
			
			            } else if(state === 'COMPLETE_CLOSE'){
			                //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
			                //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
			            }
			        }
			    });
			</script>
		<script type="text/javascript">
<%-- 			function join(){
				var check = <%=result%>
				if(check == "사용가능"){
					//폼전성
				}
			} --%>
			function overlap(){
				var checkid = $("#owner_id").val();
				location.href="/fitmotion/both/overlap.fm?f_id="+checkid;
			}
			function f_owner(){
 	        	var re =/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/ 
				var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
 	        	// 아이디와 패스워드가 적합한지 검사할 정규식 
	        	var y = $("#yy").val();
	    		var m = $("#mm").val();
	    		var d = $("#dd").val();
	    		var birth = y+m+d; 
 	    	    var pw = document.getElementById("owner_pw"); 
	    	    
				if(join.owner_id.value=="") {
                    alert("아이디를 입력하세요");
                    join.owner_id.focus();
                    return false;
				}
 	    	    if(!check(re,owner_pw,"패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
	    	        return false;
	    	    }
	    	    if(join.owner_pw.value !=  join.owner_pwChk.value) {
	    	        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
	    	        join.owner_pwChk.value = "";
	    	        join.owner_pwChk.focus();
	    	        return false;
	    	    }
                if(join.owner_name.value=="") {
                   	alert("이름을 입력해 주세요");
                     join.owner_name.focus();
                     return false;
                    }
	            if(owner_address.value=="") {
	                alert("이메일을 입력해 주세요");
	                owner_address.focus();
	                return false;
	            }
                 if(join.owner_hp.value=="") {
                    alert("휴대폰번호를 입력해 주세요");
                    join.owner_hp.focus();
                    return false;
                } 
	            if(!check(re2, owner_address, "적합하지 않은 이메일 형식입니다.")) {
	                return false;
	            }
                  if(join.yy.value=="") {
                      alert("태어난 년도를 입력해 주세요");
                      join.yy.focus();
                      return false;
                  }
                  if(mm.value=="") {//////////////////////////////////////////////              ?????안통함
                      alert("태어난 날짜를 입력해 주세요");
                      mm.focus();
                      return false;
                  }   
                  if(dd.value==""+"일") {//////////////////////////////////////////////              ?????안통함
                      alert("태어난 날짜를 입력해 주세요");
                      dd.focus();
                      return false;
                  } 
                  if(join.owner_point.value=="") {
                      alert("지점명을 입력해 주세요");
                      join.owner_point.focus();
                      return false;
                  }
                    if(join.sample4_roadAddress.value=="") {
                        alert("지점 도로명 주소 칸을 채워 주세요");
                        join.sample4_roadAddress.focus();
                        return false;
                    }
                    if(join.detail_addr.value=="") {
                        alert("상세주소칸을 채워 주세요");
                        join.detail_addr.focus();
                        return false;
                    }
                    if(join.point_num.value=="") {
                        alert("지점전화번호를 입력해 주세요");
                        join.point_num.focus();
                        return false;
                    }
        	}
/* 		}	 */
	            function check(re, what, message) {
	                if(re.test(what.value)) {
	                    return true;
	                }	
	                alert(message);
	                what.value = "";
	                what.focus();
	                //return false;
	    
			}     
	            function inputTelNumber(obj) {
	                var number = obj.value.replace(/[^0-9]/g, "");
	                var tel = "";
	                if(number.substring(0, 2).indexOf('02') == 0) {
	                    if(number.length < 3) {
	                        return number;
	                    } else if(number.length < 6) {
	                        tel += number.substr(0, 2);
	                        tel += "-";
	                        tel += number.substr(2);
	                    } else if(number.length < 10) {
	                        tel += number.substr(0, 2);
	                        tel += "-";
	                        tel += number.substr(2, 3);
	                        tel += "-";
	                        tel += number.substr(5);
	                    } else {
	                        tel += number.substr(0, 2);
	                        tel += "-";
	                        tel += number.substr(2, 4);
	                        tel += "-";
	                        tel += number.substr(6);
	                    }
	                } else {
	                    if(number.length < 4) {
	                        return number;
	                    } else if(number.length < 7) {
	                        tel += number.substr(0, 3);
	                        tel += "-";
	                        tel += number.substr(3);
	                    } else if(number.length < 11) {
	                        tel += number.substr(0, 3);
	                        tel += "-";
	                        tel += number.substr(3, 3);
	                        tel += "-";
	                        tel += number.substr(6);
	                    } else {
	                        tel += number.substr(0, 3);
	                        tel += "-";
	                        tel += number.substr(3, 4);
	                        tel += "-";
	                        tel += number.substr(7);
	                    }
	                }
	                obj.value = tel;
	            }    
	            function onlyNumber() {
	                if ((event.keyCode < 48) || (event.keyCode > 57))
	                    event.returnValue = false;
	            }
		</script>	
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
            	<div class="step-title" style="font-size: 40px; margin-top: 14px; margin-left: 75px; font-weight: 600;width: 161px;">회원가입
            	</div>
        			<form id="join" name="join" onsubmit="return f_owner();"method="post" action="/fitmotion/owner/join.fm">
			           	<div class="ui-input">
			           		<%-- <input name="find_result" type="hidden" value="<%=result%>"> --%>
			           		<input placeholder="아이디"  id="owner_id" name="owner_id"  >
		               		<input type="hidden" name="authority_code" value="COM001"> 
			          	</div>
						<a href="javascript:overlap()" class="btn squ gray"  style="margin-left: 10px; margin-top: 4px;">중복검사
             			</a>
             			<span id="find_id" style="font-size: small;margin-left: 24px;color: red;"><%=result%></span>
			           	<div class="ui-input" style=" width: 310px;">
			            	<input placeholder="비밀번호" type="password" id="owner_pw" name="owner_pw"  >
		          	 		<a style="margin-left: 14px;width: 303px;">패스워드는 4~12자의 영문 대소문자와 숫자로만 입력</a>
			        	</div>
			           	<div class="ui-input">
			            	<input placeholder="비밀번호 확인" type="password" id="owner_pwChk" name="owner_pwChk">
			           	</div> 
			           	<div class="ui-input">
			            	<input placeholder="이름" id="owner_name" name="owner_name" >
				       	</div>
			           	<div class="ui-input">
			            	<input type="text" class="phone-number" style="ime-mode:disabled" placeholder="휴대폰번호" id="owner_hp" name="owner_hp" 
			            					value=""  onkeyup="inputTelNumber(this);"onkeypress="onlyNumber();" maxlength="13">
			    	   	</div>
		            	<div class="ui-input">
		              		<input placeholder="이메일" id="owner_address" name="owner_address" value="" onkeyup="onKeyUpDelBlank(event);" >
		           		</div>
						<div class="bir_wrap" style="background-color: white;margin-left: 8px;margin-bottom: 6px;width: 250px;">
							<span class="ps_box" style="background-color: white;MARGIN-RIGHT: 1px;">
								<input type="text" onkeypress="onlyNumber();" id="yy" name="yy" 
											placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4" 
											style="height: 33px;width: 77px;margin-right: -15px;PADDING-BOTTOM: 0px;margin-left: 5px;">
							</span> 
							<span class="ps_box" style="    margin-left: 12px;    background-color: white;">
								<select id="mm" name="mm" class="sel" aria-label="월" style="width: 65px;margin-left: 6px;
												height: 34px; background-color: white; padding-bottom: 1px;">
									<option value="1">월</option>
<%
										for(int i = 1;i<13;i++){
%>
											<option value=" <%=i %>">
												<%=i +"월"%>
											</option>
<%
										}
%>
								</select>
							</span>
							<span class="ps_box" style="    margin-left: 8px;    background-color: white;">
								<select id="dd" name="dd" class="int" 
									style="width: 64px;margin-left: 7px;height: 33px;background-color: white;">
									<option value="1">일</option>
<%
										for(int i = 1;i<32;i++){
%>
											<option value="<%=i%>">
												<%=i+"일" %>
											</option>
<%
										}
%>
								</select>
						</span>
					</div>
			         	<div class="step-title"
			              	style="font-size: 15px;font-weight: 600; margin-left: 10px;width: 97px;">지점 정보입력
						</div>
			          	<div class="ui-input">
			           		<input placeholder="지점 이름" id="owner_point" name="owner_point"  onkeyup="onKeyUpDelBlank(event);">
			        	</div>
				          <div class="ui-input" >
								 <input type="hidden" id="sample4_postcode" placeholder="우편번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br>
								<input type="text" id="sample4_roadAddress" name="road_addr"  placeholder="도로명주소">
								<input type="hidden" id="sample4_jibunAddress" name="owner_addr"  placeholder="지번주소">
								<span id="guide" style="color:#999;display:none; width: 304px; margin-left: 13px;"></span>
								<input type="hidden" id="sample4_detailAddress"   placeholder="상세주소">
								<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
				            	<input placeholder="상세 주소"  id="detail_addr" name="detail_addr">
				        </div>
						<div class="ui-input">
			            	<input  type="text" style="ime-mode:disabled" placeholder="지점전화번호" id="point_num" 
			            					name="point_num"onkeyup="inputTelNumber(this);"onkeypress="onlyNumber();" maxlength="13" >
			          	</div>
						<div class="ui field" >
							<input type="submit" name="submit" value="회원 가입" style="block-size: 40px;
									   	 	margin-left: 12px;    width: 301px;-webkit-appearance: listbox;" >
						</div>
				</form>
			</div>      
    	</div>
	</body>
</html>