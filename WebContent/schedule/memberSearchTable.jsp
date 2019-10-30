<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	body{
		padding:0%;
	}
</style>
<%
	List<Map<String,Object>> memInfoList = (List<Map<String,Object>>)request.getAttribute("memInfoList");
	int size = 0;
	if(memInfoList != null){
		size = memInfoList.size();
	}
%>
<script type="text/javascript">
	function memInfoDetail(mem_name,mem_num){
		alert("memDeatil"+mem_name+"memnum"+mem_num);	
		$("#sm_memname").val(mem_name);
		$("#sm_mem_num").val(mem_num);
	//	aa("#search_member").modal("hide");
		/* $.ajax({
			method:'get'
			,url:'/schedule/scheduleModal.fm?mem_num='+mem_num
			,success:function(data){
				$("#sm_combobox").html(data);
			}
		}); */
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
		<tr  data-dismiss="modal" onClick="memInfoDetail('<%= memInfoMap.get("MEM_NAME")%>','<%=memInfoMap.get("MEM_NUM") %>')">
			<td><%= memInfoMap.get("MEM_NAME") %></td>
			<td><%= memInfoMap.get("MEM_BIRTH") %></td>
			<td><%= memInfoMap.get("MEM_HP") %></td>
		</tr>
<% } %>
	</table>