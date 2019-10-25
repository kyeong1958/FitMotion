<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vo.SupervisorVO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FitMotion</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
</head>
<style >
body{
	padding:0;
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
</style>
<script type="text/javascript">
	function loginAction(){
		var login_id = $("#login_id").val();
		var login_pw = $("#login_pw").val()
		if(login_id != '' && login_pw != ''){
			$("#f_login").attr('post');
			$("#f_login").attr('action','/shop/slogin.fm');
			$("#f_login").submit();
		}else{
			alert('아이디와 비밀번호를 입력하세요.');			
		}
	}    	    	  	   
</script>


<body>
   
<div class="container-fluid" >
	<div class="row nav">
   </div>
      <!-- Control the column width, and how they should appear on different devices -->
      <div class="row">
         <div class="col-sm-3" style="margin:auto;" >
         	<div class="container">
            <div class="row" style="margin-top: 250px; margin-left:100px">
               <div class="loginlogo" style="font-size: 50px;">
                  <p>FitMotion</p>
               </div>
            </div>
            <div id="loginForm" class="login" style="margin-left: 80px;"> 
        <form id="f_login">
          <div class="form-group">
          <label for="exampleInputName2">ID</label>
            <input type="text" class="form-control" id="login_id" name="login_id" 
             style="text-align: left; width: 250px; height: 40px;" placeholder="아이디">
          </div>
          <div class="form-group">
          <label for="exampleInputName2">Password</label>
            <input type="text" class="form-control" id="login_pw" name="login_pw"
            style="text-align: left; width: 250px; height: 40px;" placeholder="비밀번호">
          </div>
          <button type="button" style="width: 250px; height: 40px;" class="btn btn-dark" onClick="loginAction()">로그인</button>
        </form>
      </div>
            <div class="signup-link" style="margin-left: 100px;margin-top:4%;">
               <a href="join.jsp" style="color: black; ">회원가입</a>
               <a href=# style="padding-left: 38px;">아이디/비번찾기</a>
            </div>
            </div>        
            <div class="row" style="background-color: black; margin-top: 322px" >
           <!--  <div id="footer" style="color: white" >
                   <p ><a id="foot"href="#" style="color: white" >About Fit Motion</a>
                <p >©2019 FitMotion Data based on Health Korea.</p>
              </div>
            </div>
 -->
         </div>
      </div>
   </div>
   	<div class="footer navbar-fixed-bottom">
   </div>
</div>
</body>
</html>