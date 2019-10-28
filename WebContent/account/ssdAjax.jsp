<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DecimalFormat df = new DecimalFormat("###,###");
	Map<String,Object> rMap = (Map<String,Object>)request.getAttribute("staffSalaryDetail");
	List<Map<String,Object>> spList = (List<Map<String,Object>>)rMap.get("sp");
	Map<String,Object> sp = (Map<String,Object>)spList.get(0);
	List<Map<String,Object>> plList = (List<Map<String,Object>>)rMap.get("pl");
	List<Map<String,Object>> glList = (List<Map<String,Object>>)rMap.get("gl");
	int plSum = 0;
	int plSumcomm = 0;
	int glSum = 0;
	int glSumcomm = 0;
	for(int i=0;i<plList.size();i++){
		Map<String, Object> plm = plList.get(i);
		plSum += Integer.parseInt(plm.get("TICP_PAYMENT").toString());
		plSumcomm += Integer.parseInt(plm.get("comm").toString());
	}
	for(int i=0;i<glList.size();i++){
		Map<String, Object> glm = glList.get(i);
		glSum += Integer.parseInt(glm.get("TICP_PAYMENT").toString());
		glSumcomm += Integer.parseInt(glm.get("comm").toString());
	}
	int commSum = plSumcomm + glSumcomm;
	int salary = Integer.parseInt(sp.get("PI_BASE_PAY").toString()) + commSum;
%>
<!-- ================================= [[ 테이블  top ]] =================================================== -->
		<div class="section">
			<div class="row">
				<div class="entrance-table-top" style="padding-top:10px;"></div>
				<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="staff-tableheader salary-detail">개인레슨 커미션율</th>
							<th class="staff-tableheader salary-detail">그룹레슨 커미션율</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td><%= sp.get("PI_PRIVATE_PAY")%>%</td>
							<td><%= sp.get("PI_GROUP_PAY")%>%</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">총 급여<span>(기본급+전체상여금)</span></div>
				 	<div class="staff-salary-detail-box-body"><%=df.format(salary) %></div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">기본급</div>
				 	<div class="staff-salary-detail-box-body"><%= df.format(Integer.parseInt(sp.get("PI_BASE_PAY").toString())) %></div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">개인 그룹 수당 정산 금액</div>
				 	<div class="staff-salary-detail-box-body"><%= df.format(plSumcomm) %></div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">그룹 수업 수당 정산 금액</div>
				 	<div class="staff-salary-detail-box-body"><%= df.format(glSumcomm) %></div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">매출 커미션 총 금액</div>
				 	<div class="staff-salary-detail-box-body"><%= df.format(commSum) %></div>
				</div>
			</div>
			<div class="row">
				<div class="entrance-table-top" style="padding-top:10px;font-size:17px"><b>개인수업 내역서</b></div>
		 		<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="staff-tableheader salary-detail">No.</th>
							<th class="staff-tableheader salary-detail">등록일자</th>
							<th class="staff-tableheader salary-detail">회원명</th>
							<th class="staff-tableheader salary-detail">결제상품</th>
							<th class="staff-tableheader salary-detail">프로그램명</th>
							<th class="staff-tableheader salary-detail">출석률</th>
							<th class="staff-tableheader salary-detail">등록금액</th>
							<th class="staff-tableheader salary-detail">커미션수당</th>
						</tr>
					</thead>
					<tbody>
<%
	for(int i=0;i<plList.size();i++ ){
		Map<String,Object> plMap = plList.get(i);
%>
						<tr align="center">
							<td><%= i%></td>
							<td><%= plMap.get("TICP_REG_DATE")%></td>
							<td><%= plMap.get("MEM_NAME")%></td>
							<td><%= plMap.get("TICKET_NAME")%></td>
							<td><%= plMap.get("PRO_NAME")%></td>
							<td><%= plMap.get("attper")%>%</td>
							<td><%= plMap.get("TICP_PAYMENT")%></td>
							<td><%= plMap.get("comm")%></td>
						</tr>
<%
		
	}
%>			
						<tr class="staff-salary-personal-lesson-sum" align="center">
							<td colspan="6">합계</td>
							<td><%= df.format(plSum) %></td>
							<td><%= df.format(plSumcomm) %></td>
						</tr>
					</tbody>
				</table> 
			</div>
			<div class="row">
			<div class="entrance-table-top" style="padding-top:10px;font-size:17px"><b>그룹수업 내역서</b></div>
				<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="staff-tableheader salary-detail">No.</th>
							<th class="staff-tableheader salary-detail">등록일시</th>
							<th class="staff-tableheader salary-detail">회원명</th>
							<th class="staff-tableheader salary-detail">결제상품</th>
							<th class="staff-tableheader salary-detail">프로그램명</th>
							<th class="staff-tableheader salary-detail">출석률</th>
							<th class="staff-tableheader salary-detail">수업 발생매출</th>
							<th class="staff-tableheader salary-detail">수업수당</th>
						</tr>
					</thead>
					<tbody>

<%
	for(int i=0;i<glList.size();i++ ){
		Map<String,Object> glMap = glList.get(i);
%>
						<tr align="center">
							<td><%= i%></td>
							<td><%= glMap.get("TICP_REG_DATE")%></td>
							<td><%= glMap.get("MEM_NAME")%></td>
							<td><%= glMap.get("TICKET_NAME")%></td>
							<td><%= glMap.get("PRO_NAME")%></td>
							<td><%= glMap.get("attper")%>%</td>
							<td><%= glMap.get("TICP_PAYMENT")%></td>
							<td><%= glMap.get("comm")%></td>
						</tr>
<%
	}
%>							
						<tr class="staff-salary-personal-lesson-sum" align="center">
							<td colspan="6">합계</td>
							<td><%= df.format(glSum) %></td>
							<td><%= df.format(glSumcomm) %></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

<!-- ================================= [[ 화면전환 ]] =================================================== -->