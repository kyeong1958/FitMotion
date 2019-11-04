<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String,Object> salesStatement = (Map<String,Object>)request.getAttribute("salesStatement");
	String salesTable = (String)salesStatement.get("table");
%>
<!-- ================================= [[table test]] ====================================== -->
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
	            	datahtml +=	'<tr><th class="tableheader" data-field="GS_DEP_NUM">결제번호</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_DEP_DATE">결제일시</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_DEP_MEM">구매회원</th>'
            		datahtml +=	'	<th class="tableheader" data-field="MEM_HP">HP</th>'
           			datahtml +=	'	<th class="tableheader" data-field="GS_PAY_METHOD">결제수단</th>'
       				datahtml +=	'	<th class="tableheader" data-field="TICKET_PRICE">정가</th>'
    				datahtml += '	<th class="tableheader" data-field="SALES">할인금액</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="TICP_PAYMENT">결제금액</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_ACCOUNT_DUE">미수금</th>'
	            	datahtml +=	'	<th class="tableheader" data-field="GS_REF_AMOUNT">환불금액</th></tr></thead><tbody>'
	            jb.each(data,function(index,item){
		           // for (var i = 0; i < data.length; i++) {	 
		            	console.log(data.length);
			        		datahtml += '<tr>';
			            	datahtml += '<td>' + item.GS_DEP_NUM +  '</td>';
			            	datahtml += '<td>' + item.GS_DEP_DATE + '</td>';
			            	datahtml += '<td>' + item.GS_DEP_MEM + '</td>';
			            	datahtml += '<td>' + item.MEM_HP +		 '</td>';
			            	datahtml += '<td>' + item.GS_PAY_METHOD + '</td>';
			            	datahtml += '<td>' + item.TICKET_PRICE + '</td>';
			            	datahtml += '<td>' + item.SALES + '</td>';
			            	datahtml += '<td>' + item.TICP_PAYMENT + '</td>';
			            	datahtml += '<td>' + item.GS_ACCOUNT_DUE + '</td>';
			            	datahtml += '<td>' + item.GS_REF_AMOUNT + '</td>';
			             	datahtml += '</tr>';    	
			        // } 
		         });
	            datahtml += '</tbody></table>';
	            jb("#data-container").html(datahtml);
	        }
	    });
</script>  

<div id="data-container"></div>
<div id="pagination1"></div>

<!-- 	<div class="row">
		<div class="reservation_middle" id="reservationList_total">
			<span class="middle">
				<label id="reservationlabel">페이지 당</label>
					<select name="pagetotal" id="pagetotal">
						<option>10</option>
						<option>25</option>
						<option>50</option>
						<option>100</option>
					</select>
				<label id="reservationlabel">개 표시</label>
			</span>
			<span class="middle">
				<label id="reservationlabel">검색:</label>
				<input type="search" class="reservation_searchbox">
			</span>
		</div>
	</div>
		<div class="row">
		<table id="salestable" class="table table-bordered  table-striped">
			<tr>
				<th class="tableheader" data-field="GS_DEP_NUM">결제번호</th>
				<th class="tableheader" data-field="GS_DEP_DATE">결제일시</th>
				<th class="tableheader" data-field="GS_DEP_MEM">구매회원</th>
				<th class="tableheader" data-field="MEM_HP">HP</th>
				<th class="tableheader" data-field="GS_PAY_METHOD">결제수단</th>
				<th class="tableheader" data-field="TICKET_PRICE">정가</th>
				<th class="tableheader" data-field="SALES">할인금액</th>
				<th class="tableheader" data-field="TICP_PAYMENT">결제금액</th>
				<th class="tableheader" data-field="GS_ACCOUNT_DUE">미수금</th>
				<th class="tableheader" data-field="GS_REF_AMOUNT">환불금액</th>
			</tr>
		</table>
	</div> -->
<!-- ================================= [[ TABLE BOTTOM ]] =================================================== -->
	<!-- <div class="row pagination">
		<div class="pagination_top">
			전체 11개 항목 중 1 부터 10 까지 표시
		</div>
	</div> -->