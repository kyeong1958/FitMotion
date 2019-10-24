<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 매출내역 ajax ]] ======================================== -->
<%
	Map<String,Object> salesStatement = (Map<String,Object>)request.getAttribute("salesStatement");
	Map<String,Object> up = (Map<String,Object>)salesStatement.get("up");
	int refundcash = Integer.parseInt(up.get("refundcash").toString())+Integer.parseInt(up.get("refundtrans").toString());
	int refundcashcnt = Integer.parseInt(up.get("refundcashcnt").toString())+Integer.parseInt(up.get("refundtranscnt").toString());
	int payMethodcnt = Integer.parseInt(up.get("cardsalescnt").toString())+Integer.parseInt(up.get("cashsalescnt").toString())
					+Integer.parseInt(up.get("transsalescnt").toString())+refundcashcnt;
	int payMethodsales = Integer.parseInt(up.get("cardsales").toString())+Integer.parseInt(up.get("cashsales").toString())
					+Integer.parseInt(up.get("transsales").toString()) -refundcash;
	int paysortcnt = Integer.parseInt(up.get("newsalescnt").toString())+Integer.parseInt(up.get("refundcardcnt").toString())
				+Integer.parseInt(up.get("refundcardcnt").toString())+refundcashcnt;
	int paysort = Integer.parseInt(up.get("newsales").toString())+Integer.parseInt(up.get("refundcard").toString())
				+Integer.parseInt(up.get("refundcard").toString())-refundcash; 
%>
	 <div class="section" style="padding-top:0px !important;">
			<div class="row">
				<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
					<div class="col-lg-4 sales-calculation">
						<div>
							<div class="sales-calculation-title">총 이용권상품 매출</div>
							<p class="sales-calculation-sum" style="padding-top: 16px"><%=up.get("netprofit")  %>원</p>
						</div>
					</div>
					<div class="col-lg-4 sales-calculation">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 이용권상품 결제금액</div>
							<p class="sales-calculation-sum" style="padding-top: 16px">&nbsp;&nbsp;&nbsp;<%=up.get("sales")  %>원</p>
						</div>
					</div>
					<div class="col-lg-4">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 이용권상품 환불
															 <br>&nbsp;&nbsp;&nbsp;(현금/이체)</div>
							<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;<%=up.get("refund")  %>원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6" style="padding-top: 5%;text-align:right;">
					<div class="sales-calculation-standby title">
						<span>미수 잔액 </span>
					</div>
					<div class="sales-calculation-standby number">
						<span style="display:inline-block">건</span>
					</div>
					<div class="sales-calculation-standby sum">
						<span><%=up.get("receivable")  %>원</span>
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
								<td class="sales-calculation-table-header" colspan="3">매출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">신용카드
									<p style="display: inline-block;float: right;"><%= up.get("cardsalescnt")  %>건</p>
								</td>
								<td class="sales-calculation-table-column2"><%=up.get("cardsales")  %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">이체
									<p style="display: inline-block;float: right;"><%=up.get("transsalescnt")%>건</p>
								</td>
								<td class="sales-calculation-table-column2"><%= up.get("transsales") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">현금
									<p style="display: inline-block;float: right;"><%=up.get("cashsalescnt")  %>건</p>
								</td>
								<td class="sales-calculation-table-column2"><%=up.get("cashsales")  %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">이체/현금 환불
									<p style="display: inline-block;float: right;"><%=refundcashcnt %>건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;"><%=refundcash %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계
									<p style="display: inline-block;float: right;"><%=payMethodcnt %>건</p>
								</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%=payMethodsales %>원</td>
							</tr>
						</tbody>
					</table>
				</div>
<!-- ================================= [[ table right ]] =================================================== -->
 			<div class="col-lg-6" style="padding:0;padding-left: 20px;">
					<h3 class="sales-calculation-table-title">매출분류</h3>
					<table class="sales-calculation-table">
						<thead>
							<tr>
								<td class="sales-calculation-table-header" colspan="3">매출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">신규결제
									<p style="display: inline-block;float: right;"><%=up.get("newsalescnt") %>건</p>
								</td>
								<td class="sales-calculation-table-column2"><%=up.get("newsales") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">재 결제
									<p style="display: inline-block;float: right;"><%=up.get("resalescnt") %>건</p>
								</td>
								<td class="sales-calculation-table-column2"><%=up.get("resales") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">카드취소
									<p style="display: inline-block;float: right;"><%=up.get("refundcardcnt") %>건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;"><%=up.get("refundcard") %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">이체/현금 환불
									<p style="display: inline-block;float: right;"><%=refundcashcnt%>건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;"><%=refundcash%>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계
									<p style="display: inline-block;float: right;"><%=paysortcnt %>건</p>
								</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%=paysort %>원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div> 