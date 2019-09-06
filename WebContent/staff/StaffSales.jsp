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
#header {
	
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

.container {
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

.card-plus-wrap .tit-area i {
	float: left;
	font-style: normal;
	display: block;
	font-size: 26px;
	margin: -3px 15px 0 0;
}

.card-plus-wrap .tit-area {
	position: absolute;
	top: 66px;
	left: 48px;
	padding-left: 102px;
	padding-top: 32px;
}

.card-plus-wrap .tit-area span {
	float: left;
	display: block;
	font-size: 17px;
	line-height: 22px;
	width: 70px;
}

.card-plus-wrap .input-wrap {
	width: 93%;
	float: left;
	margin-top: 56px;
	display: inline-block;
	border: 1px solid #e7e7e7;
	padding-top: 21px;
	padding-left: 64px;
	margin-left: 19px;
}

.card-plus-wrap .input-wrap ul {
	width: 100%;
	display: inline-block;
	margin-left: 233px;
}

ul, ol {
	margin: 0;
	padding: 0;
	list-style: none;
}

.card-plus-wrap .input-wrap ul li {
	position: relative;
	display: inline-block;
}

.card-plus-wrap .input-wrap ul li input[type="text"] {
	width: 100%;
	border: none;
	background: none;
	font-size: 16px;
	border-bottom: 1px solid #e7e7e7;
	height: 36px;
}

.card-plus-wrap .input-wrap ul li.name {
	width: 150px;
	margin: 0 20px 20px 0;
}

.card-plus-wrap .input-wrap ul li.cellphone {
	width: 100px;
	margin: 0 20px 20px 0;
}

.card-plus-wrap .input-wrap ul li.manager {
	width: 150px;
	margin: 0 20px 20px 0;
}

.card-plus-wrap .input-wrap ul li.birthday {
	margin: 0 20px 20px 0;
}

.card-plus-wrap .input-wrap ul li span.tit {
	display: block;
	float: left;
	font-size: 13px;
	line-height: 35px;
	color: #c1cbcc;
	margin-right: 10px;
}

.card-plus-wrap .btn-area button {
	width: 75px;
	height: 100%;
	background: #37454a;
	border: none;
	text-align: center;
	color: #fff;
	cursor: pointer;
}

form {
	display: block;
	margin-top: 0em;
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

							<a id="mypage" href="#">마이페이지</a> <a id="login" href="#">로그아웃
							</a>

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

				<!--  등록 하는 것 //////////////////////////////////// -->
				<form>
					<div class="card-plus-wrap"
						style="height: 198px; padding-left: 35px;">
						<div class="tit-area">
							<i>+</i><span>비품<br>인센티브
							</span>
						</div>
						<div class="input-wrap">
							<ul>
								<li class="name"><input type="text" placeholder="이름"
									id="name" name="name"></li>
								<li class="cellphone"><input type="text"
									style="ime-mode: disabled" placeholder="연락처"></li>
								<li class="cusnumber" style="float: unset;"><span
									class="tit">금액</span> <input type="text" style="width: 157px;"
									id="shopcustno" name="shopcustno" placeholder="0000"
									class="cusnum-item valid" required=""
									aria-required="true" aria-invalid="false"></li>
								<br>
								<li class="manager"><span class="tit">분류</span>
									<div class="frm_select">
										<select id="charge" name="charge" class="valid"
											aria-invalid="false">
											<option>급여</option>
											<option selected="">인센티브</option>
										</select>
									</div></li>
								</br>
								<li class="birthday"><span class="tit">지급일</span> 
								<input type="hidden" id="birth" name="birth">
								<input style="margin-right: 10px; width: 100px;" type="text"id="birthYear" placeholder="1900" class="brith-item year valid"maxlength="4" aria-invalid="false"> 
								<input style="margin-right: 10px; width: 76px;" type="text"id="birthMonth" placeholder="01" class="brith-item month valid"maxlength="2" aria-invalid="false"> 
								<input type="text"id="birthDay" style="width: 76px;" placeholder="01"class="brith-item day"  maxlength="2"></li>
								<div class="btn-area">
									<button type="button"style="float: right; margin-right: 312px; margin-top: -151px; height: 112px;">등록</button>
								</div>
							</div>
						</ul>
					</div>
				</form>
				<!--  등록 하는 것 //////////////////////////////////// -->


			</div>
		</div>
	</div>
</body>
</html>