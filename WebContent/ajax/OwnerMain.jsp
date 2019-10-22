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
<title>매출관리</title>
</head>
<style>
#header{
}
#img {
	height: 150px;
	width: 150px;
	background-color: black
}

#t_sales {
	margin-top: 20px;
	margin-left: 20px;
}

#menubarmain {
	font-size: x-large;
	color: initial;
}

li {
	list-style: none;
}

a {
	color: gray;
}


.container{
	height: auto;
	background-color: pink;
}
.containermain {
	width: 1500px;
	margin-left: 200px;
}

.title {
	float: right;
	position: relative;
	right: 0%;
	display: inline;
}

.menu1 {
	font-size: 15px;
}
</style>
<body>

	<div class="containermain">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="header" style="cursor: pointer;">FitMotion</div>
				<div id="title" class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-right">
						<div class="title" style="cursor: pointer;">

							<a id="mypage" href="#">마이페이지</a> <a id="login" href="#">로그아웃 </a>

						</div>
					</form>
				</div>
			</div>
		</nav>

		<div class="row" style="border: 1px solid gray;">
			<div id="img" class="col-sm-2"></div>
			<div class="col-sm-10">메인</div>
		</div>

		<div class="row">
			<div class="col-sm-2" style="border-right: 1px solid gray;">
				<!-- 메뉴창  -->
			<div class="container">
				<ul class="list" style="margin-top: 10px">
					<a id="menubarmain">매출관리</a>
					<li><a href="#" onclick="">전체 매출 </a></li>
					<li><a href="#" onclick="">직원별 매출 </a></li>
					<li><a href="#" onclick="">종목별 매출 </a></li>
					<li><a href="#" onclick="">고객별 매출 </a></li>
				</ul>
				<ul>
					<a id="menubarmain">헬스장관리</a>
					<li><a href="#" onclick="">프로그램 </a></li>
					<li><a href="#" onclick="">프로모션 </a></li>
					<li><a href="#" onclick="">기구관리 </a></li>
					<li><a href="#" onclick="">비품관리 </a></li>
				</ul>
				<ul>
					<a id="menubarmain">직원관리</a>
					<li><a href="#" onclick="">직원등록/목록</a></li>
					<li><a href="#" onclick="">근무일지</a></li>
					<li><a href="#" onclick="">직원급여 </a></li>
				</ul>
				<ul>
					<a id="menubarmain">회원관리</a>
					<li><a href="#" onclick="">회원등록/목록 </a></li>
					<li><a href="#" onclick="">구매등록</a></li>
				</ul>
				
				<!-- ==========================문자 고객센터 보류============================== -->
				<ul>
					<a id="menubarmain"> 고객센터 </a>
					<li><a href="#" onclick=""> 사용법안내 </a></li>
					<li><a href="#" onclick="">공지사항</a></li>
					<li><a href="#" onclick=""> 문의하기 </a></li>
				</ul>
			</div>
		</div>
			
			<div class="col-sm-10">
				<!-- 화면 바끼는 부분  -->





			</div>
		</div>
	</div>
</body>
</html>