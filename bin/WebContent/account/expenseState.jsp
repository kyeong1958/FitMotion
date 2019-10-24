<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 지출내역 ajax ]] ======================================== -->
<%	
	Map<String,Object> rMap = new HashMap<>();
	if(request.getAttribute("expenseStatement") != null){
		rMap = (Map<String,Object>)request.getAttribute("expenseStatement");
	}
	Map<String,Object> up = (Map<String,Object>)rMap.get("up");
	int paymethodTotal = Integer.parseInt(up.get("cardexp").toString())+Integer.parseInt(up.get("transexp").toString())+Integer.parseInt(up.get("cashexp").toString());
	int sortTotal = Integer.parseInt(up.get("person").toString())+Integer.parseInt(up.get("etc").toString())+Integer.parseInt(up.get("purchase").toString());
	    	
%>
    
	<div class="section">
			<div class="row">
				<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
					<div>
						<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 지출 금액
						<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;<%= up.get("expend") %>원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6" style="padding-top: 5%;text-align:right;">
					<div class="sales-calculation-standby title">
						<span>미지급 잔액 </span>
					</div>
					<div class="sales-calculation-standby number">
						<span style="display:inline-block"><%= up.get("payablecnt") %>건</span>
					</div>
					<div class="sales-calculation-standby sum">
						<span><%= up.get("payable") %>원</span>
					</div>
				</div>
			</div>
<!-- ================================= [[ table left ]] =================================================== -->
			<div class="row">
				<div class="col-lg-6" style="padding:0;padding-right: 20px;">
					<h3 class="sales-calculation-table-title">결제수단</h3>
					<table class="sales-calculation-table">
						<thead>
							<tr>
								<td class="sales-calculation-table-header" colspan="3">지출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">신용카드</td>
								<td class="sales-calculation-table-column2"><%= up.get("cardexp") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">이체</td>
								<td class="sales-calculation-table-column2"><%= up.get("transexp") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">현금</td>
								<td class="sales-calculation-table-column2"><%= up.get("cashexp") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%= paymethodTotal %>원</td>
							</tr>
						</tbody>
					</table>
				</div>
<!-- ================================= [[ table right ]] =================================================== -->
				<div class="col-lg-6" style="padding:0;padding-left: 20px;">
					<h3 class="sales-calculation-table-title">지출분류</h3>
					<table class="sales-calculation-table">
						<thead>
							<tr>
								<td class="sales-calculation-table-header" colspan="3">지출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">인건비</td>
								<td class="sales-calculation-table-column2"><%= up.get("person") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">기타지출</td>
								<td class="sales-calculation-table-column2"><%= up.get("etc") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">매입</td>
								<td class="sales-calculation-table-column2"><%= up.get("purchase") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%=sortTotal %>원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>