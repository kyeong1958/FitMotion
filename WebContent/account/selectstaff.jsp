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
		Map<String,Object> stafflist = (Map<String,Object>)request.getAttribute("proSel");
		 List<Map<String,Object>> list = (List<Map<String,Object>>)stafflist.get("stafflist");
		int size = 0;
		if(list!=null){
			size = list.size();
		}	
%>    
    		<option value="">결제 담당자 선택</option>
         <%
         for(int i=0; i<size; i++){
      	   Map<String,Object> rMap = list.get(i);
         %>
     		<option value="<%=rMap.get("STAFF_NUM")%>,<%=rMap.get("STAFF_NAME") %>"><%=rMap.get("STAFF_NAME") %></option>
          <%
       	} 
          %>
