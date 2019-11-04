
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--==============================================================2019-10-30추가 jsp 하나생성 ================================================================  -->
 <%
          List<Map<String,Object>> Groupclass = (List<Map<String,Object>>)request.getAttribute("Groupclass");
          
          int size=0;
          if(Groupclass!=null){
             size = Groupclass.size();
          }
          
          
          
          
          List<Map<String,Object>> Grouppoclass = (List<Map<String,Object>>)request.getAttribute("Grouppoclass");
          
          int gsize=0;
          if(Grouppoclass!=null){
        	  gsize = Grouppoclass.size();
          }
          
          
          
          
          
          
          
          
    
 %>
    
    
    
    
    
    
    
    
       <h3 class="memcard-title personal" id="memcard-attendance">그룹레슨 이용권 회원 목록
               <span class="groupmem-card-title-label">총 그룹레슨 이용권 회원수</span>
               <span class="groupmem-card-title-label sum"><%=size+gsize %>명</span>
            </h3>
            <div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
            for(int i=0; i<size; i++){
               
               Map<String,Object> rMap = Groupclass.get(i);
%>
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;"><%=rMap.get("MEM_NAME") %></label>
                     <span> <%=rMap.get("MEM_GENDER") %> / <%=rMap.get("MEM_HP") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">정원</label>
                     <span><%=rMap.get("PRO_LIMIT_PEOPLE") %></span>
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
            for(int i=0; i<gsize; i++){
               
               Map<String,Object> rMap = Grouppoclass.get(i);
%>
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;"><%=rMap.get("MEM_NAME") %></label>
                     <span> <%=rMap.get("MEM_GENDER") %> / <%=rMap.get("MEM_HP") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">정원</label>
                     <span><%=rMap.get("PRO_LIMIT_PEOPLE") %></span>
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
