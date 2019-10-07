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
	//데이트박스 
	//datebox 날짜형식 YYYY-MM-DD로 설정
/* 	 $.fn.datebox.defaults.formatter = function(date){
	    var y = date.getFullYear();
	    var m = date.getMonth()+1;
	    var d = date.getDate();
	    return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
	} */
	//datebox parser설정
/* 	 $.fn.datebox.defaults.parser = function(s){
	    var t = Date.parse(s);
	    if (!isNaN(t)){
	       return new Date(t);
	    } else {
	       return new Date();
	    }
	}  */
	//datebox 한글화
/*  	$.fn.datebox.defaults.currentText = '오늘'
	$.fn.datebox.defaults.closeText = '닫기'
	$.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
	$.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] */
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
.menuheader{
	font-size: 180%;
	margin-top:6%;
    margin-bottom: 3%;
    padding-left:10%;
}
.menuitem{
	font-size: 130%;
	padding-left:20%;
    margin-bottom: 3%;
    color:black;
}
.sidebar{
	border:2px solid;
}
</style>
<body>
	<!-- 커스텀 스크립트 -->
<!-- 	<script type="text/javascript">
	$(document).ready(function(){
	   //선택가능날짜 범위 설정
	   $('#datebox1').datebox().datebox('calendar').calendar({
	       validator: function(date){
	           var now = new Date();
	           var d1 = new Date(now.getFullYear()-1, now.getMonth(), now.getDate());
	           var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	           return d1<=date && date<=d2;
	       }
	   });
	   //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
	   $('#datebox1').datebox({
	      onSelect: function(date){
	         firstDate = date;
	         $('#datebox2').datebox().datebox('calendar').calendar({
	               validator: function(date){
	                   var now = new Date();
	                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
	                   var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	                   return d1<=date && date<=d2;
	               }
	           });
	      }
	   });
	});
</script> -->

<!--////////////////////////////////////nav//////////////////////////////////  -->
   <%@ include file="./nav.jsp" %>
<!--////////////////////////////////////nav//////////////////////////////////  -->
<!--////////////////////////////////////메뉴바//////////////////////////////////  -->
<div class="container-fluid">
	<div class="col-sm-2 col-lg-2"></div>
	<div class="col-sm-8 col-lg-8">
		<div class="col-sm-2 col-lg-2 sidebar">
			<div class="row" id="label">FITMOION</div>
			<div class="row" id="menubar">
				<div class="row menuheader">매출관리</div>
				<div class="row"><a class="menuitem" href="#">전체매출</a></div>
				<div class="row"><a class="menuitem" href="#">직원별매출</a></div>
				<div class="row"><a class="menuitem" href="#">종목별매출</a></div>
				<div class="row"><a class="menuitem" href="#">고객별매출</a></div>
				<div class="row menuheader" style="border-top:1px solid #dddae0">헬스장관리</div>
				<div class="row"><a class="menuitem" href="#">프로그램</a></div>
				<div class="row"><a class="menuitem" href="#">프로모션</a></div>
				<div class="row"><a class="menuitem" href="javascript:ajax('./Equipment.jsp')">기구관리</a></div>
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
		<div class="col-sm-10 col-lg-10">
<!-- /////////////////////////////// [[화면전환 시작]] ////////////////////////////////////////////////////// -->
		<div id="changedisplay">
		</div>
<!-- /////////////////////////////// [[화면전환 끝]] ////////////////////////////////////////////////////// -->

		
		</div>
	</div>



</div>
<div class="col-sm-2"></div>	
<div class="row">
	   <%@ include file="./footer.jsp" %>
</div>
</body>
</html>