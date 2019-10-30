

<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
          List<Map<String,Object>> todayList = (List<Map<String,Object>>)request.getAttribute("todayschedule");
          
          int size=0;
          if(todayList!=null){
             size = todayList.size();
          }
          
          List<Map<String,Object>> todaytickList = (List<Map<String,Object>>)request.getAttribute("todayscheduletick");
          
          int tsize=0;
          if(todaytickList!=null){
        	  tsize = todaytickList.size();
          }
          
         
          
          
          
          
          
    
 %>    
    <h3 class="memcard-title personal" id="memcard-attendance">오늘 스케줄
               <span class="groupmem-card-title-label">총 오늘의 스케줄</span>
               <span class="groupmem-card-title-label sum"><%=size+tsize%></span>
            </h3>
               <div class="memcard-scroll" data-spy="scroll" data-offset="0">

               
         <%
            
               for(int i=0; i<size; i++){
                   
                   Map<String,Object> rMap = todayList.get(i);
         
         %>      
               
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;">시간/장소</label>
                     <span><%=rMap.get("APPLI_START_TIME") %>시 / <%=rMap.get("PRO_PLACE") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">정원</label>
                     <span><%=rMap.get("PRO_LIMIT_PEOPLE") %>명</span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">프로그램명</label>
                     <span><%=rMap.get("PRO_NAME") %></span>
                  </div>
               </div>
<%
   }
%>




         <%
            
               for(int i=0; i<tsize; i++){
                   
                   Map<String,Object> rMap = todaytickList.get(i);
         
         %>      
               
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;">시간/장소</label>
                     <span><%=rMap.get("APPLI_START_TIME") %>시 / <%=rMap.get("PRO_PLACE") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">회원명</label>
                     <span><%=rMap.get("MEM_NAME") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">프로그램명</label>
                     <span><%=rMap.get("PRO_NAME") %></span>
                  </div>
               </div>
<%
   }
%>
            </div>


