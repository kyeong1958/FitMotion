<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>
<%@ include file="../common/JEasyUICommon.jsp"%>
<script type="text/javascript">



</script>
<%
	List<Map<String,Object>> goList = 
		(List<Map<String,Object>>)request.getAttribute("goList");
	int size = 0;
	if(goList!=null){
		size = goList.size();
	}
%>
<%
	for(int i=0;i<size;i++){
		Map<String,Object> rMap = goList.get(i); 

%> 
	<div class="row" id="meminfo" >
						<div class="row">
							<div class="row meminfo-top">
								<div class="col-sm-3 col-lg-3">
									<input type="checkbox"/>
									<span>번호넣는곳</span>
								</div>
								<div class="col-sm-5 col-lg-5"></div>
								<div class="col-sm-4 col-lg-4">
									<div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">등록일</div>
									<div class="col-sm-7 col-lg-7">등록날짜 넣는 곳</div>
								</div>
							</div>
							<div class="row meminfo-second">
								<table class="meminfo-table">
									<tr>
										<td class="meminfo-table-header" style="width:20%">비품명</td>
										<td class="meminfo-table-header" style="width:20%">분류</td>
										<td class="meminfo-table-header" style="width:20%">개수</td>
										<!-- <td class="meminfo-table-header" style="width:16.6%">총개수</td> -->
										<td class="meminfo-table-header" style="width:20%">금액</td>
										<td class="meminfo-table-header" style="width:20%">구매일</td>
									</tr>
								 	<tr>
										<td class="meminfo-table-body"><%=rMap.get("GO_NAME") %></td>
										<td class="meminfo-table-body"><%=rMap.get("GO_TYPE") %></td>
										<td class="meminfo-table-body"><%=rMap.get("GO_STOCK") %></td>
										<%-- <td class="meminfo-table-body"><%rMap.get("GO_TOTSTOCK") %></td> --%>
										<td class="meminfo-table-body"><%=rMap.get("GO_PRICE") %></td>
										<td class="meminfo-table-body"><%=rMap.get("GO_DATE") %></td>
									</tr> 
									<!--  <tr>
										<td class="meminfo-table-body">수건</td>
										<td class="meminfo-table-body">소모품</td>
										<td class="meminfo-table-body">10개</td>
										<td class="meminfo-table-body">10000원</td>
										<td class="meminfo-table-body">2019.09.16</td>
									</tr> -->
								</table>
							</div>
						</div>
					</div>
 <%
	}
%> 