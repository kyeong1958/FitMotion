<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD



<style type="text/css">
body{
	padding:0%;
}
.container-fluid {
	padding:0%;

}
</style>

    
<%
      

         List<Map<String,Object>> eqSelList = (List<Map<String,Object>>)request.getAttribute("eqSelList");
         int size=0;
         if(eqSelList!=null){
         size = eqSelList.size();
            }
         


%>

         <%
                     for(int i=0; i<size; i++){
                           Map<String,Object> rMap = eqSelList.get(i);
         %>   
         
         
   <script>
   function eqCh(se_num){
      alert(se_num);
   }

   
   
   
   
   
   
   
   
   </script>                  
      
            <div class="row" id="meminfo" >
                  <div class="row">
                     <div class="row meminfo-top">
                        <div class="col-sm-3 col-lg-3">
                           <input type="checkbox" value="<%=rMap.get("SE_NUM")%>" onclick="eqCh('<%=rMap.get("SE_NUM")%>')" id="eq_checkbox" name="checkRow"/>
                           
                           <span name="se_num"><%=rMap.get("SE_NUM") %></span>
                           
   
                        </div>
                        <div class="col-sm-5 col-lg-5"></div>
                        <div class="col-sm-4 col-lg-4">
                           <div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">구매일</div>
                           <div class="col-sm-7 col-lg-7" ><%=rMap.get("SE_BUY_DATE") %></div>
                        </div>
                     </div>
                     <div class="row meminfo-second">
                                 <table class="meminfo-table">
                           <tr>
                              <td class="meminfo-table-header" style="width:15%">기구명</td>
                              <td class="meminfo-table-header" style="width:10%">작동여부</td>
                              <td class="meminfo-table-header" style="width:20%">가격</td>
                              <td class="meminfo-table-header" style="width:10%">수리횟수</td>
                              <td class="meminfo-table-header" style="width:25%;border-right: 0">고장내역</td>
                           </tr>

                  
   
                           <tr>
                              <td class="meminfo-table-body"><%=rMap.get("SE_NAME") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_OPERATING_MODE") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_BUY_PRICE") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_REPAIRS") %></td>
                              <td class="meminfo-table-body"style="border-right: 0"><%=rMap.get("SE_REPAIR_DATAIL") %></td>
                           </tr>
                     </table>
                     </div>
                  </div>
               </div>

                <%
            } 
            %>

            
            
            
            
            
            
            
            
            
         
=======
<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
   padding:0%;

}
</style>
    
<%
         List<Map<String,Object>> eqSelList = (List<Map<String,Object>>)request.getAttribute("eqSelList");
         int size=0;
         if(eqSelList!=null){
         size = eqSelList.size();
            }
%>

         <%
                     for(int i=0; i<size; i++){
                           Map<String,Object> rMap = eqSelList.get(i);
         %>   
         
   <script>

   </script>                  
      
            <div class="row" id="meminfo" >
                  <div class="row">
                     <div class="row meminfo-top">
                        <div class="col-sm-3 col-lg-3">
                           <input type="checkbox" value="<%=rMap.get("SE_NUM")%>" onclick="eqCh('<%=rMap.get("SE_NUM")%>')" id="eq_checkbox" name="checkRow"/>
                           
                           <span name="se_num"><%=rMap.get("SE_NUM") %></span>
                           
   
                        </div>
                        <div class="col-sm-5 col-lg-5"></div>
                        <div class="col-sm-4 col-lg-4">
                           <div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">구매일</div>
                           <div class="col-sm-7 col-lg-7" ><%=rMap.get("SE_BUY_DATE") %></div>
                        </div>
                     </div>
                     <div class="row meminfo-second">
                                 <table class="meminfo-table">
                           <tr>
                              <td class="meminfo-table-header" style="width:15%">기구명</td>
                              <td class="meminfo-table-header" style="width:10%">작동여부</td>
                              <td class="meminfo-table-header" style="width:20%">가격</td>
                              <td class="meminfo-table-header" style="width:10%">수리횟수</td>
                              <td class="meminfo-table-header" style="width:25%;border-right: 0">고장내역</td>
                           </tr>
                           <tr>
                              <td class="meminfo-table-body"><%=rMap.get("SE_NAME") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_OPERATING_MODE") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_BUY_PRICE") %></td>
                              <td class="meminfo-table-body"><%=rMap.get("SE_REPAIRS") %></td>
                              <td class="meminfo-table-body"style="border-right: 0"><%=rMap.get("SE_REPAIR_DATAIL") %></td>
                           </tr>
                     </table>
                     </div>
                  </div>
               </div>

                <%
            } 
            %>
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
            