<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 매출등록   ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출등록</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/NewView/SearchMember.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/spending.css">
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
	<!-- ================================= [[ left ]] =================================================== -->
			<div class="row spending-box">
				<div class="row">
					<div class="col-sm-6" style="border-right:1px solid #BABBC2;padding-right:30px;">
						<h4 class="spending-box-left">매출등록</h4>
						<div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">회원명</label>
								<span>
									<input type="text" class="spending-text" style="width:260px;">
								</span>
								<span>
									<button type="button" class="btn_cancle search_mem" style="margin-left:10px" data-toggle="modal" data-target="#searchMember">회원찾기</button>
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">최근 결제 이력</label>
								<span>
									<label>패키지 레슨</label>
								</span>
							</div>
							<div align="right">
								<span style="color: #2196F3 !important;margin-right:20px;">2019-09-30</span>
								<span style="color: #2196F3 !important;">1,500,000원</span>
							</div>
							<h4 class="spending-box-left" style="margin-top:10px;">결제 상품 정보</h4>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">상품명</label>
								<span>
									<select class="spend-combobox">
										<option value="">결제 상품 선택</option>
										<option value="">PT 1개월</option>
										<option value="">PT 3개월</option>
										<option value="">PT 6개월</option>
										<option value="">스피닝</option>
										<option value="">요가</option>
									</select>
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">상품가격</label>
								<span>
									<input type="number" class="spending-text" style="width:260px;">원
								</span>
							</div>
							
							<div>
								<table class="spend-table">
									<tr class="spend-table-row">
										<td class="spend-table-column">카드</td>
										<td class="spend-table-content">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">현금</td>
										<td class="spend-table-content">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">이체</td>
										<td class="spend-table-content">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">할인</td>
										<td class="spend-table-content">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">총 결제금액</td>
										<td class="spend-table-content" style="color: #2196F3 !important;">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">미수금</td>
										<td class="spend-table-content" style="color: #FF5722 !important;">0원</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-sm-6" style="padding-left:30px;">
						<div style="padding:0 0 5px">
							<label class="spend-box-right-column">결제 담당자 선택</label>
							<span>
								<select class="spend-combobox">
									<option value="">결제 담당자 선택</option>
									<option value="">이경애</option>
									<option value="">이경애</option>
									<option value="">이경애</option>
									<option value="">이경애</option>
									<option value="">이경애</option>
									<option value="">이경애</option>
								</select>
							</span>
						</div>
						<div style="padding:0 0 5px">
							<label class="spend-box-right-column">이용 시작일</label>
							<span>
								<span class="easyui-datebox" id="datebox"></span>
							</span>
						</div>
						<div style="padding:0 0 5px">
							<label class="spend-box-right-column">결제일</label>
							<span>
								<span class="easyui-datebox" id="datebox"></span>
							</span>
						</div>
						<div style="padding:0 0 5px">
							<label class="spend-box-right-column"></label>
							<span>
								<input type="number" class="spending-text" style="width:260px;">
							</span>
						</div>
						<div style="padding-top:3%">
						<%
							int cnt = 1;
							String count = "0";
							for(int i=0;i<4;i++){
						%>
							<div>
						<%
								for(int j=0;j<3;j++){
									if(cnt <10 && cnt>0){
						%>
								<button type="button" class="spend-button"><%=cnt %></button>
						<%
										if(cnt<9 && cnt>0){
											cnt++;
										}
										else if(cnt == 9){
											cnt = 0;
										}
									}else{
						%>
								<button type="button" class="spend-button"><%=count %></button>
						<%	count = "0"+count;	}/// end of elsse
									}/// end of inner for
						%>
							</div>
						<%	}	%>
						</div>
						<div>
							<h4 class="spending-box-payment-title">결제 수단 선택</h4>
							<button class="spending-payment-method card">카드</button>
							<button class="spending-payment-method cash">현금</button>
							<button class="spending-payment-method bankTransfer">이체</button>
							<button class="spending-payment-method bankTransfer">할인(%)</button>
							<button class="spending-payment-method bankTransfer">할인(원)</button>
						</div>						
					</div>
				</div>
			<div class="row spending-payment-bottom">
				<button type="button" class="btn_cancle add">결제하기</button>
				<button type="button" class="btn_cancle cancle">취소</button>
			</div>
			</div>
		</div>
	</div>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
</body>
</html>