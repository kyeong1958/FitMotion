<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 직원관리상세 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원관리상세</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffManagement.css">
<style type="text/css">
body{
	padding:0%;
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
	/* function menu(menu){
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
	} */
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
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<a class="bar_menu" href="#">회원상세</a>
		</div>
	
	<!-- ================================= [[ 개인정보 ]] =================================================== -->
		<div class="row profile">
			<div class="row">
				<div class="col-lg-4">
					<div class="profile-top memname">
						이경애
					</div>
					<div class="profile-bottom">
						담당그룹 <span>4</span>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/gender2.png" style="width: 6%;">
						여성
					</div>
					<div class="profile-bottom">
						<img src="../images/address.png" style="width: 6%;">
						경기도 안산시 상록구 본오동
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/phone.png" style="width: 6%;">
						010-2680-6595
					</div>
					<div class="profile-bottom">
						<img src="../images/email.png" style="width: 6%;">
						미입력
					</div>			
				</div> 
			</div>
			<div class="row">
				<a  class="staff-management-tab" style="border-right:1px solid #BABBC2;">
					<img src="../images/piechart.png" class="staff-management-tab-a">강사 정보
				</a>
				<a  class="staff-management-tab" style="border-right:1px solid #BABBC2;">
					<img src="../images/calendar.png" class="staff-management-tab-a">스케줄 확인
				</a>
				<a class="staff-management-tab">
					<img src="../images/person.png" class="staff-management-tab-a">인사 정보
				</a>
			</div>
		</div>
		<div class="section">
	<!-- ================================= [[ 개인레슨  ]] =================================================== -->
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">개인레슨 이용권 회원 목록
					<span class="groupmem-card-title-label">총 개인레슨 이용권 회원수</span>
					<span class="groupmem-card-title-label sum">22명</span>
				</h3>
				<div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
	for(int i=0;i<10;i++){
%>
					<div class="memcard-title attendance">
						<div>
							<label class="groupmem-card-label" style="font-size:16px;">이경애</label>
							<span>25세 / 여 / 010-1234-1234</span>
						</div>
						<div>
							<label class="groupmem-card-label">수업 참여 횟수</label>
							<span>3 / 24</span>
						</div>
						<div>
							<label class="groupmem-card-label">이용상품</label>
							<span>PT 그룹레슨 3개월</span>
						</div>
					</div>
<%
	}
%>
				</div>
			</div>
	<!-- ================================= [[ 개인레슨  ]] =================================================== -->
	<!-- ================================= [[ 그룹레슨 ]] =================================================== -->
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">그룹레슨 이용권 회원 목록
					<span class="groupmem-card-title-label">총 그룹레슨 이용권 회원수</span>
					<span class="groupmem-card-title-label sum">22명</span>
				</h3>
				<div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
	for(int i=0;i<10;i++){
%>
					<div class="memcard-title attendance">
						<div>
							<label class="groupmem-card-label" style="font-size:16px;">이경애</label>
							<span>25세 / 여 / 010-1234-1234</span>
						</div>
						<div>
							<label class="groupmem-card-label">소속그룹</label>
							<span>월*수 오후7시</span>
						</div>
						<div>
							<label class="groupmem-card-label">이용상품</label>
							<span>PT 그룹레슨 3개월</span>
						</div>
					</div>
<%
	}
%>
				</div>
			</div>
	<!-- ================================= [[ 그룹레슨 ]] =================================================== -->			
	<!-- ================================= [[ 오늘스케줄 ]] =================================================== -->			
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">오늘 스케줄
					<span class="groupmem-card-title-label">총 오늘의 스케줄</span>
					<span class="groupmem-card-title-label sum">3건</span>
				</h3>
					<div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
	for(int i=0;i<3;i++){
%>
					<div class="memcard-title attendance">
						<div>
							<label class="groupmem-card-label" style="font-size:16px;">시간/장소</label>
							<span>7시 / 그룹레슨1룸</span>
						</div>
						<div>
							<label class="groupmem-card-label">참여인원</label>
							<span>1명</span>
						</div>
						<div>
							<label class="groupmem-card-label">이용상품</label>
							<span>PT 그룹레슨 3개월</span>
						</div>
					</div>
<%
	}
%>
				</div>
			</div>
	<!-- ================================= [[ 오늘스케줄 ]] =================================================== -->
		</div>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	</div>
</div>


</body>
</html>


