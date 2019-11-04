<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회계관리 ]] ======================================== -->
    <!-- ============================ [[ 직원정산 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffCalculate.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<%
	Calendar cal = Calendar.getInstance();
	DecimalFormat df = new DecimalFormat("00");
	String y = df.format(cal.get(Calendar.YEAR));
	int year = Integer.parseInt(y);
	String m = df.format(cal.get(Calendar.MONTH));
	int month = Integer.parseInt(m);
%>
<script type="text/javascript">
/* 날짜이동 */
function prev(year,month){
	//alert(year+", "+month);
	$.ajax({
		url:"/account/staffCalculate.fm?year="+year+"&month="+month+"&move=prev"
	   ,success:function(data){
		  // alert("성공");
		  // $("#schedule_week").html(data);
	   }
	});
}
function next(year,month){
	//alert(year+", "+month);
	$.ajax({
		url:"/account/staffCalculate.fm?year="+year+"&month="+month+"&move=next"
	   ,success:function(data){
		  // alert("성공");
		 //  $("#schedule_week").html(data);
	   }
	});
}
/* 날짜이동 */
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회계 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원 정산</a>
		</div>
<!-- ================================= [[ 홈^ ]] =================================================== -->
		<div class="tab-area" align="center">
			<div>
				<span>
					<a class="staff-prev-next" style="margin-right: 15px;" href="javascript:prev('<%=year%>','<%=month+1%>')"><img src="../images/previous.png"></a>
						<span id="kyear"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=year%></font></span>
				        <span><font size="5px" color="#454544">.</font></span>
				        <span id="kmonth"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=month+1%></font></span>
					<a class="staff-prev-next" style="margin-left:15px"href="javascript:next('<%=year%>','<%=month+1%>')"><img src="../images/next.png"></a>
				</span>
			</div>
			<div>
<!-- ================================= [[ 상위 테이블  ]] =================================================== -->
				<table class="staff-calculate-sum">
					<thead>
						<tr>
							<td class="staff-calculate-sum-header" style="border-left:none">총 지급액</td>
							<!-- <td class="staff-calculate-sum-header">총 지급액</td> -->
							<td class="staff-calculate-sum-header">기본급 합계</td>
							<td class="staff-calculate-sum-header">개인레슨 수당 합계</td>
						<!-- 	<td class="staff-calculate-sum-header">GX 수당 합계</td> -->
							<td class="staff-calculate-sum-header">매출 커미션 합계</td>
							<!-- <td class="staff-calculate-sum-header">OT 수당 합계</td>
							<td class="staff-calculate-sum-header">보너스 합계</td>
							<td class="staff-calculate-sum-header">임직원 인원</td> -->
							<td class="staff-calculate-sum-header">평균 급여</td>
							<td class="staff-calculate-sum-header">총 개인레슨 수업수</td>
							<!-- <td class="staff-calculate-sum-header">총 OT 수업수</td> -->
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="staff-calculate-sum-bottom" style="color: #2196F3;border-left:none">30,000원</td>
							<!-- <td class="staff-calculate-sum-bottom" style="color: #2196F3;">30,000원</td> -->
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
						<!-- 	<td class="staff-calculate-sum-bottom">30,000원</td> -->
							<td class="staff-calculate-sum-bottom">0원</td>
						<!-- 	<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">15명</td> -->
							<td class="staff-calculate-sum-bottom">2,000원</td>
							<td class="staff-calculate-sum-bottom">28</td>
						<!-- 	<td class="staff-calculate-sum-bottom" style="color: #2196F3;">3</td> -->
						</tr>
					</tbody>
				</table>				
<!-- ================================= [[ 상위 테이블 ]] =================================================== -->
			</div>
		</div>
<!-- ================================= [[ 테이블 ]] =================================================== -->
		<div class="section">
			<div class="row">
				<div class="entrance-table-top" style="padding-top:10px;"></div>
				<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th rowspan="2" class="tableheader" style="vertical-align: middle;">직원명</th>
							<th class="staff-tableheader">기본급여</th>
							<th class="staff-tableheader">회당 개인레슨 수당</th>
							<th class="staff-tableheader">개인레슨 수행 횟수</th>
							<th class="staff-tableheader">총 개인레슨 수당</th>
						<!-- <th class="staff-tableheader">담당회원 매출</th> -->
							<th class="staff-tableheader">매출커미션(%)</th>
							<th class="staff-tableheader">총 매출커미션</th>
						<!-- 	<th class="staff-tableheader">회당 OT 수당</th>
							<th class="staff-tableheader">OT 수행 횟수 </th>
							<th class="staff-tableheader">총 OT 수당</th>
							<th class="staff-tableheader">기타 성과금</th> -->
							<th class="staff-tableheader" colspan="2">지급합계</th>
						</tr>
						<tr>
						<!-- 	<th class="header-bottom">GX 수행 횟수</th>
							<th class="header-bottom">총 GX 수당</th>
							<th class="header-bottom"></th> -->
							<th class="header-bottom">국민연금 공제</th><!-- 4.5%, 최대 202,500 -->
							<th class="header-bottom">건강보험 공제</th><!-- 3.12% -->
							<th class="header-bottom">고용보험 공제</th><!-- 0.65 -->
							<th class="header-bottom">장기요양 보험 공제</th><!-- 건강보험의 7.38 -->
							<th class="header-bottom">소득세 공제</th><!-- 41,630 -->
							<th class="header-bottom">지방소득세 공제</th><!-- 4,160 -->
							<th class="header-bottom">프리랜서 공제(%)</th><!-- 3.3 -->
							<th class="header-bottom">공제합계</th>
						</tr>
					</thead>
					<tbody>
<!-- ================================= [[ 직원 한 명 ]] =================================================== -->
					<!-- 	<tr align="center">
							<td rowspan="2" style="vertical-align: middle;">이경애</td>
							<td>3,000,000</td>
							<td>100,000</td>
							<td>12회</td>
							<td>1,200,000</td>
							<td>3회</td>
							<td>500,000</td>
							<td>50%</td>
							<td>1,700,000</td>
							<td>100,000</td>
							<td>500,000</td>
							<td>6,900,000</td>
							<td>6,900,000</td>
						</tr>
						<tr align="center">
							<td>3,000,000</td>
							<td>100,000</td>
							<td>12회</td>
							<td>1,200,000</td>
							<td>3회</td>
							<td>500,000</td>
							<td>50%</td>
							<td>1,700,000</td>
							<td>100,000</td>
							<td>500,000</td>
							<td>6,900,000</td>
							<td>6,900,000</td>
						</tr> -->
<!-- ================================= [[ 직원 한 명 ]] =================================================== -->
					</tbody>
				</table>
				<div class="row pagination">
					<div class="pagination_top">
						전체 11개 항목 중 1 부터 10 까지 표시
					</div>
				</div>
			</div>
		</div>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
