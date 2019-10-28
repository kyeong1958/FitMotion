<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vo.SupervisorVO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>로그인창/both</title>
</head>
<script type="text/javascript">
 function loginAction(){
	
		$("#loginForm").submit();
		   var formData = $("#loginForm").serialize(); 	     
	// alert("등록버튼 ?");
	/*  var sv_id = $("#sv_id").val();
	 var sv_pw = $("#sv_pw").val(); */
	  		 $.ajax({
	 			url:"/shop/main.jsp"
	 		   ,method:"post"	
	 		   ,success:function(data){
	 			   $("#loginForm").html(data);
	 		   }
	 		   ,error:function(e){
	 			   alert(e.responseText);
	 		   }
	 		});
	     }    	    	  	   
</script>

<style >

</style>
<body>
	
<div class="container-fluid" >
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
        <form class="loginForm">
          <div class="form-group">
          <label for="exampleInputName2">ID</label>
            <input type="text" class="form-control" id="sv_id" name="sv_id" 
             style="text-align: left; width: 250px; height: 40px;" placeholder="아이디">
          </div>
          <div class="form-group">
          <label for="exampleInputName2">Password</label>
            <input type="text" class="form-control" id="sv_pw" name="sv_pw"
            style="text-align: left; width: 250px; height: 40px;" placeholder="비밀번호">
          </div>
          <button type="button" style="width: 250px; height: 40px;" class="btn btn-dark" onclick="loginAction()">로그인</button>
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
</body>
</html>