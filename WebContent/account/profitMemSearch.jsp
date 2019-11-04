<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   List<Map<String,Object>> bhSelList = (List<Map<String,Object>>)request.getAttribute("bhSelList");
   int size = 0;
   if(bhSelList != null){
      size = bhSelList.size();
   }
%>
<script type="text/javascript">
	//콤마넣는함수																									
	function comma(str) {
		str = String(str);
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
	}
    function memInfoDetail(mem_name,mem_num,ticket_name,ticp_payment, ticp_reg_date){
     alert(mem_name+", "+mem_num+", "+ticket_name+", "+ticp_payment+", "+ticp_reg_date);   
      $("#sm_memname").val(mem_name);
      $("#sm_mem_num").val(mem_num);
      $("#productname").text(ticket_name);
      $("#productprice").text(comma(ticp_payment));
      $("#productdate").text(ticp_reg_date);
      aa("#search_member").modal("hide");
   } 
</script>
   <table id="tb_membersearch" class="table table-bordered  table-striped" style="text-align:center">
      <tr>
         <th class="tableheader" style="vertical-align: inherit;">회원명</th>
         <th class="tableheader" style="vertical-align: inherit;">생년월일</th>
         <th class="tableheader" style="vertical-align: inherit;">전화번호</th>
      </tr>
<% for(int i=0;i<size;i++){ 
      Map<String, Object> memInfoMap = bhSelList.get(i);
%>
      <tr onClick="memInfoDetail('<%= memInfoMap.get("MEM_NAME")%>' , '<%=memInfoMap.get("MEM_NUM") %>', '<%=memInfoMap.get("TICKET_NAME") %>', '<%=memInfoMap.get("TICP_PAYMENT") %>', '<%=memInfoMap.get("TICP_REG_DATE") %>')">
         <td><%= memInfoMap.get("MEM_NAME") %></td>
         <td><%= memInfoMap.get("MEM_BIRTH") %></td>
         <td><%= memInfoMap.get("MEM_HP") %></td>
      </tr>
<% } %>
   </table>