<%@page import="com.sun.javafx.collections.ListListenerHelper"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/JEasyUICommon.jsp"%>
<%
	Map<String,Object> sfSelList = (Map<String,Object>)request.getAttribute("sfSelList");
	List<Map<String,Object>> list = (List<Map<String,Object>>)sfSelList.get("key");
	int size = 0;
	if(list!=null){
		size = list.size();
	}
%>	
		<form id="f_sfdetail">
 			 <ul> 
                        <%
                           for(int i=0; i<size; i++){
                        	   Map<String,Object> rMap = list.get(i);
                        %>             
                  <li>   
	                  <p class="pic">
	                     <img src="../images/smile.png">
	                  </p>            
	                     <div class="name_tag">
	                        <p><%=rMap.get("RANK_NAME") %></p>
	                        <p><%=rMap.get("STAFF_NAME") %></p>
	                        <p><%=rMap.get("STAFF_HP") %></p>
	                        <p><%=rMap.get("STAFF_BIRTH") %></p>
	                     </div>
	                     <div class="function_btn">
	                        <a class="btn red small delete"  >삭제하기</a>
	                        <a  class="btn blue small view" onclick="staffdetele('<%=rMap.get("STAFF_ID") %>')" >상세보기</a>
	                     </div>
                  </li>   
            <%
				}
			%>
            </ul>
		</form>
