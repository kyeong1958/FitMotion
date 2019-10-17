<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>로그인</title>
</head>
	<script type="text/javascript">
		function Login(){ 
	 		alert("로그인 시도");
	 		$("#f_Login").attr("method","post");
	 		$("#f_Login").attr("action","Login.fm");
	 		$("#f_Login").submit();
		}
	</script>
<style type="text/css">
#foot{ font-size: xx-large;}
.row {
   height: auto;
}


img {
    max-width: 100%;
    height: 100%;
    width: 100%;

}
button[type=button]{
   border: none;
   font-size: 25px;
   width: 250px;
   background-color: white;
   color: gray;
}

.container-fluid{
  width: 100%;
  padding-right: 0;
  padding-left: 0;
  margin-right: auto;
  margin-left: auto;
}
</style>
<body>
	<div class="container-fluid">
      <!-- Control the column width, and how they should appear on different devices -->
      		<div class="row">
		         <div class="col-sm-9" style="border: 1px solid;">
		            <img src="/images/vinxen.jpg" alt="" class="img-responsive">
		         </div>
					<div class="col-sm-3" >
		         		<div class="container">
				            <div class="row" style="margin-top: 250px; margin-left:100px">
				               <div class="loginlogo" style="font-size: 50px;">
				                  <p>FitMotion</p>
				               </div>
				            </div>
				            <form id="f_Login" name="f_Login" style="margin-left: 80px;" >
					               <div class="form-group input-rounded">
					                  <input type="text" class="form-control" name="f_id" id="f_id"
					                     style="text-align: left; width: 250px; height: 40px;"
					                     placeholder="Username" />
					               </div>
					               <div class="form-group input-rounded">
					                  <input type="password" class="form-control" name="f_pw" id="f_pw"
					                     style="text-align: left; width: 250px; height: 40px;"
					                     placeholder="Password" />
					               </div>
				               <button type="button" style="margin-bottom: 10px;" onClick="javascript:Login()">Login</button>
				            </form>
				            <div class="signup-link" style="margin-left: 100px;">
				               <a href="#" style="color: black;" onclick="javascript:location.href='Choice.jsp' ">회원가입</a>
				               <a style="padding-left: 38px;">아이디/비번찾기</a>
				            </div>
		            	</div>
	            		<div class="row" style="background-color: black; margin-top: 322px" >
		            		<div id="footer" style="color: white"  >
			                   <p ><a id="foot"href="#" style="color: white" >About Fit Motion</a>
			                	<p >©2019 FitMotion Data based on Health Korea. </p>
		              		</div>
	            		</div>
         			</div>
      		</div>
   		</div>
	</body>
</html>