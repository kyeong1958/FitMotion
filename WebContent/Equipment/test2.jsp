<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<%
      

         List<Map<String,Object>> gdSelList = (List<Map<String,Object>>)request.getAttribute("gdSelList");
         int size=0;
         if(gdSelList!=null){
         size = gdSelList.size();
            }
         


%>

         <%
                     for(int i=0; i<size; i++){
                           Map<String,Object> rMap = gdSelList.get(i);
         %>   
         
         
   <script>
   function eqCh(go_num){
      alert(go_num);
   }

   
   
   
   
   
   
   
   
   </script>                  
      
             <div class="row" id="meminfo" >
             <div class="row"  >
                     <div class="row meminfo-top">
                        <div class="col-sm-3 col-lg-3">
                           <input type="checkbox"  onclick="eqCh('<%=rMap.get("GO_NUM")%>')" id="checkbox_id" name="check" />
                           
                           <span><%=rMap.get("GO_NUM") %></span>
                           
   
                        </div>
                        <div class="col-sm-5 col-lg-5"></div>
                        <div class="col-sm-4 col-lg-4">
                           <div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">구매일</div>
                           <div class="col-sm-7 col-lg-7" ><%=rMap.get("PURCHASE_DATE") %></div>
                        </div>
                     </div>
                     
                     
                     <div class="row meminfo-second">
                                 <table class="meminfo-table">
                           <tr>
                              <td class="meminfo-table-header" style="width:20%">비품명</td>
                              <td class="meminfo-table-header" style="width:20%">비품종류</td>
                              <td class="meminfo-table-header" style="width:20%">가격</td>
                              <td class="meminfo-table-header" style="width:20%">재고</td>
                           </tr>

                           <tr>
                              <td class="meminfo-table-body"><%=rMap.get("GO_NAME") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("GO_TYPR") %></td>
                              <td class="meminfo-table-body"> <%=rMap.get("PURCHASE_PRICE") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("GO_STOCK") %></td>
                           </tr>
                     </table>
                    </div>
                   </div>
                  </div>
                <%
            } 
            %>

            
            
            
            
            
            
            
            
            
         
            