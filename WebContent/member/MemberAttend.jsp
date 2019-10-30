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
         List<Map<String,Object>> mAttSELList = (List<Map<String,Object>>)request.getAttribute("mAttSELList");
         int size=0;
         if(mAttSELList!=null){
         size = mAttSELList.size();
            }
%>

<%
      for(int i=0; i<size; i++){
          Map<String,Object> rMap = mAttSELList.get(i);
%>

  
               <div class="memcard-title attendance" style="display: -webkit-box;">
                     <div>날짜</div>
                     <div><%=rMap.get("AH_DATE") %></div>
                     
                  <div class="col-lg-3">
                       <div>입장</div>
                      <div><%=rMap.get("AH_ENTRY_TIME") %></div>
                  </div>
                  <div class="col-lg-3">
                     <div>퇴장</div>
                     <div><%=rMap.get("AH_EXIT_TIME") %></div>
               </div>
               
                  </div>
<%
   }
%>