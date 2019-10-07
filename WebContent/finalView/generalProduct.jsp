<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 센터정산 ]] ======================================== -->
	<!-- ============================ [[ 일반상품 별 조회 ]] ======================================== -->
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/paymentMethod.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
		<!-- ================================= [[ 화면전환 ]] =================================================== -->
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
								<th class="tableheader" style="width: 25%">일반 상품명</th>
								<th class="tableheader" style="width: 25%">매출금액</th>
								<th class="tableheader" style="width: 25%">비율</th>
								<th class="tableheader" style="width: 25%">이번 달 결제건</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="gptable-body">헬스</td>
								<td class="gptable-body">000,000원</td>
								<td class="gptable-body">30%</td>
								<td class="gptable-body">170건</td>
							</tr>
							<tr>
								<td class="gptable-body">요가</td>
								<td class="gptable-body">000,000원</td>
								<td class="gptable-body">32%</td>
								<td class="gptable-body">180건</td>
							</tr>
							<tr>
								<td class="gptable-body">스피닝</td>
								<td class="gptable-body">000,000원</td>
								<td class="gptable-body">10%</td>
								<td class="gptable-body">30건</td>
							</tr>
							<tr>
								<td class="gptable-body">개인PT</td>
								<td class="gptable-body">000,000원</td>
								<td class="gptable-body">10%</td>
								<td class="gptable-body">30건</td>
							</tr>
							<tr>
								<td class="gptable-body">그룹PT</td>
								<td class="gptable-body">000,000원</td>
								<td class="gptable-body">10%</td>
								<td class="gptable-body">30건</td>
							</tr>
						</tbody>
					</table>
				</div>
		<!-- ================================= [[ 화면전환 ]] =================================================== -->
			</div>
