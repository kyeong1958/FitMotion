<%@page import="com.sun.javafx.collections.ListListenerHelper"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%


	 Map<String,Object> rMap = new HashMap<>();
	if(request.getAttribute("sfDTList") != null){
	Map<String,Object> sfDTList = (Map<String,Object>)request.getAttribute("sfDTList");
	List<Map<String,Object>> list = (List<Map<String,Object>>)sfDTList.get("key");
	 rMap = list.get(0);
	}	
	/* 	int size=0;
		if(list!=null && list.size()>0){
			
		} */

%> 			
			
			
			
			<div class="row">
				<div class="col-lg-4" style="width: 32%;margin-right: 16px;">
					<div class="profile-top memname">
						<%=rMap.get("STAFF_NAME") %>
					</div>
					<div class="profile-bottom">
						 <span><%=rMap.get("RANK_NAME") %></span>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/gender2.png" style="width: 6%;">
						<%=rMap.get("STAFF_GENDER") %>
					</div>
					<div class="profile-bottom">
						<img src="../images/cake.png" style="width: 6%;">
						<%=rMap.get("STAFF_BIRTH") %>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/phone.png" style="width: 6%;">
						<%=rMap.get("STAFF_HP") %>
					</div>
					<div class="profile-bottom">
						<img src="../images/work.png" style="width: 6%;">
						<span><%=rMap.get("PI_JOIN_DAY") %></span>
					</div>			
				</div> 
			</div>