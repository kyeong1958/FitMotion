<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>    
<!-- 주노랑 이관 완료  -->
<%
	List<Map<String,Object>> sfSelList = (List<Map<String,Object>>)request.getAttribute("sfSelList");
	int size =0;
	if(sfSelList!=null){
		size = sfSelList.size();
	}
%>	
<form id="f_sfdetail">
	<ul> 
    <%
       for(int i=0; i<size; i++){
    	Map<String,Object> rMap = sfSelList.get(i);
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
