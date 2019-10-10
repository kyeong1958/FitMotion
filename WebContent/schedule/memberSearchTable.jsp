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
	function memInfoDetail(mem_name){
		alert("memDeatil"+mem_name);	
		$("#search_member").modal("hide");
		$("#sm_memname").val(mem_name);
	}
</script>
	<table id="tb_membersearch" class="table table-bordered  table-striped" style="text-align:center">
		<tr>
			<th class="tableheader">회원명</th>
			<th class="tableheader">생년월일</th>
			<th class="tableheader">전화번호</th>
		</tr>
<% for(int i=0;i<size;i++){ 
		Map<String, Object> memInfoMap = memInfoList.get(i);
%>
		<tr onClick="memInfoDetail('<%= memInfoMap.get("MEM_NAME") %>')">
			<td><%= memInfoMap.get("MEM_NAME") %></td>
			<td><%= memInfoMap.get("MEM_BIRTH") %></td>
			<td><%= memInfoMap.get("MEM_HP") %></td>
		</tr>
<% } %>
	</table>