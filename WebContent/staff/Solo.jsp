
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <%
          List<Map<String,Object>> soloclass = (List<Map<String,Object>>)request.getAttribute("soloclass");
          
          int size=0;
          if(soloclass!=null){
             size = soloclass.size();
          }
          
          
          List<Map<String,Object>> soloproclass = (List<Map<String,Object>>)request.getAttribute("soloproclass");
          int ssize=0;
          if(soloproclass!=null){
             ssize = soloproclass.size();
          }
    
 %>
    
    
    
    
    
    
       <h3 class="memcard-title personal" id="memcard-attendance">개인레슨 이용권 회원 목록
               <span class="groupmem-card-title-label">총 개인레슨 이용권 회원수</span>
               <span class="groupmem-card-title-label sum"><%=size+ssize %>명</span>
            </h3>
            <div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
            for(int i=0; i<size; i++){
               
               Map<String,Object> rMap = soloclass.get(i);
%>
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;"><%=rMap.get("MEM_NAME") %></label>
                     <span><%=rMap.get("MEM_GENDER") %>/<%=rMap.get("MEM_HP") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">수업 참여</label>
                     <span><%=rMap.get("ATT_CHECK") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">이용상품</label>
                     <span><%=rMap.get("PRO_NAME") %></span>
                  </div>
               </div>
<%
   }
%>




<%
            for(int i=0; i<ssize; i++){
               
               Map<String,Object> rMap = soloproclass.get(i);
%>
               <div class="memcard-title attendance">
                  <div>
                     <label class="groupmem-card-label" style="font-size:16px;"><%=rMap.get("MEM_NAME") %></label>
                     <span><%=rMap.get("MEM_GENDER") %>/<%=rMap.get("MEM_HP") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">수업 참여</label>
                     <span><%=rMap.get("ATT_CHECK") %></span>
                  </div>
                  <div>
                     <label class="groupmem-card-label">이용상품</label>
                     <span><%=rMap.get("PRO_NAME") %></span>
                  </div>
               </div>
<%
   }
%>
            </div>

