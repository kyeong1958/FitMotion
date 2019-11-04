<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String,Object> reservation = (Map<String,Object>)request.getAttribute("reservation");
	int pageSize = 15;
	if(reservation.get("pageSize") != null){
		pageSize = Integer.parseInt(reservation.get("pageSize").toString());		
	}
	String Table = reservation.get("reservationTable").toString();
%>			
		<script>
		//(페이지네이션) 한화면에서 보여줄 컬럼숫자를 담는 변수
		var pageNumm = 10;
	    
		jb('#pagination1').pagination({
	        dataSource: <%=Table%>,
	        pageSize:<%=pageSize%>,
	        align:"center",
	        callback: function(data, pagination) {
				var datahtml ='<table id="reservation-table" class="table table-bordered  table-striped" style="text-align: center;"><thead>'
           		/* 	datahtml +=	'<tr><th class="tableheader">No.</th>         ' */
	            	datahtml +=	'<th class="tableheader">예약날짜</th>          '
	            	datahtml +=	'<th class="tableheader">예약시간</th>          '
	            	datahtml +=	'<th class="tableheader">예약회원</th>          '
            		datahtml +=	'<th class="tableheader">전화번호</th>          '
           			datahtml +=	'<th class="tableheader">강사</th>  '
       				datahtml +=	'<th class="tableheader">프로그램명</th>          '
	            	datahtml +=	'<th class="tableheader">출결현황</th></tr></thead<tbody>'
	            jb.each(data,function(index,item){                     	 
		            	console.log(data.length);                         
			        		datahtml += '<tr>';
			            /* 	datahtml += '<td style="align:center">' + item.RNO+  '</td>'; */
			            	datahtml += '<td style="align:center">' + item.APPLI_DATE + '</td>';
			            	datahtml += '<td style="align:center">' + item.APPLI_START_TIME + '</td>';
			            	datahtml += '<td style="align:center">' + item.MEM_NAME +		 '</td>';
			            	datahtml += '<td style="align:center">' + item.MEM_HP + '</td>';
			            	datahtml += '<td style="align:center">' + item.STAFF_NAME + '</td>';
			            	datahtml += '<td style="align:center">' + item.PRO_NAME + '</td>';
			            	datahtml += '<td style="align:center">' + item.ATT_CHECK + '</td>';
			             	datahtml += '</tr>';    	
		         });
	            datahtml += '</tbody></table>';
	            jb("#data-container").html(datahtml);
	        }
	    });
</script>  
			<div class="row">
				<div id="data-container"></div>
				<div id="pagination1" style="margin-left:45%"></div>
			</div>
			