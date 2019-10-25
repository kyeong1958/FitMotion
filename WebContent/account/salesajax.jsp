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

	String salesTable = (String)salesStatement.get("table");


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
						<span style="display:inline-block"><%=up.get("receivablecnt")  %>건</span>
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
<!-- ================================= [[ table ]] =================================================== -->
		
		<script>
		//(페이지네이션) 한화면에서 보여줄 컬럼숫자를 담는 변수
		var pageNumm = 10;
	    
		jb('#pagination1').pagination({
	        dataSource: <%=salesTable%>,
	        pageSize:10,
	        align:"center",
	        callback: function(data, pagination) {
	            // template method of yourself
				var datahtml ='	<table id="salestable" class="table table-bordered  table-striped"><thead>'
	            	datahtml +=	'<tr><th class="tableheader" data-field="RNO">번호</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_DEP_DATE">결제일시</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_DEP_MEM">구매회원</th>'
            		datahtml +=	'	<th class="tableheader" data-field="MEM_HP">HP</th>'
           			datahtml +=	'	<th class="tableheader" data-field="GS_PAY_METHOD">결제수단</th>'
       				datahtml +=	'	<th class="tableheader" data-field="TICKET_PRICE">정가</th>'
    				datahtml += '	<th class="tableheader" data-field="SALE">할인금액</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="TICP_PAYMENT">결제금액</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_ACCOUNT_DUE">미수금</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_REF_AMOUNT">환불금액</th></tr></thead><tbody>'
	            jb.each(data,function(index,item){
		            	console.log(data.length);
			        		datahtml += '<tr>';
			            	datahtml += '<td style="align:center">' + item.RNO+  '</td>';
			            	datahtml += '<td style="align:center">' + item.GS_DEP_DATE + '</td>';
			            	datahtml += '<td style="align:center">' + item.GS_DEP_MEM + '</td>';
			            	datahtml += '<td style="align:center">' + item.MEM_HP +		 '</td>';
			            	datahtml += '<td style="align:center">' + item.GS_PAY_METHOD + '</td>';
			            	datahtml += '<td style="align:center">' + item.TICKET_PRICE + '</td>';
			            	datahtml += '<td style="align:center">' + item.SALE + '</td>';
			            	datahtml += '<td style="align:center">' + item.TICP_PAYMENT + '</td>';
			            	datahtml += '<td style="align:center">' + item.GS_ACCOUNT_DUE + '</td>';
			            	datahtml += '<td style="align:center">' + item.GS_REF_AMOUNT + '</td>';
			             	datahtml += '</tr>';    	
		         });
	            datahtml += '</tbody></table>';
	            jb("#data-container").html(datahtml);
	        }
	    });
</script>  

		<div class="section">
			<div class="row">
				<div id="data-container"></div>
				<div id="pagination1"></div>
			</div>
		</div>