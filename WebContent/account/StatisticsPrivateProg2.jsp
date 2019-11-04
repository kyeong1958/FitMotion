<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!-- 여기가 easyui 관련
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css"> 
 <script type="text/javascript" src="../js/jquery.easyui.min.js"></script> 
<script type="text/javascript" src="../js/commons.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>  -->

<!--   여기가 pagination.js 관련
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>    
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>  -->

<%--  <%@ include file="/common/JEasyUICommon.jsp"%>     --%>

<div id="mainboard2">

<form id="form">

<%
	int size = 0;
	Map<String, List<Map<String, Object>>> privateProg = (Map<String, List<Map<String, Object>>>) request.getAttribute("privateProg");

	if (privateProg != null && privateProg.size() > 0) {
		size = privateProg.size();
	}
	String startDate = "";
	   String endDate ="";
	   if(startDate == ""){
		   startDate = "20190801";
	   }
	   if(endDate == ""){
		   endDate = "20191101";
	   }
	   
	   if(request.getAttribute("startDate") != null && request.getAttribute("endDate") != null){   
		   startDate = (String)request.getAttribute("startDate");
		   endDate = (String)request.getAttribute("endDate");
	   }
%>


<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->

<c:set var="private_size" value="<%=size%>" />
<c:set var="privatep" value="<%=privateProg%>" />
<c:set var="startDate" value="<%=startDate %>" />
<c:set var="endDate" value="<%=endDate %>" />
<!-- <style type="text/css">
body {
	padding: 0%;
}
</style> -->

<script type="text/javascript">
	$(document).ready(function(){
		 $.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190101&endDate=20191105&pageNumm=10',
			success : function(data) {
				$("#mainboard2").html(data);
			}
		}); 
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();

	   $('.dataTables_length').addClass('bs-select');
	 
	
	});
</script>


	<div class="bar_area" id="SS-bar">
		<div class="homefl">
			<a href="/home/" id="home">홈</a> 
			<a id="management">리포트와 통계</a> 
			<a>회원 통계</a>
		</div>
		<!-- 메뉴바 누르는 부분 시작  -->
		<div class="homenav fr">
			<div class="homenav fr">
				<ul>
					<li><a class="n_04" href="javascript:ajax('../account/StatisticsSales2.jsp')">매출통계</a></li>
					<li><a class="n_05" href="javascript:ajax('../account/StatisticsMember2.jsp')">회원통계</a></li>	
					<li><a class="n_01 active" href="javascript:ajax('../account/StatisticsPrivateProg2.jsp')">개인레슨 통계</a></li>
					<li><a class="n_03"	href="javascript:ajax('../account/StatisticsPublicProg2.jsp')">그룹수업 통계</a></li>
				</ul>
			</div>
		</div>
	
		<!-- 메뉴바 누르는 부분 끝 -->
	</div>
<!-- ================================= [[ 홈 ]] =================================================== -->

	<div class="tab-area">
		<div id="period_btns">
			<button class="btn blue small">당 해</button>
			<button class="btn blue small">당 분기</button>
			<button class="btn blue small">당 월</button>
			<span style="margin-left: 1%"> 
			<input class="easyui-datebox" id="datebox11" /> 
			<span>~</span>
			<input class="easyui-datebox" id="datebox22" />
				<button class="btn blue small">조회</button>
			</span>
		</div>
	</div>
</form>
</div>

<!-- //////////////////////////////////////////////////////// -->



<!-- ///////////////////////////////////////////////////////////////// -->

