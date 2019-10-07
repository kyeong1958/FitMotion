<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FitMotion</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/CSS/Searchheader.jsp"%>

<link rel="stylesheet" type="text/css" href="../kcss/main.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<script type="text/javascript">
	function fontcolorchange() {

	}
	function ajax(url) {

		alert("ajax==> " + url);
		$.ajax({
			method : 'get',
			url : url,
			success : function(data) {
				$("#changedisplay").html(data);
			}
		});
	}
</script>
<style type="text/css">
.list {
	margin-top: 33px;
	margin-bottom: 30px;
}

#label {
	width: 100%;
	/*     height: 150px;
    border: 1px solid #dddae0;
    background: linear-gradient(90deg, #8662cd,#6274cd);
	margin-right: 5%; */
}

/* #menubar{
	width: 118%;
	border: 1px solid #dddae0;
	padding-bottom: 20%;
}  */
.menuheader {
	font-size: 180%;
	margin-top: 6%;
	margin-bottom: 3%;
	padding-left: 10%;
}

.menuitem {
	font-size: 130%;
	padding-left: 20%;
	margin-bottom: 3%;
	color: black;
}

.sidebar {
	border: 2px solid;
}
</style>
<body>
	<!--////////////////////////////////////nav//////////////////////////////////  -->
	<%@ include file="./nav.jsp"%>
	<!--////////////////////////////////////nav//////////////////////////////////  -->
	<!--////////////////////////////////////메뉴바//////////////////////////////////  -->
	<div class="container-fluid">
		<div class="col-sm-2 col-lg-2"></div>
		<div class="col-sm-8 col-lg-8">
			<div class="col-sm-2 col-lg-2 sidebar">
				<div class="row" id="label">FITMOION</div>
				<div class="row" id="menubar">
					<div class="row menuheader">매출관리</div>
					<!--  -->
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./chart_a.jsp')">전체매출</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./chart_b.jsp')">직원별매출</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./chart_c.jsp')">종목별매출</a>
					</div>
					<!--  -->

					<div class="row">
						<a class="menuitem" href="#">고객별매출</a>
					</div>
					<div class="row menuheader" style="border-top: 1px solid #dddae0">헬스장관리</div>
					<div class="row">
						<a class="menuitem" href="#">프로그램</a>
					</div>
					<div class="row">
						<a class="menuitem" href="#">프로모션</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./Equipment.jsp')">기구관리</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./Goods.jsp')">비품관리</a>
					</div>
					<div class="row menuheader" style="border-top: 1px solid #dddae0">직원관리</div>
					<div class="row">
						<a class="menuitem" href="#">직원등록/목록</a>
					</div>
					<div class="row">
						<a class="menuitem" href="#">근무일지</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./StaffSalary.jsp')">직원급여</a>
					</div>
					<div class="row menuheader" style="border-top: 1px solid #dddae0">회원관리</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./Member.jsp')">회원등록/목록</a>
					</div>
					<div class="row">
						<a class="menuitem" href="javascript:ajax('./MemberShip.jsp')">구매등록</a>
					</div>
				</div>
			</div>
			<div class="col-sm-10 col-lg-10">
				<!-- /////////////////////////////// [[화면전환 시작]] ////////////////////////////////////////////////////// -->
				<div id="changedisplay"></div>
				<!-- /////////////////////////////// [[화면전환 끝]] ////////////////////////////////////////////////////// -->
			</div>



			<div class="col-sm-2 col-lg-2">&nbsp;</div>

		</div>
	</div>
	<div class="col-sm-2 col-lg-2"></div>






</body>
</html>