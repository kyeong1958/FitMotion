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
