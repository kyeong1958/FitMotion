<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<Map<String,Object>> taList = 
		(List<Map<String,Object>>)request.getAttribute("taList");
	int size = 0;
	if(taList!=null){
		size = taList.size();
	
	}
%>
    
    
    
    
    
    
    
    
       <ul  style="list-style: none" id="TM_ul">
<%
	for(int i=0;i<size;i++){
		Map<String,Object> rMap = taList.get(i); 

%>   
    
                  <li>
                     <span class="pr_btn btn text-border gray c_gray" style="margin-bottom: 10px; text-align: center;" >
								<%=rMap.get("TICKET_NAME") %>                        			
                     </span>
                  </li>
                  
                  
<%
                  
	}
                  
%>
                 
               </ul>