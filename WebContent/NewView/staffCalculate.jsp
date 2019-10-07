<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회계관리 ]] ======================================== -->
    <!-- ============================ [[ 직원정산 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원정산</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffCalculate.css">
</head>
<body>
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
		<div class="tab-area" align="center">
			<div>
				<a class="staff-prev-next"><img src="../images/previous.png"></a>
				<select class="sc-combobox">
					<option value="">2019</option>
					<option value="">2018</option>
					<option value="">2017</option>
					<option value="">2016</option>
				</select>
				<span>년</span>
				<select class="sc-combobox">
					<option value="">09</option>
					<option value="">08</option>
					<option value="">07</option>
					<option value="">06</option>
				</select>
				<span>년</span>
				<a class="staff-prev-next" style="margin-left:15px"><img src="../images/next.png"></a>
			</div>
			<div>
<!-- ================================= [[ 상위 테이블  ]] =================================================== -->
				<table class="staff-calculate-sum">
					<thead>
						<tr>
							<td class="staff-calculate-sum-header" style="border-left:none">총 급여</td>
							<td class="staff-calculate-sum-header">총 지급액</td>
							<td class="staff-calculate-sum-header">기본급 합계</td>
							<td class="staff-calculate-sum-header">개인레슨 수당 합계</td>
							<td class="staff-calculate-sum-header">GX 수당 합계</td>
							<td class="staff-calculate-sum-header">매출 커미션 합계</td>
							<td class="staff-calculate-sum-header">OT 수당 합계</td>
							<td class="staff-calculate-sum-header">보너스 합계</td>
							<td class="staff-calculate-sum-header">임직원 인원</td>
							<td class="staff-calculate-sum-header">평균 급여</td>
							<td class="staff-calculate-sum-header">총 개인레슨 수업수</td>
							<td class="staff-calculate-sum-header">총 OT 수업수</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="staff-calculate-sum-bottom" style="color: #2196F3;border-left:none">30,000원</td>
							<td class="staff-calculate-sum-bottom" style="color: #2196F3;">30,000원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">30,000원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">0원</td>
							<td class="staff-calculate-sum-bottom">15명</td>
							<td class="staff-calculate-sum-bottom">2,000원</td>
							<td class="staff-calculate-sum-bottom">28</td>
							<td class="staff-calculate-sum-bottom" style="color: #2196F3;">3</td>
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
							<th rowspan="2" class="tableheader" style="vertical-align: middle;">임직원</th>
							<th class="staff-tableheader">기본급여</th>
							<th class="staff-tableheader">회당 개인레슨 수당</th>
							<th class="staff-tableheader">개인레슨 수행 횟수</th>
							<th class="staff-tableheader">총 개인레슨 수당</th>
							<th class="staff-tableheader">담당회원 매출</th>
							<th class="staff-tableheader">매출커미션(%)</th>
							<th class="staff-tableheader">총 매출커미션</th>
							<th class="staff-tableheader">회당 OT 수당</th>
							<th class="staff-tableheader">OT 수행 횟수 </th>
							<th class="staff-tableheader">총 OT 수당</th>
							<th class="staff-tableheader">기타 성과금</th>
							<th class="staff-tableheader">지급합계</th>
						</tr>
						<tr>
							<th class="header-bottom">GX 수행 횟수</th>
							<th class="header-bottom">총 GX 수당</th>
							<th class="header-bottom"></th>
							<th class="header-bottom">국민연금 공제</th>
							<th class="header-bottom">건강보험 공제</th>
							<th class="header-bottom">고용보험 공제</th>
							<th class="header-bottom">장기요양 보험 공제</th>
							<th class="header-bottom">소득세 공제</th>
							<th class="header-bottom">지방소득세 공제</th>
							<th class="header-bottom">프리랜서 공제(%)</th>
							<th class="header-bottom">공제합계</th>
							<th class="header-bottom">차인 지급액</th>
						</tr>
					</thead>
					<tbody>
<!-- ================================= [[ 직원 한 명 ]] =================================================== -->
						<tr align="center">
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
						</tr>
<!-- ================================= [[ 직원 한 명 ]] =================================================== -->
						<tr align="center">
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
						</tr>
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
	
	</div>
</div>
</body>
</html>