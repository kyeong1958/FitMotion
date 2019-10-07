<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 회원관리상세]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/memberManagement.css">

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
			<div class="col-lg-4">
				<div class="profile-top memname">
					이경애
				</div>
				<div class="profile-bottom">
					25세/1995-07-19
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
		<div class="section">
	<!-- ================================= [[ 개인정보-카드 ]] =================================================== -->
			<div class="col-lg-4 memcard" style="height:670px;">
				<h3 class="memcard-title personal">개인 정보</h3>
				<div class="personal-card-line">
					<span class="personal-card-label">
						회원번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						12770
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						첫 등록일
					</span>
					<span style="text-align: -webkit-match-parent;">
						2019-09-25
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						담당자
					</span>
					<span style="text-align: -webkit-match-parent;">
						이경애
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						회원용 APP
					</span>
					<span style="text-align: -webkit-match-parent;">
						사용안함
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						락커번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						12
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						바코드 번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						등록된 바코드가 없습니다.
					</span>
				</div>
				<div class="personal-card-memotitle">
					<span>메모</span>
					<span><a href="#" class="memo-write" data-toggle="modal" data-target="#memo-write-modal">메모 작성</a></span>
				</div>
				<div class="row">
					<div class="personal-card-memocontent">
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
					</div>
				</div>
			</div>
	<!-- ================================= [[ 개인정보-카드  ]] =================================================== -->
	<!-- ================================= [[ 입장관리 ]] =================================================== -->
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">입장 관리</h3>
				<div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
	for(int i=0;i<10;i++){
%>
					<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>그룹수업 이용권</div>
							<div>테스트 (리포머)</div>
						</div>
						<div class="col-lg-3">
							<div>입장</div>
							<div>2019.09.25 10:30</div>
						</div>
						<div class="col-lg-3">
							<div>퇴장</div>
							<div></div>
						</div>
					</div>
<%
	}
%>
				</div>
			</div>
	<!-- ================================= [[ 입장 관리 ]] =================================================== -->			
	<!-- ================================= [[ 이용권내역 ]] =================================================== -->			
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">이용권 내역</h3>
					<div class="memcard-scroll" data-spy="scroll" data-offset="0">
					<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>그룹수업 이용권</div>
							<div>테스트 (리포머)</div>
						</div>
						<div class="col-lg-3">
							<div>입장</div>
							<div>2019.09.25 10:30</div>
						</div>
						<div class="col-lg-3">
							<div>퇴장</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- ================================= [[ 이용권내역 ]] =================================================== -->
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	</div>
</div>

	<!-- ================================= [[ modal ]] =================================================== -->
 <div class="modal fade" id="memo-write-modal">
    <div class="modal-dialog modal-dialog-centered modal-sm-2">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header memo-write-modal-header">
          <h4 class="modal-title">메모</h4>
          <button type="button" class="memo-write-modal-header-close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<input type="text" class="memo-write-modal-textbox">
        </div>
     
        <!-- Modal footer -->
        <div class="modal-footer" style="text-align: center;">
          <button type="button" class="memo-write-modal-btn">확인</button>
        </div>
        
      </div>
    </div>
  </div>
	<!-- ================================= [[ modal ]] =================================================== -->


</body>
</html>


