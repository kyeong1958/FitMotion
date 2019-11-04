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
<script>
	function email(){
		var email = $("#email").val();
		 //location.href='/shop/email.jsp?email='+email;
	 	 $.ajax({
			url:'/shop/email.jsp?email='+email
			,success:function(data){
			//	alert("|"+data+"|");
				$("#rauth").val(data);
				alert("인증번호 이메일이 발생되었습니다.");
			}
		});  
	}
	function idFind(){
	 	var rauth = $("#rauth").val();
		var certtext = $("#certtext").val();
		if(rauth == certtext){
			var dataForm = $("#f_idfind").serialize();
			$.ajax({
				method:"post"
				,url:'/shop/idfind.fm'
				,data:dataForm
				,success:function(data){
				//	alert(data);
					if('아이디가 존재하지 않습니다.' != data){
						$("#result").html("아이디는 <b style='font-size:15px'>"+data+"</b> 입니다.");
					}else{
						alert("아이디가 존재하지 않습니다.");
					}
				}
			});
	 	}else{
			alert("이메일 인증을 해주세요.");
		}
	}
</script>
<body>
    <div class="signup-container">
      <p class="signup-title1">Fit Motion</p>
      <div class="controls">
        <h3 class="step-title">아이디 찾기</h3>
        	<form id="f_idfind">
		          <div class="ui field">
		            <div class="ui input">
		              <input id="name" name="name" class="email" placeholder="이름">
		            </div>
		          </div>
		          <div class="ui field">
		            <div class="ui input">
		              <input type="tel" id="hp" name="hp" class="hp" placeholder="HP">
		            </div>
		          </div>
          	</form>
          <div class="ui field">
            <div class="ui input">
              <input id="email" name="email" class="email" placeholder="이메일 주소"><a class="request-phone-authorization" href="#" onClick="email()">인증메일 전송</a>
            </div>
          </div>
          <div class="ui field">
            <div class="ui input">
              <input id="certtext" name="certtext" placeholder="인증번호 입력">
              <input type="hidden" id="rauth" name="rauth">
            </div>
          </div>
          <div class="ui field"><a class="ui fluid gradation button" href="javascript:idFind()">아이디 찾기</a></div>
          <div id="result" style="text-align: center;margin-top: 15%;font-size: medium;">
          </div>
      </div>      
    </div>
</body>
</html>