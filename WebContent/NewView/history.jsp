<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<style type="text/css">
#period_btns{
	margin: 0 auto;
	padding: 30px 66px;
	max-width: 100%;
	background-color: #f0f0f2;
}
.btn{
	background-color: #2196F3;
	color:#fff;
    min-width: 43px;
    padding: 0 10px;
    height: 26px;
    line-height: 24px;
    font-size: 13px;
	font-weight: 500;
	text-align: center;
   	display: inline-block;
    margin: 0;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}
.historydatebox{
	width: 110px !important;
	color: #000000!important;
	background: #ffffff
	padding-left: 10px;
	font-size: 13px;
	border: 1px solid #BABBC2;
	border-radius: 5px;
}
.tabBtn{
	display: inline-block;
	padding: 0 10px;
	width: 9%;
	min-height: 40px;
	color: #6e7794;
	line-height: 1.4;
	background-color: #FFF;
	border: 1px solid #BABBC2;
	border-radius: 5px 5px 0 0;
    min-width: 95px;
    font-size: 13px;
    overflow: hidden;
}
.tab-session{
	padding-left: 30px;
	max-width: 100%;
	background-color: #f0f0f2;
}		
.section{
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}
</style>
</head>
<script type="text/javascript">
	function sidemenu(id){
		alert(this.val());
		$(id).css("background-color","white");
		$(id+"> a").css("color","#42485A");
		$(".sidemenu")
	}
	function menu(menu){/* menu=# */
		alert("menu click");
		if('.sales' == menu){
			$('.sales').show();
			$('.member').hide();
			$('.analysis').hide();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","white");
			$(".menutitle-sales > span").css("color","#42485A");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.member' == menu){
			$('.sales').hide();
			$('.member').show();
			$('.analysis').hide();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","white");
			$(".menutitle-member > span").css("color","#42485A");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.analysis' == menu){
			$('.sales').hide();
			$('.member').hide();
			$('.analysis').show();
			$('.service').hide();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","white");
			$(".menutitle-analysis > span").css("color","#42485A");
			$(".menutitle-service").css("background-color","#42485A");
			$(".menutitle-service > span").css("color","white");
		}else if('.service' == menu){
			$('.sales').hide();
			$('.member').hide();
			$('.analysis').hide();
			$('.service').show();
			$(".menutitle-sales").css("background-color","#42485A");
			$(".menutitle-sales > span").css("color","white");
			$(".menutitle-member").css("background-color","#42485A");
			$(".menutitle-member > span").css("color","white");
			$(".menutitle-analysis").css("background-color","#42485A");
			$(".menutitle-analysis > span").css("color","white");
			$(".menutitle-service").css("background-color","white");
			$(".menutitle-service > span").css("color","#42485A");
		}
	}
</script>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();
	});
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
		<div id="period_btns">
			<button class="btn blue small">당해</button>
			<button class="btn blue small">당월</button>
			<button class="btn blue small">전월</button>
			<button class="btn blue small">오늘</button>
			<button class="btn blue small">어제</button>
			<button class="btn blue small">3일간</button>
			<button class="btn blue small">7일간</button>
			<button class="btn blue small">10일간</button>
			<button class="btn blue small">20일간</button>
			<button class="btn blue small">30일간</button>
			<span style="margin-left: 47%">
				<input class="easyui-datebox historydatebox" style="margin-left: 10%"/>
				<span>~</span>
				<input class="easyui-datebox historydatebox"/>
				<button class="btn blue small">조회</button>
			</span>
		</div>
		<div class="tab-session">
			<button class="tabBtn">회원</button>
			<button class="tabBtn">결제</button>
			<button class="tabBtn">수업관리</button>
			<button class="tabBtn">이용권 관리와 상품</button>
			<button class="tabBtn">예약 출석 결석</button>
		</div>
		<div class="section">
			<div class="row">
				<div class="reservation_middle" id="reservationList_total">
					<span class="middle">
						<label id="reservationlabel">페이지 당</label>
							<select name="pagetotal" id="pagetotal">
								<option>10</option>
								<option>25</option>
								<option>50</option>
								<option>100</option>
							</select>
						<label id="reservationlabel">개 표시</label>
					</span>
					<span class="middle">
						<label id="reservationlabel">검색:</label>
						<input type="search" class="reservation_searchbox">
					</span>
				</div>
			</div>
				<div class="row">
				<table id="table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="tableheader">날짜</th>
							<th class="tableheader">시간</th>
							<th class="tableheader">사용자</th>
							<th class="tableheader">카테고리</th>
							<th class="tableheader">이용내역</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>회원</td>
							<td>김영훈회원님이 회원용 App이용을 시작합니다.[계정:prkyh21@nate.com]</td>
						</tr>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>회원</td>
							<td>헬스맨7 회원님이 '락카' 이용권 기간을 2019-09-24~2020-09-25로 변경하였습니다.</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row pagination">
				<div class="pagination_top">
					전체 11개 항목 중 1 부터 10 까지 표시
				</div>
			</div>
		</div>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
	</div>
	
</div>
</body>
</html>