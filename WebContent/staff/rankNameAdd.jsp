<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--==========================================2019-10-30 onclick만 추가 ================================================================================  -->
<!-- 주노랑 이관 완료  -->
<%
	List<Map<String,Object>> rankList = (List<Map<String,Object>>)request.getAttribute("rankList");
	int size= 0;
	if(rankList!=null){
		size = rankList.size();
	}
%>
  <ul class="bb" data-category="position">
  		<%
  			for(int i=0; i<size; i++){
  				Map<String,Object> rMap = rankList.get(i);
  		%>
	         <li>
			   <button type="button" class="btn btn-block gray">
			      <span class="btn-label" style="color: #000;" onclick="rankdet('<%=rMap.get("RANK_NAME") %>')"> <%=rMap.get("RANK_NAME") %></span>
			   </button>
		   </li>
		   <%
			   }
		   %>
	   </ul>