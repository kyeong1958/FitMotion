<%@page import="java.text.DecimalFormat"%>
<%@page import="sun.security.jca.GetInstance"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- ============================ [[ 회계관리 ]] ======================================== -->
    <!-- ============================ [[ 직원정산상세 ]] ======================================== -->
<%-- <%@ include file="/common/JEasyUICommon.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffSalaryDetail.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<%
	String login_id = session.getAttribute("login_id").toString();
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
			url:"/account/staffSalaryDetail.fm?year="+year+"&month="+month+"&move=prev"
		   ,success:function(data){
			  // alert("성공");
			  // $("#schedule_week").html(data);
		   }
		});
	}
	function next(year,month){
		//alert(year+", "+month);
		$.ajax({
			url:"/account/staffSalary.fm?year="+year+"&month="+month+"&move=next"
		   ,success:function(data){
			  // alert("성공");
			 //  $("#schedule_week").html(data);
		   }
		});
	}
/* 날짜이동 */
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:'/staff/staffSalaryDetail.fm?login_id=<%=login_id%>&todate=<%=year%>/<%=month+1%>'
			,success:function(data){
				//alert("성공 "+data);
				$("#ajaxinsert").html(data);
			}
		});
	});
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회계 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원별 정산</a>
		</div>
<!-- ================================= [[ 홈^ ]] =================================================== -->
			<div class="staff-salary-detail-day">
				<span>
					<a class="staff-prev-next" style="margin-right: 15px;" href="javascript:prev('<%=year%>','<%=month+1%>')"><img src="../images/previous.png"></a>
						<span id="kyear"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=year%></font></span>
				        <span><font size="5px" color="#454544">.</font></span>
				        <span id="kmonth"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=month+1%></font></span>
					<a class="staff-prev-next" style="margin-left:15px"href="javascript:next('<%=year%>','<%=month+1%>')"><img src="../images/next.png"></a>
				</span>
			</div>
<!-- <!-- ================================= [[ 테이블  top ]] =================================================== -->
			<div id="ajaxinsert"></div>
	<!-- 	<div class="section">
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
							<td>0%</td>
							<td>0%</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">총 급여<span>(기본급+전체상여금)</span></div>
				 	<div class="staff-salary-detail-box-body">0</div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">기본급</div>
				 	<div class="staff-salary-detail-box-body">0</div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">개인 그룹 수당 정산 금액</div>
				 	<div class="staff-salary-detail-box-body">0</div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">그룹 수업 수당 정산 금액</div>
				 	<div class="staff-salary-detail-box-body">0</div>
				</div>
				<div class="staff-salary-detail-box">
				 	<div class="staff-salary-detail-box-header">매출 커미션 총 금액</div>
				 	<div class="staff-salary-detail-box-body">0</div>
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
							
							
							<th class="staff-tableheader salary-detail">당월 발생매출</th>
							<th class="staff-tableheader salary-detail">수당 합계</th>
							<th class="staff-tableheader salary-detail">미수금</th>
							<th class="staff-tableheader salary-detail">등록횟수</th>
							<th class="staff-tableheader salary-detail">시작일</th>
							<th class="staff-tableheader salary-detail">종료일</th>
							<th class="staff-tableheader salary-detail">출석 수당</th>
							<th class="staff-tableheader salary-detail">결석 수당</th>
							<th class="staff-tableheader salary-detail">차감된 결석 횟수</th>
							<th class="staff-tableheader salary-detail">기정산 섹션</th>
							<th class="staff-tableheader salary-detail">월말 잔여</th>
							<th class="staff-tableheader salary-detail">선수금 잔여</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td>1</td>
							<td>2019.09.01</td>
							<td>이경애</td>
							<td>헬스 회원권 12개월</td>
							<td>95%</td>
							<td>200,000</td>
							<td>40%</td>
						</tr>
						<tr class="staff-salary-personal-lesson-sum" align="center">
							<td colspan="6">합계</td>
							<td>1,120,000</td>
							<td>1,120,000</td>
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
							<th class="staff-tableheader salary-detail">진행일시</th>
							<th class="staff-tableheader salary-detail">수업이름</th>
							<th class="staff-tableheader salary-detail">진행장소</th>
							<th class="staff-tableheader salary-detail">출석회원 수</th>
							<th class="staff-tableheader salary-detail">결석회원 수</th>
							<th class="staff-tableheader salary-detail">수업 발생매출</th>
							<th class="staff-tableheader salary-detail">수업수당</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td>1</td>
							<td>2019.09.02</td>
							<td>스피닝</td>
							<td>개인레슨 1룸</td>
							<td>1</td>
							<td>0</td>
							<td>12,000</td>
							<td>0</td>
						</tr>
						<tr class="staff-salary-personal-lesson-sum" align="center">
							<td colspan="4">합계</td>
							<td>1</td>
							<td>0</td>
							<td>12,000</td>
							<td>0</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div> -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
