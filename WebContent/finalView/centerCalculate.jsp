<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 센터정산 ]] ======================================== -->
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/centerCalculate.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<script>
	function center(btn){
		$(".tabBtn").css("border-bottom","1px solid #BABBC2");
		$(btn).css("border-bottom","1px solid white");
	}
	/* 페이지이동  */
	function tabmove(url){
			$.ajax({
				method:'get'
			   ,url:url
			   ,success:function(data){
				   $("#tabmove").html(data);
			   }
			});
		}
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회계 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">센터 정산</a>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
		<div class="tab-area">
			<div class="tab-session">
				<button class="tabBtn" id="btn_center" onClick="center('#btn_center')">센터정산</button>
				<button class="tabBtn" id="btn_payment_method" onClick="center('#btn_payment_method'),tabmove('./paymentMethod.jsp')">결제수단 별 조회</button>
				<button class="tabBtn" id="btn_payment_sort" onClick="center('#btn_payment_sort'),tabmove('./paymentSort.jsp')">결제분류 별 조회</button>
				<button class="tabBtn" id="btn_center" onClick="center('#btn_center')">이용권상품 별 조회</button>
				<button class="tabBtn" id="btn_general" onClick="center('#btn_general'),tabmove('./generalProduct.jsp')">일반상품 별 조회</button>
				<button class="tabBtn" id="btn_expense_sort" onClick="center('#btn_expense_sort'),tabmove('./expenseSort.jsp')">지출 별 조회</button>
			</div>
		</div> 
		<div id="tabmove">
		<div class="section">
			<div class="row">
				<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
					<div class="col-lg-3 sales-calculation">
						<div>
							<div class="center-calculation-year"><%=year %>년</div>
							<div>
								<span class="center-calculation-month-pre"><img src="../images/triangle_left_blue.png"></span>
								<span class="center-calculation-month"><%=month+1 %>월</span>
								<span class="center-calculation-month-next"><img src="../images/triangle_right_blue.png"></span>
							</div>
						</div>
					</div>
					<div class="col-lg-3 sales-calculation">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;순이익</div>
							<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;000,000,000원</p>
						</div>
					</div>
					<div class="col-lg-3 sales-calculation">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;매출</div>
							<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;000,000,000원</p>
						</div>
					</div>
					<div class="col-lg-3">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;지출</div>
							<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;000,000원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6" style="padding-top: 35px;text-align:right;">
					<div>
						<div class="sales-calculation-standby title">
							<span>미수 잔액 </span>
						</div>
						<div class="sales-calculation-standby number">
							<span style="display:inline-block">0건</span>
						</div>
						<div class="sales-calculation-standby sum">
							<span>0원</span>
						</div>
					</div>
					<div>
						<div class="sales-calculation-standby title">
							<span>미수 잔액 </span>
						</div>
						<div class="sales-calculation-standby number">
							<span style="display:inline-block">0건</span>
						</div>
						<div class="sales-calculation-standby sum">
							<span>0원</span>
						</div>
					</div>
				</div>
			</div>
<!-- ================================= [[ table left ]] =================================================== -->
			<div class="row">
				<div class="col-lg-6" style="padding:0;padding-right: 20px;">
					<h3 class="sales-calculation-table-title">매출</h3>
					<div class="col-lg-6" style="padding-left: 0px;">
						<table class="sales-calculation-table">
							<thead>
								<tr>
									<td class="sales-calculation-table-header" colspan="3">결제수단</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="sales-calculation-table-column1">신용카드</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">이체</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">현금</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">환불</td>
									<td class="sales-calculation-table-column2" style="color: #FF5722 !important;">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
									<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
								</tr>
							</tbody>
						</table>
					</div>
	<!-- ================================= [[ table left2 ]] =================================================== -->
					<div class="col-lg-6" style="padding:0;padding-left: 20px;">
						<table class="sales-calculation-table">
							<thead>
								<tr>
									<td class="sales-calculation-table-header" colspan="3">상품구분</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="sales-calculation-table-column1">이용권 상품(신규)</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">이용권 상품(재등록)</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
									<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
<!-- ================================= [[ table right1 ]] =================================================== -->
				<div class="col-lg-6" style="padding:0;padding-right: 20px;">
					<h3 class="sales-calculation-table-title">지출</h3>
					<div class="col-lg-6" style="padding-left: 0px;">
						<table class="sales-calculation-table">
							<thead>
								<tr>
									<td class="sales-calculation-table-header2" colspan="3">결제수단</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="sales-calculation-table-column1">신용카드</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">이체</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">현금</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
									<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
								</tr>
							</tbody>
						</table>
					</div>
<!-- ================================= [[ table right2 ]] =================================================== -->
					<div class="col-lg-6" style="padding:0;padding-left: 20px;">
						<table class="sales-calculation-table">
							<thead>
								<tr>
									<td class="sales-calculation-table-header2" colspan="3">지출구분</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="sales-calculation-table-column1">인건비</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">기타지출</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1">매입</td>
									<td class="sales-calculation-table-column2">0원</td>
								</tr>
								<tr>
									<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
									<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		</div>



<!-- ================================= [[ 화면전환 ]] =================================================== -->
