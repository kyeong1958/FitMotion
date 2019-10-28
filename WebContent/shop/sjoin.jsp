<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">

 /* $('#joinsubmit').click(function(event) {
	if($('#check').val()=='no') {
		alert("아이디 중복 체크를 하세요!");
		return;
	} else {
		alert("before submit");
	} */

	function idcheck(){
		alert("중복버튼 ?");
		$("#staff_id").keyup(function() {		
		var staff_id = $("#staff_id").val();
		var param = "staff_id=" + staff_id;
		/* if(sv_id==("#sv_id")){ */
			 $.ajax({
                 type : "post",
                 url : "/shop/sislId.fm",
                 data : param,
                 success : function(result) {
                     $("#svid").html(result);
                 }
			 })
		})
		}
 /*             })


		}
			alert("가입할 수 없는 아이디 입니다.")
			return;
		}
			else{
				alert("가입할 수 있는 아이디 입니다.")
			}		
	    $("#sv_id").attr("method","post");
	    $("#sv_id").attr("action","/shop/sisId.fm");
	    $("#sv_id").submit();
			}
	 */
	 function tarcheck(){
		 alert("점주체크버튼 ?");
		 location.href = 'sjoin2.jsp';
		 
	 }
	
	
	function joinsubmit(){					
		staff_pw = $("#staff_pw").val();
		staff_pwcheck = $("#staff_pwcheck").val();
		staff_id = $("#staff_id").val();
		 	if(staff_id == ""){
				alert("아이디를 입력하세요");
				return ;
			} 
		 	else if (staff_pw != staff_pwcheck) {
				alert ("패스워드가 동일하지 않습니다")
				return;
			}		
			
				else {
			    alert("등록버튼 ?");
			    $("#form").attr("method","post");
			    $("#form").attr("action","/shop/slINS.fm");
			    $("#form").submit();
			}
		}  

</script>
<style>
</style>
<body>

	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>직원 회원가입 Form</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form id="form">
				점주 <input type="radio" name="target"  value="점주" onclick="tarcheck()" /> 
				직원 <input type="radio" name="target" value="직원" checked />
				
				<div class="form-group">
					<label for="InputId">아이디</label> 
					<input type="text" class="form-control" name="staff_id" placeholder="아이디를 입력해 주세요">
				</div>
					<div>
					<span class="svid" id="svid">
						<a id="idcheck" type="button" class="btn btn-success" onClick="idcheck()" >중복검사</a>
						<input type="hidden" id="check" value="no" />
					</span>
					</div>
					

				<div class="form-group">
					<label for="inputPassword">비밀번호</label> 
					<input type="password"
						class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력해주세요">
				</div>
				 <div class="form-group">
					<label for="inputPasswordCheck">비밀번호 확인</label> 
					<input
						type="password" class="form-control" id="staff_pwcheck" name="staff_pwcheck"
						placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
				</div> 
				<div class="form-group">
					<label for="inputMobile">휴대폰 번호</label> 
					<input type="text"
						class="form-control" name="staff_hp" placeholder="휴대폰번호를 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputName">성명</label> 
					<input type="text"
						class="form-control" name="staff_name" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputName">직원소개</label> 
					<input type="text"
						class="form-control" name="staff_introduce" placeholder="자기소개">
				</div>
				<div class="form-group">
					<label for="inputbirth">생일</label> 
					<input type="text"
						class="form-control" name="staff_birth" placeholder="생일을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputbirth">상호코드</label> 
					<input type="text"
						class="form-control" name="gym_num" placeholder="상호코드를 입력해주세요">
				</div>
				
				<div class="form-group">
					<label for="inputGymName">사업자상호</label> 
					<input type="text"
						class="form-control" name="pi_num" placeholder="사업자코드를 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputbirth">이미지</label> 
					<input type="text"
						class="form-control" name="staff_image" placeholder="이미지를 선택해 주세요">
				</div>
				<div class="form-group">
				<label for="inputgender">성별</label> 
					남 <input type="radio" name="staff_gender" value="남자" checked /> 
					여 <input type="radio" name="staff_gender" value="여자" />
				</div>

			</form>
				<div class="form-group text-center">
					<button type="submit" id="joinsubmit" class="btn btn-primary"  onclick="joinsubmit()"> 
					
						회원가입 <i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
		</div>

	</article>
</body>

</html>