<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <style type="text/css">
body{
   padding:0%;
}

.container-fluid {
	padding:0%;

}
</style>
    
    

    <%
          List<Map<String,Object>> probilList = (List<Map<String,Object>>)request.getAttribute("probilList");
          
          int size=0;
          if(probilList!=null){
             size = probilList.size();
            // out.print(size);
          }
    
          List<Map<String,Object>> ticketList = (List<Map<String,Object>>)request.getAttribute("ticketList");
          int ticketsize =0;
          if(ticketList!=null){
        	  ticketsize = ticketList.size();
          }
         
          
 %>
    

   <!-- 이용권 부분   -->
   
   <%
            for(int i=0; i<size; i++){
               Map<String,Object> rMap = probilList.get(i);
	%>
    			<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>이용권</div>
							<div><%=rMap.get("PROM_NAME") %></div>
						</div>
						<div class="col-lg-2">
							<div>시작일</div>
							<div><%=rMap.get("PROM_START_DATE") %></div>
						</div>
						<div class="col-lg-2">
							<div>종료일</div>
							<div><%=rMap.get("PROM_END_DATE") %></div>
						</div>
						<div class="col-lg-2">
							<div>상태</div>
							<div><%=rMap.get("TICP_STATE") %></div>
						</div>
					</div>
<%
            }
%>				
					
					
					
					
	<!-- 티켓 부분  -->		
	
	
	
	 
   <%
            for(int i=0; i<ticketsize; i++){
               Map<String,Object> tMap = ticketList.get(i);
	%>
   	
    			<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>이용권</div>
							<div><%=tMap.get("TICKET_NAME") %></div>
						</div>
						<div class="col-lg-2">
							<div>구매일</div>
							<div><%=tMap.get("TICP_REG_DATE") %></div>
						</div>
						<div class="col-lg-2">
							<div>상태</div>
							<div><%=tMap.get("TICP_STATE") %></div>
						</div>
					</div>
	<%
            }
	%>