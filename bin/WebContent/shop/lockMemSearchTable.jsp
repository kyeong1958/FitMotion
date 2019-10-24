<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Map<String,Object>> memInfoList = (List<Map<String,Object>>)request.getAttribute("memInfoList");
	int size = 0;
	if(memInfoList != null){
		size = memInfoList.size();
	}
%>
<script type="text/javascript">
	function memInfoDetail(mem_num,mem_name,mem_hp){
		alert("memDeatil"+mem_name+"memnum"+mem_hp);	
		$("#lm_memnum").val(mem_num);
		$("#lm_memname").val(mem_name);
		$("#lm_memhp").val(mem_hp);
	}
</script>
	<table id="tb_membersearch" class="table table-bordered  table-striped" style="text-align:center">
		<tr>
			<th class="tableheader" style="vertical-align: inherit;">회원명</th>
			<th class="tableheader" style="vertical-align: inherit;">생년월일</th>
			<th class="tableheader" style="vertical-align: inherit;">전화번호</th>
		</tr>
<% for(int i=0;i<size;i++){ 
		Map<String, Object> memInfoMap = memInfoList.get(i);
%>
		<tr onClick="memInfoDetail('<%= memInfoMap.get("MEM_NUM")%>','<%= memInfoMap.get("MEM_NAME")%>' , '<%=memInfoMap.get("MEM_HP") %>')">
			<td><%= memInfoMap.get("MEM_NAME") %></td>
			<td><%= memInfoMap.get("MEM_BIRTH") %></td>
			<td><%= memInfoMap.get("MEM_HP") %></td>
		</tr>
<% } %>
	</table>