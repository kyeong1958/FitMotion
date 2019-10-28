<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 지출내역 ajax ]] ======================================== -->
<%	
	DecimalFormat df = new DecimalFormat("###,###");
	Map<String,Object> rMap = new HashMap<>();
	if(request.getAttribute("expenseStatement") != null){
		rMap = (Map<String,Object>)request.getAttribute("expenseStatement");
	}
	Map<String,Object> up = (Map<String,Object>)rMap.get("up");
	String geTableList = (String)rMap.get("table");
	int paymethodTotal = Integer.parseInt(up.get("cardexp").toString())+Integer.parseInt(up.get("transexp").toString())+Integer.parseInt(up.get("cashexp").toString());
	int sortTotal = Integer.parseInt(up.get("person").toString())+Integer.parseInt(up.get("etc").toString())+Integer.parseInt(up.get("purchase").toString());
	    	
%>
    
	<div class="section">
			<div class="row">
				<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
					<div>
						<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 지출 금액
						<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;<%= df.format(up.get("expend")) %>원</p>
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
						<span><%= df.format(up.get("payable")) %>원</span>
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
								<td class="sales-calculation-table-column2"><%= df.format(up.get("cardexp")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">이체</td>
								<td class="sales-calculation-table-column2"><%= df.format(up.get("transexp")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">현금</td>
								<td class="sales-calculation-table-column2"><%= df.format(up.get("cashexp")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%= df.format(paymethodTotal) %>원</td>
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
								<td class="sales-calculation-table-column2"><%= df.format(up.get("person")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">기타지출</td>
								<td class="sales-calculation-table-column2"><%= df.format(up.get("etc")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">매입</td>
								<td class="sales-calculation-table-column2"><%= df.format(up.get("purchase")) %>원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;"><%=df.format(sortTotal) %>원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
<!-- ================================= [[ table right ]] =================================================== -->
		
		<script>
		//(페이지네이션) 한화면에서 보여줄 컬럼숫자를 담는 변수
		var pageNumm = 10;
	    
		jb('#pagination1').pagination({
	        dataSource: <%=geTableList%>,
	        pageSize:10,
	        align:"center",
	        callback: function(data, pagination) {
	            // template method of yourself
				var datahtml ='	<table id="salestable" class="table table-bordered  table-striped"><thead>'
	            	datahtml +=	'<tr><th class="tableheader" data-field="RNO">번호</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GE_DATE">지출일시</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="EXB_KINDS">지출분류</th>'
            		datahtml +=	'	<th class="tableheader" data-field="GE_STORY">지출내역</th>'
           			datahtml +=	'	<th class="tableheader" data-field="GE_COUNT">수량</th>'
       				datahtml +=	'	<th class="tableheader" data-field="GE_PRICE">지출금액</th>'
    				datahtml += '	<th class="tableheader" data-field="GE_REF_AMOUNT">미지급금</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GE_PAY_METHOD">지출수단</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GE_STATE">결제상태</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GE_BILLER">결제자</th>'
	            jb.each(data,function(index,item){
		            	console.log(data.length);
			        		datahtml += '<tr>';
			            	datahtml += '<td style="align:center">' + item.RNO+  '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_DATE + '</td>';
			            	datahtml += '<td style="align:center">' + item.EXB_KINDS + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_STORY + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_COUNT + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_PRICE + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_REF_AMOUNT + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_PAY_METHOD + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_STATE + '</td>';
			            	datahtml += '<td style="align:center">' + item.GE_BILLER + '</td>';
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





