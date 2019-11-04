<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Map<String,Object>> staffList = (List<Map<String,Object>>)request.getAttribute("staffList");
%>
	<select class="schedule-combobox" id="staffList_combo" style="text-align-last: center;width:9%">
<%
	for(int i=0;i<staffList.size();i++){
		Map<String,Object> staffMap = staffList.get(i);
%>
		<option value=<%=staffMap.get("STAFF_ID") %>><%=staffMap.get("STAFF_NAME") %></option>
<%}%>	
	</select>