<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/Lock.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<%
	if(request.getAttribute("result") != null){
	String result = (String)request.getAttribute("result");
		out.print(result);
	}
	else if(request.getAttribute("lockerList") != null){
	List<Map<String,Object>> lockerList = (List<Map<String,Object>>)request.getAttribute("lockerList");
	int size = 0;
	String status = null;
	if(lockerList != null){
		size = lockerList.size();
	}
%>
<script type="text/javascript">
/* 이용중 */
	function detailModal(rentnum,name,hp,start,end){
	//	alert(rentnum+", "+name+", "+hp+", "+start+", "+end);
		$("#rent_num").val(rentnum);
		$("#ld_name").text(name);
		$("#ld_hp").text(hp);
		$("#datebox1").datebox('setValue',start);
		$("#datebox2").datebox('setValue',end);
		$("#lockDetail").modal();
	}
/* 비어있을 때 */
	function detailModal_n(locknum){
		$("#locknum").val(locknum);
		$("#L_Assignment").modal();
	}
/* 고장 */
	function detailModal_b(locknum){
		$("#b_locknum").val(locknum);
		$("#lockDetail_b").modal();
	}
</script>

   <ul>
    <%for(int i=0;i<size;i++){
    	Map<String,Object> locMap = lockerList.get(i);
    	status = locMap.get("STATUS").toString();
    	if("이용중".equals(status)){
    	%>   
			<li class="use period" onClick="detailModal('<%=locMap.get("LRENT_NUM") %>','<%=locMap.get("MEM_NAME") %>','<%=locMap.get("MEM_HP") %>','<%=locMap.get("LRENT_START_DAY") %>','<%=locMap.get("LRENT_END_DAY") %>')">
				<div class="loker_box">
					<p><%=locMap.get("LOCKER_NUM") %></p>					     		
					<p><%=locMap.get("MEM_NAME") %></p>				  	
					<p><%=locMap.get("LRENT_START_DAY") %></p>				  	
					<p><%=locMap.get("LRENT_END_DAY") %></p>			
				</div>
            </li>
	    <%}
    	else if("만료임박".equals(status)){
    	%>   
			<li class="use before_expiration" onClick="detailModal('<%=locMap.get("LRENT_NUM") %>','<%=locMap.get("MEM_NAME") %>','<%=locMap.get("MEM_HP") %>','<%=locMap.get("LRENT_START_DAY") %>','<%=locMap.get("LRENT_END_DAY") %>')">       		
				<div class="locker_box ">
					<p><%=locMap.get("LOCKER_NUM") %></p>					     		
					<p><%=locMap.get("MEM_NAME") %></p>				  	
					<p><%=locMap.get("LRENT_START_DAY") %></p>				  	
					<p><%=locMap.get("LRENT_END_DAY") %></p>			
				</div>
            </li>
	    <%} 
	    else if("고장".equals(status)){
    	%>   
			<li class="impossible" onClick="detailModal_b('<%=locMap.get("LOCKER_NUM") %>')">
		        <div class="locker_box ">						
					<p><%=locMap.get("LOCKER_NUM") %></p>					     		
				</div>
            </li>
	   <%} 
	    else if("사용가능".equals(status)){
    	%>   
			<li onClick="detailModal_n('<%=locMap.get("LOCKER_NUM") %>')">
		        <div class="locker_box ">
					<p><%=locMap.get("LOCKER_NUM") %></p>					     		
				</div>
            </li>
	    <%} 
	    else if("사용만료".equals(status)){
    	%>   
			<li class="expiration" onClick="detailModal_n('<%=locMap.get("LOCKER_NUM") %>')">
		        <div class="locker_box ">
					<p><%=locMap.get("LOCKER_NUM") %></p>					     		
				</div>
            </li>
	    <%}} %>
	 </ul>
<%} %>
   