<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		List<Map<String,Object>> plist = (List<Map<String,Object>>)request.getAttribute("spendingcombo");
		int size = 0;
		if(plist!=null){
			size = plist.size();
		}	

	out.print(size);
%>    
			<option value="">지출선택</option>
 		<%
	         for(int i=0; i<size; i++){
	      	   Map<String,Object> rMap = plist.get(i);
	     %>
			<option value='<%=rMap.get("EXB_NUM")%>'><%=rMap.get("EXB_KINDS")%></option>
		<%
         }
		%>