<%@page import="sun.security.jca.GetInstance"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회계관리 ]] ======================================== -->
    <!-- ============================ [[ 직원정산상세 ]] ======================================== -->
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원정산상세</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffSalaryDetail.css">
<script type="text/javascript">
</script>
</head>
<body>
<script type="text/javascript">
</script>
<div class="container-fluid">
	<div class="row nav">
		<div class="col-sm-2"style="border:1px soild"></div>
	</div>
	<div class="col-lg-1" id="sidebar">

		<div class="row sidemenutitle" id="salesmanagement">매출관리</div>
		<div class="row sales">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
		</div>
		<div class="row sidemenutitle" id="salesmanagement">회원관리</div>
		<div class="row member">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
		</div>
		<div class="row sidemenutitle" id="analysis">통계분석</div>
		<div class="row analysis">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
		</div>
		<div class="row sidemenutitle titleservice" id="analysis">고객센터</div>
		<div class="row service">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
		</div>
	</div>
	<div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<a class="bar_menu" href="#">예약 내역</a>
		</div>
<!-- ================================= [[ 홈^ ]] =================================================== -->
			<div class="staff-salary-detail-day">
				<a class="staff-prev-next" style="padding-bottom:5px"><img src="../images/previous.png"></a>
				<span style="font-size:20px"><%=year %></span>
				<span style="font-size:20px">.</span>
				<span style="font-size:20px"><%=month %></span>
				<a class="staff-prev-next" style="margin-left:15px;padding-bottom:5px;"><img src="../images/next.png"></a>
			</div>
<!-- ================================= [[ 테이블  top ]] =================================================== -->
		<div class="section">
			<div class="row">
				<div class="entrance-table-top" style="padding-top:10px;"></div>
				<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="staff-tableheader salary-detail">개인매출 커미션율</th>
							<th class="staff-tableheader salary-detail">개인레슨 수당 정책</th>
							<th class="staff-tableheader salary-detail">그룹수업 수당 정책</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td>0%</td>
							<td>정액제 - 0원</td>
							<td>정율제 - 0%</td>
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
				 	<div class="staff-salary-detail-box-header">레슨 섹션 수당 정산 금액</div>
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
				<div class="entrance-table-top" style="padding-top:10px;font-size:17px"><b>개인매출 내역서</b></div>
				<table id="staff-calculate-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="staff-tableheader salary-detail">No.</th>
							<th class="staff-tableheader salary-detail">회원이름</th>
							<th class="staff-tableheader salary-detail">이용권</th>
							<th class="staff-tableheader salary-detail">시작일</th>
							<th class="staff-tableheader salary-detail">종료일</th>
							<th class="staff-tableheader salary-detail">등록횟수</th>
							<th class="staff-tableheader salary-detail">등록금액</th>
							<th class="staff-tableheader salary-detail">미수금</th>
							<th class="staff-tableheader salary-detail">당월 발생매출</th>
							<th class="staff-tableheader salary-detail">출석 수당</th>
							<th class="staff-tableheader salary-detail">출석 횟수</th>
							<th class="staff-tableheader salary-detail">결석 수당</th>
							<th class="staff-tableheader salary-detail">차감된 결석 횟수</th>
							<th class="staff-tableheader salary-detail">수당 합계</th>
							<th class="staff-tableheader salary-detail">기정산 섹션</th>
							<th class="staff-tableheader salary-detail">월말 잔여</th>
							<th class="staff-tableheader salary-detail">선수금 잔여</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td>1</td>
							<td>이경애</td>
							<td>헬스 회원권 12개월</td>
							<td>2019.09.01</td>
							<td>2020.09.01</td>
							<td>5</td>
							<td>1,000,000</td>
							<td>200,000</td>
							<td>45,000</td>
							<td>0</td>
							<td>4</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>12</td>
							<td>120,000</td>
						</tr>
						<tr class="staff-salary-personal-lesson-sum" align="center">
							<td colspan="6">합계</td>
							<td>1,000,000</td>
							<td>200,000</td>
							<td>-</td>
							<td>45,000</td>
							<td>0</td>
							<td>4</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>12</td>
							<td>120,000</td>
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
		</div>

<!-- ================================= [[ 화면전환 ]] =================================================== -->
	
	</div>
</div>
</body>
</html>