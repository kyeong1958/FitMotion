<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
body{
	padding:0;
    font-size: initial;
}
.container-fluid {
    padding : 0;
}
.nav{
	height: 60px;
    font-size: 18px;
	background-color:#42485A;
	color: white;
}
.footer{
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
	height: 60px;
    font-size: 18px;
	background-color:#42485A;
	color: white;
}
.container{
	padding-top: 4%;
    padding-bottom: 4%;
}
.lab{
	font-size: 16px;
    font-weight: 600;
}
</style>
<script type="text/javascript">
 $(document).ready(function(){
	 $("#staffjoin").hide();
	 $("#svjoin").hide();
 });
</script>
</head>
<script type="text/javascript">
/*//////////////////////////// [[ 주소검색 daum API ]] //////////////////////////////////////////////  */
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function addressSearch() {
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
            document.getElementById('gym_postal_code').value = data.zonecode;
            document.getElementById("gym_address").value = roadAddr;
           // document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("gym_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("gym_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
           /*  if(data.autoRoadAddress) {
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
            } */
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
/*//////////////////////////// [[ 주소검색 daum API ]] //////////////////////////////////////////////  */
//점주 직원선택
	function radioCheck(){
		if(document.getElementById("superradio").checked){
			 $("#svjoin").show();
			 $("#staffjoin").hide();
		}else if(document.getElementById("staffradio").checked){
			 $("#svjoin").hide();
			 $("#staffjoin").show();
		}
	}
//중복검사
	function idCheck(){
		var joinid = $("#joinid").val();
		if(joinid != null){
			$.ajax({
				url:'/shop/idcheck.fm?joinid='+joinid
			   ,success:function(data){
				   alert(data);
				   if("사용가능" == data){
					   $("#idcheckresult").html('<b>사용가능한 아이디입니다.</b>');
					   $("#checkid").val('yes');
					   alert($("#checkid").val());
				   }
				   else if("사용불가" == data){
					   $("#idcheckresult").html('<b>이미 존재하는 아이디입니다.</b>');
				   }
			   }
				
			});
				
		}else{
			alert("아이디를 입력하세요.");
		}
	}

//회원가입
	function join(){
	 	if(document.getElementById("superradio").checked || document.getElementById("staffradio").checked){
			var checkid = $("#checkid").val();
			if(checkid == 'yes'){
				var pw = $("#join_pw").val();
				var pwc = $("#join_pwcheck").val();
				if(pw == pwc){
					var name = $("#join_name").val();
					alert("name"+name);
					if(name != ''){
						var address = $("#gym_postal_code").val();
						if(address != ''){
							var gymname = $("#gym_name").val();
							if(gymname != ''){
								$("#f_join").attr('post');
								$("#f_join").attr('action','/shop/join.fm');
								$("#f_join").submit();
							}else{
								alert("사업장 상호를 입력하세요");
							}
						}else{
							alert("주소를 입력하세요");
						}
					}else{
						alert("이름을 입력하세요");
					}
				}else{
					alert("|"+pwcheckmsg+"|")
					alert("비밀번호가 일치하지 않습니다.");
				}
			}else if(checkid == 'no'){
				alert("아이디 중복검사를 체크하세요.");
			}
		}else{
			alert("점주 및 직원을 선택해주세요");
		}
	}
	$(function(){
		$("#join_pwcheck").keyup(function(e){
			var pw = $("#join_pw").val();
			var pwc = $("#join_pwcheck").val();
			if(pwc != ''){
				$("#pwcheckmsg").show();
				if(pw != pwc){
					 $("#pwcheckmsg").css('color','red');
					 $("#pwcheckmsg").html('비밀번호가 일치하지 않습니다.');
				}else if(pw == pwc){
					 $("#pwcheckmsg").css('color','green');
					 $("#pwcheckmsg").html('비밀번호가 일치합니다.');
				}
			}
			else if(pwc == ''){
				 $("#pwcheckmsg").hide();
			}
		});
	})
</script>

<body>

<div class="container-fluid" >
		<div class="row nav">
	   </div>
	<div class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3" style="text-align:center">
				<div class="loginlogo" style="font-size: 50px;">
                  <p>FitMotion</p>
               </div>
			</div>
		</div>
			<div class="col-sm-6 col-md-offset-3">
				<form id="f_join">
					점주 <input type="radio" name="target" value="super" id="superradio" onClick="radioCheck()"/> 
					직원 <input type="radio" name="target" value="staff" id="staffradio" onClick="radioCheck()"/>
					
					<div class="form-group">
						<label for="InputId" class="lab">아이디</label> 
						<input type="text" class="form-control" name="joinid" id="joinid" placeholder="아이디를 입력해 주세요">
					</div>
						<div>
						<span class="svid" id="svid">
							<a id="idcheck" type="button" class="btn btn-success" style="margin-bottom: 2%;" onClick="idCheck()" >중복검사</a>
							<input type="hidden" id="checkid" name="checkid" value="no" />
						</span>
						<span id="idcheckresult"></span>
						</div>
						
	
					<div class="form-group">
						<label for="inputPassword" class="lab">비밀번호</label> 
						<input type="password"
							class="form-control" id="join_pw" name="join_pw" placeholder="비밀번호를 입력해주세요">
					</div>
					 <div class="form-group">
						<label for="inputPasswordCheck" class="lab">비밀번호 확인</label> 
						<input
							type="password" class="form-control" id="join_pwcheck" name="join_pwcheck"
							placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
					</div>
					<div id="pwcheckmsg" style="font-weight:bold;"></div>
					
					<div class="form-group">
						<label for="inputName" class="lab">성명</label> 
						<input type="text"
							class="form-control" id="join_name" name="join_name" placeholder="이름을 입력해 주세요">
					</div>
					<label for="inputgender" class="lab">성별</label> 
						남 <input type="radio" name="join_gender" id="join_gender" value="남자" checked/> 
						여 <input type="radio" name="join_gender" id="join_gender" value="여자" />
					
					<div class="form-group">
						<label for="inputMobile" class="lab">휴대폰 번호</label> 
						<input type="text"
							class="form-control" name="join_hp" id="join_hp" placeholder="휴대폰번호를 입력해 주세요">
					</div>
					<div class="form-group">
						<label for="inputbirth" class="lab">생년월일</label> 
						<input type="text"
							class="form-control" name="join_birth" id="join_birth" placeholder="생일을 입력해 주세요">
					</div>
					<div id="staffjoin">
						<div class="form-group">
							<label for="inputName" class="lab">직원소개</label> 
							<input type="text"
								class="form-control" name="staff_introduce" id="staff_introduce" placeholder="자기소개">
						</div>
						<div class="form-group">
							<label for="inputGymName" class="lab">사업장코드</label> 
							<input type="text"
								class="form-control" name="gym_num" id="gym_num" placeholder="사업장코드를 입력해 주세요">
						</div>
					</div>
					<div id="svjoin">
					<div class="form-group">
						<label for="inputaddr" class="lab">헬스장주소</label> 
						<div>
							<input type="text" class="form-control" style="width: 40%;margin-bottom: 2%;display: inline;"
								   id="gym_postal_code" name="gym_postal_code" placeholder="우편번호">
								<a type="button" class="btn btn-success" onClick="addressSearch()" >우편번호 검색</a>
						</div>
						<input type="text" class="form-control" style="margin-bottom: 2%;" name="gym_address" id="gym_address" placeholder="주소를 입력하세요">
						<input type="text" class="form-control" name="gym_extraAddress" id="gym_extraAddress" placeholder="상세주소를 입력하세요">
					</div>
					<div class="form-group">
							<label for="inputGymName" class="lab">사업장상호</label> 
							<input type="text"
								class="form-control" name="gym_name" id="gym_name" placeholder="사업장상호를 입력해 주세요">
						</div>
					</div>
			</form>
			<div class="form-group text-center">
				<button id="joinsubmit" class="btn btn-primary"  onClick="join()"> 
					회원가입 <!-- <i class="fa fa-check spaceLeft"></i> -->
				</button>
				<button class="btn btn-warning">
					가입취소<!-- <i class="fa fa-times spaceLeft"></i> -->
				</button>
			</div>
		</div>
	</div>

</div>
</body>

</html>