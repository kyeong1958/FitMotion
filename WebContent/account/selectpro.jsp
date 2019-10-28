<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	body{
   padding:0%;
}

.container-fluid {
	padding:0%;

}

</style>    


    
    
<%
		Map<String,Object> promotionlist = (Map<String,Object>)request.getAttribute("proSel");
	 List<Map<String,Object>> pro_list = (List<Map<String,Object>>)promotionlist.get("promotionlist");
		int pr_size = 0;
		if(pro_list!=null){
			pr_size = pro_list.size();
		}	
		
		Map<String,Object> ticklist = (Map<String,Object>)request.getAttribute("proSel");
	 List<Map<String,Object>> tic_list = (List<Map<String,Object>>)ticklist.get("ticketlist");
		int tic_size = 0;
		if(tic_list!=null){
			tic_size = tic_list.size();
		}	
	 
		
%>    
         <option value="select">결제 상품 선택</option>
     	 <%
         for(int j=0; j<pr_size; j++){
      	   Map<String,Object> proMap = pro_list.get(j);
      	   
         %>
 		 <option value="<%=proMap.get("PROM_DIS_PRICE")%>"><%=proMap.get("PROM_NAME") %></option>
 		 <%
         }
 		 %>
 		<%
         for(int z=0; z<tic_size; z++){
      	   Map<String,Object> ticMap = tic_list.get(z);
         %>
 		 <option value="<%=ticMap.get("TICKET_PRICE")%>"><%=ticMap.get("TICKET_NAME") %></option>
 		  <%
         }
 		 %>
 		 
 		 
 		 
 		 
 		 
 		 
 		 