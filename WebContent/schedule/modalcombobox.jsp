<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
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
	Map<String,Object> scheduleModal = (Map<String,Object>)request.getAttribute("scheduleModal");
	Object keys[] = scheduleModal.keySet().toArray();
 	int ssize = 0;
 	int psize = 0;
 	int tsize = 0;
 	List<Map<String,Object>> staffList = new ArrayList<>();
 	List<Map<String,Object>> placeList = new ArrayList<>();
 	List<Map<String,Object>> ticketList = new ArrayList<>();
	if(scheduleModal.get("staffList") != null){
		staffList = (List<Map<String,Object>>)scheduleModal.get("staffList");
		ssize = staffList.size();
	}  
	if(scheduleModal.get("placeList") != null){
		placeList = (List<Map<String,Object>>)scheduleModal.get("placeList");
		psize = placeList.size();
	}  
	if(scheduleModal.get("ticketList") != null){
		ticketList = (List<Map<String,Object>>)scheduleModal.get("ticketList");
		tsize = ticketList.size();
	}  
%>
<script>
	function sm_staffList(){
		var ticket_name = $("#sm_ticketname").val();
		$.ajax({
			method:'get'
			,url:'/schedule/scheduleModal.fm?ticket_name='+ticket_name
			,success:function(data){
				$("#sm_combobox").html(data);
			}
		});
	}
</script>
<div style="padding:0 0 5px">

	<label class="spend-box-right-column">이용권</label>
	<span>
		<select class="spend-combobox" name="sm_ticket_name" id="sm_ticket_name" style="width: 170px;text-align-last:center">
<%	for(int i=0;i<tsize;i++){ 
	Map<String,Object> ticketMap = ticketList.get(i); %>
			<option value="<%= ticketMap.get("TICKET_NAME")%>"><%= ticketMap.get("TICKET_NAME")%></option>
<% } %>
		</select>
	</span>
</div>
 <div style="padding:0 0 5px">
	<label class="spend-box-right-column">강사명</label>
	<span>
		<select class="spend-combobox" id="sm_staffid" name="sm_staffid" style="width: 170px;text-align-last:center">
<%	for(int i=0;i<ssize;i++){
	Map<String,Object> staffMap = staffList.get(i); %>
			<option value="<%= staffMap.get("STAFF_ID")%>"><%= staffMap.get("STAFF_NAME")%></option>
<% } %>
		</select>
	</span>
</div>  
<div style="padding:0 0 5px">
	<label class="spend-box-right-column">수업장소</label>
	<span>
		<select class="spend-combobox" name="ep_name" id="ep_name" style="width: 170px;text-align-last:center">
<%	for(int i=0;i<psize;i++){ 
	Map<String,Object> placeMap = placeList.get(i); %>
			<option value="<%= placeMap.get("EP_NAME")%>"><%= placeMap.get("EP_NAME")%></option>
<% }%>
		</select>
	</span>
</div>