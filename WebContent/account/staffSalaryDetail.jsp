<%@page import="java.text.DecimalFormat"%>
<%@page import="sun.security.jca.GetInstance"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- ============================ [[ 회계관리 ]] ======================================== -->
    <!-- ============================ [[ 직원정산상세 ]] ======================================== -->
<%-- <%@ include file="/common/JEasyUICommon.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffSalaryDetail.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<%
	String login_id = null;
	if(session.getAttribute("login_id") != null){
		login_id = session.getAttribute("login_id").toString();
	}
	Calendar cal = Calendar.getInstance();
	DecimalFormat df = new DecimalFormat("00");
	String y = df.format(cal.get(Calendar.YEAR));
	int year = Integer.parseInt(y);
	String m = df.format(cal.get(Calendar.MONTH));
	int month = Integer.parseInt(m);
%>
<script type="text/javascript">
/* 날짜이동 */
	function prev(year,month){
		$.ajax({
			url:"/staff/staffSalaryDetail.fm?login_id=<%=login_id%>&year="+year+"&month="+month+"&move=prev"
		   ,success:function(data){
			   $("#ajaxinsert").html(data);
		   }
		});
	}
	function next(year,month){
		$.ajax({
			url:"/staff/staffSalaryDetail.fm?login_id=<%=login_id%>&year="+year+"&month="+month+"&move=next"
		   ,success:function(data){
			   $("#ajaxinsert").html(data);
		   }
		});
	}
/* 날짜이동 */
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:'/staff/staffSalaryDetail.fm?login_id=<%=login_id%>&year=<%=year%>&month=<%=month+1%>'
			,success:function(data){
				$("#ajaxinsert").html(data);
			}
		});
	});
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회계 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원별 정산</a>
		</div>
<!-- ================================= [[ 홈^ ]] =================================================== -->
			<div id="ajaxinsert">
<!-- <!-- ================================= [[ 테이블  top ]] =================================================== -->
			</div>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
