<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 직원관리상세 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffManagement.css">
<style type="text/css">
	body{
	   padding:0%;
	}
</style>
<script type="text/javascript">
	function staffpage(url){
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#section").html(data);
		   }
		});
	}
	$(function () {
		    $(".staff-management-tab").click(function () {
			   	     $(".staff-management-tab").css("background-color","#F0F0F2");
			         $(".staff-management-tab").css("color", "#42485A");
			         $("#staff_menu").children('img').attr("src","../images/piechart.png");
			         $("#staff_schedule_check").children('img').attr("src","../images/calendar.png");
			    /*      $("#staff_information").children('img').attr("src","../images/person.png"); */
		    	if($(this).attr('id') == "staff_menu"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/piechart_white.png");
		    	}
		    	else if($(this).attr('id') == "staff_schedule_check"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/calendar_white.png");
			         staffpage('./staffManagement-schedule.jsp');
		    	}
		    	/* else if($(this).attr('id') == "staff_information"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/person_white.png");;
		    	} */
		    });
	});
	

</script>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원상세</a>
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
			<div class="row" style="margin-top: 20px;">
				<a  class="staff-management-tab" id="staff_menu" style="border-right:1px solid #BABBC2;">
					<img src="../images/piechart.png" class="staff-management-tab-a">강사 정보
				</a>
				<a  class="staff-management-tab" id="staff_schedule_check">
					<img src="../images/calendar.png" class="staff-management-tab-a">스케줄 확인
				</a>
				<!-- <a class="staff-management-tab" id="staff_information" onClick="staffpage('./staffInfo.jsp')">
					<img src="../images/person.png" class="staff-management-tab-a">인사 정보
				</a> -->
			</div>
		</div>
		<div class="section" id="section">
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
