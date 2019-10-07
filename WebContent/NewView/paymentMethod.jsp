<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 센터정산 ]] ======================================== -->
	<!-- ============================ [[ 결제수단 별 조회 ]] ======================================== -->
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제수단 별 조회</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/paymentMethod.css">
<style type="text/css">

</style>
</head>
<script type="text/javascript">

	function sidemenu(id){
		alert(this.val());
		$(id).css("background-color","white");
		$(id+"> a").css("color","#42485A");
		$(".sidemenu")
	}
	function menu(menu){/* menu=# */
		alert("menu click");
		if('.sales' == menu){
			$('.sales').show();
			$('.member').hide();
			$('.analysis').hide();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","white");
			$(".menutitle-sales > span").css("color","#42485A");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.member' == menu){
			$('.sales').hide();
			$('.member').show();
			$('.analysis').hide();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","white");
			$(".menutitle-member > span").css("color","#42485A");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.analysis' == menu){
			$('.sales').hide();
			$('.member').hide();
			$('.analysis').show();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","white");
			$(".menutitle-analysis > span").css("color","#42485A");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.service' == menu){
			$('.sales').hide();
			$('.member').hide();
			$('.analysis').hide();
			$('.service').show();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","white");
			$(".menutitle-service > span").css("color","#42485A");
		}
	}
</script>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();
	});
</script>
<div class="container-fluid">
	<div class="row nav">
		<div class="col-sm-2"style="border:1px soild"></div>
	</div>
	<div class="col-lg-1" id="sidebar">

		<div class="row sidemenutitle" id="salesmanagement">매출관리</div>
		<div class="row sales">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
		</div>
		<div class="row sidemenutitle" id="salesmanagement">회원관리</div>
		<div class="row member">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
		</div>
		<div class="row sidemenutitle" id="analysis">통계분석</div>
		<div class="row analysis">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
		</div>
		<div class="row sidemenutitle titleservice" id="analysis">고객센터</div>
		<div class="row service">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
		</div>
	</div>
	<div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<a class="bar_menu" href="#">예약 내역</a>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
		<div class="tab-area">
			<div class="tab-session">
				<button class="tabBtn">센터정산</button>
				<button class="tabBtn">결제수단 별 조회</button>
				<button class="tabBtn">결제분류 별 조회</button>
				<button class="tabBtn">이용권상품 별 조회</button>
				<button class="tabBtn">일반상품 별 조회</button>
				<button class="tabBtn">지출 별 조회</button>
			</div>
		</div> 
		<div id="paymentMethod_ajax">
			<div class="section">
				<div class="row">
					<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
						<div class="col-lg-3 sales-calculation" style="margin-left: -35px;">
							<div>
								<div class="center-calculation-year"><%=year %>년</div>
								<div>
									<span class="center-calculation-month-pre"><img src="../images/triangle_left_blue.png" onClick="ajax()"></span>
									<span class="center-calculation-month"><%=month+1 %>월</span>
									<span class="center-calculation-month-next"><img src="../images/triangle_right_blue.png"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
		<!-- ================================= [[ 테이블 ]] =================================================== -->
				<div class="row">
					<table id="reservation-table" class="table table-bordered  table-striped" style="margin-top: 30px;">
						<thead>
							<tr>
								<th class="tableheader">거래일자</th>
								<th class="tableheader">매출금액</th>
								<th class="tableheader">카드 매출금액</th>
								<th class="tableheader">현금 매출금액</th>
								<th class="tableheader">이체 매출금액</th>
								<th class="tableheader">현금 환불금액</th>
								<th class="tableheader">이체 환불금액</th>
								<th class="tableheader">미수금액</th>
								<th class="tableheader">지출 총 금액</th>
								<th class="tableheader">카드 지출금액</th>
								<th class="tableheader">현금 지출금액</th>
								<th class="tableheader">이체 지출금액</th>
								<th class="tableheader">미지급 금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align:center">1995-09-24</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">-000,000원</td>
								<td class="table-body blue">-000,000원</td>
								<td class="table-body">0원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body">0원</td>
							</tr>
							<tr>
								<td style="text-align:center">1995-09-24</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">000,000원</td>
								<td class="table-body blue">-000,000원</td>
								<td class="table-body blue">-000,000원</td>
								<td class="table-body">0원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body red">000,000,000원</td>
								<td class="table-body">0원</td>
							</tr>
						</tbody>
					</table>
				</div>
		<!-- ================================= [[ 화면전환 ]] =================================================== -->
			</div>
		</div>
	</div>
</div>
</body>
</html>