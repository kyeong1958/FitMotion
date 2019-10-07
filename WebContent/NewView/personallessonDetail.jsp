<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 회원상세페이지 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인레슨상세</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/personallessonDetail.css">
<script></script>
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
	<!-- ================================= [[ 홈 끝 ]] =================================================== -->
		<div class="section">
	<!-- ================================= [[ 개일레슨 이용권 ]] =================================================== -->
			<div class="product-detail-first">
				<h3 class="product-detail-first-top">개인레슨 이용권</h3>
				<div class="product-detail-first-bottom">
					<p>
						<label class="detail-label">개인레슨 이용권 이름</label>
						<span>개인레슨</span>
					</p>
					<p>
						<label class="detail-label">수업 진행시간</label>
						<span>50분</span>
					</p>
					<p>
						<label class="detail-label">장소</label>
						<span>지정안됨</span>
					</p>
					<p>
						<label class="detail-label">수업 설명</label>
						<span>횟수를 모두 사용하거나 기간이 종료되거나 둘 중 한 가지가 종료되면 남은 기간이나 횟수에 관계없이 이용권은 만료됩니다.</span>
					</p>
				</div>
			</div>
	<!-- ================================= [[ 이용권 상풍 등록  ]] =================================================== -->
			<div class="product-detail-first">
				<h3 class="product-detail-first-top">이용권 상품 등록</h3>
				<div class="product-detail-first-bottom">
					<p class="product-detail-second-row">
						<label class="detail-label">기간 및 횟수</label>
						<span>
							<input type="number" class="product-detail-num" style="width:100px;">
							<select class="product-detail-combobox">
								<option>개월</option>
								<option>일</option>
							</select>
						</span>
						<label class="detail-label2">섹션 횟수</label>
						<span>
							<input type="radio" class="product-detail-radiobutton">
							<label>무제한 이용가능</label>
							<input type="radio" class="product-detail-radiobutton" style="margin-left: 20px;">
							<input type="number" class="product-detail-num" style="width:50px;">
							<label>회이용가능</label>
						</span>
					</p>
					<p class="product-detail-second-row">
						<label class="detail-label">상품이름</label>
						<input type="text" class="spending-text" style="width:400px;">
					</p>
					<p class="product-detail-second-row">
						<label class="detail-label">상품 분류 선택</label>
						<select class="product-detail-combobox">
								<option>필라테스 그룹</option>
								<option>필라테스 개인</option>
								<option>요가 개인</option>
						</select>
					</p>
					<div class="product-detail-second-row">
						<span>
							<label class="detail-label">당일중복이용</label>
						</span>
						<span>
							<input type="radio" class="product-detail-radiobutton">
							<label>하루에 '여러번'이용 가능합니다.</label><br>
							<input type="radio" class="product-detail-radiobutton" style="margin-left:154px;">
							<label>하루에 '한번만'이용 가능합니다.</label>
						</span>
					</div>
					<p class="product-detail-second-row">
						<label class="detail-label">주간횟수제한</label>
						<select class="product-detail-combobox">
								<option>무제한</option>
								<option>1회</option>
								<option>2회</option>
								<option>3회</option>
								<option>4회</option>
								<option>5회</option>
								<option>6회</option>
						</select>
					</p>
					<p class="product-detail-second-row">
						<label class="detail-label">판매정가</label>
						<input type="number" class="product-detail-num" style="width:200px;">&nbsp;원
					</p>
					<p class="product-detail-second-row">
						<label class="detail-label">할인가</label>
						<input type="number" class="product-detail-num" style="width:200px;">&nbsp;원
					</p>
				</div>
			</div>
			<div class="product-detail-buttonarea">
				<button type="button" class="reservation-bottom-btn">목록</button>
				<button type="button" class="reservation-bottom-btn">수정</button>
				<button type="button" class="reservation-bottom-btn">삭제</button>
			</div>
		</div>

	
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	</div>
</div>
</body>
</html>