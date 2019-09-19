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

<script type="text/javascript">
	function fontcolorchange(){

	}
	function ajax(url){
		
		alert("ajax==> "+url);
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#changedisplay").html(data);
		   }
		});
	}
</script>
<body>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   <%@ include file="./nav.jsp" %>
<!--////////////////////////////////////nav//////////////////////////////////  -->
<!--////////////////////////////////////메뉴바//////////////////////////////////  -->
<div class="container-fluid mainborder">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<div class="col-sm-2 sidebar">
			<div class="row" id="label">FITMOION</div>
			<div class="row" id="menubar">
				<div class="row menuheader">매출관리</div>
				<div class="row"><a class="menuitem" href="#">전체매출</a></div>
				<div class="row"><a class="menuitem" href="#">직원별매출</a></div>
				<div class="row"><a class="menuitem" href="#">종목별매출</a></div>
				<div class="row"><a class="menuitem" href="#">고객별매출</a></div>
				<div class="row menuheader" style="border-top:1px solid #dddae0">헬스장관리</div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./Program.jsp')">프로그램</a></div>
				<div class="row"><a class="menuitem" href="#">프로모션</a></div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./Equipment.jsp')">기구관리</a></div><!-- 민지 -->
				<div class="row"><a class="menuitem" href="javascript:ajax('./Goods.jsp')">비품관리</a></div>
				<div class="row menuheader" style="border-top:1px solid #dddae0">직원관리</div>
				<div class="row"><a class="menuitem" href="#">직원등록/목록</a></div>
				<div class="row"><a class="menuitem" href="#">근무일지</a></div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./StaffSalary.jsp')">직원급여</a></div>
				<div class="row menuheader" style="border-top:1px solid #dddae0">회원관리</div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./Member.jsp')">회원등록/목록</a></div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./MemberShip.jsp')">구매등록</a></div>
			</div>
		</div>
		<div class="col-sm-10">
<!-- /////////////////////////////// [[화면전환 시작]] ////////////////////////////////////////////////////// -->
			<div id="changedisplay">
			</div>
<!-- /////////////////////////////// [[화면전환 끝]] ////////////////////////////////////////////////////// -->
		</div>
     	<div class="col-sm-2">&nbsp;</div>
	</div>
</div>
<div class="col-sm-2"></div>	
<div class="row">
	   <%@ include file="./footer.jsp" %>
</div>
</body>
</html>