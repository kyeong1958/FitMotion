<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 매출내역 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출내역</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/salesStatement.css">
<style type="text/css">

</style>
</head>
<script type="text/javascript">
/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
//datebox 날짜형식 YYYY-MM-DD로 설정
 	 $.fn.datebox.defaults.formatter = function(date){
	    var y = date.getFullYear();
	    var m = date.getMonth()+1;
	    var d = date.getDate();
	    return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
	}
//datebox parser설정
 	 $.fn.datebox.defaults.parser = function(s){
	    var t = Date.parse(s);
	    if (!isNaN(t)){
	       return new Date(t);
	    } else {
	       return new Date();
	    }
	}
//datebox 한글화
 	$.fn.datebox.defaults.currentText = '오늘'
	$.fn.datebox.defaults.closeText = '닫기'
	$.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
	$.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']

/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
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
		
	 //선택가능날짜 범위 설정
	   $('#datebox1').datebox().datebox('calendar').calendar({
	       validator: function(date){
	           var now = new Date();
	           var d1 = new Date(now.getFullYear()-1, now.getMonth(), now.getDate());
	           var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	           return d1<=date && date<=d2;
	       }
	   });
	 //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
	   $('#datebox1').datebox({
	      onSelect: function(date){
	         firstDate = date;
	         $('#datebox2').datebox().datebox('calendar').calendar({
	               validator: function(date){
	                   var now = new Date();
	                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
	                   var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	                   return d1<=date && date<=d2;
	               }
	           });
	      }
	   });
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
			<a class="bar_menu" href="#">예약 내역</a>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
		<div class="tab-area">
			<div class="tab-session">
				<button class="tabBtn">이용권 상품 매출</button>
				<button class="tabBtn">일반 상품 매출</button>
			</div>
		</div>
		<div class="section">
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
				<span style="margin-left: 1%">
					<input class="easyui-datebox historydatebox" id="datebox1"/>
					<span>~</span>
					<input class="easyui-datebox historydatebox" id="datebox2"/>
					<button class="btn blue small">조회</button>
				</span>
			</div>
<!-- ================================= [[ combobox ]] =================================================== -->
			<div class="combobox-area">
				<select class="accounting-combobox">
					<option value="">상품 목록</option>
					<option value="19906">0000</option>
					<option value="17025">10:1 그룹레슨 (플라잉요가) 12회</option>
					<option value="17027">10:1 그룹레슨 (플라잉요가) 36회</option>
					<option value="17029">10:1 그룹레슨 (플라잉요가) 72회</option>
					<option value="18973">1:1 TEST 20회 3개월</option>
					<option value="20117">1:1 TEST 무제한 1개월</option>
				</select>
				<select class="accounting-combobox">
					<option value="">매출 분류</option>
					<option value="">0000</option>
					<option value="">신규결제</option>
					<option value="">재결제</option>
					<option value="">카드취소</option>
					<option value="">이체/현금 환불</option>
				</select>
				<select class="accounting-combobox">
					<option value="">담당자</option>
					<option value="">0000</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
				</select>
				<select class="accounting-combobox">
					<option value="">결제형태</option>
					<option value="">카드</option>
					<option value="">이체</option>
					<option value="">현금</option>
				</select>
			</div>
		</div>
<!-- ================================= [[ combobox end ]] =================================================== -->
		<div class="section">
			<div class="row">
				<div class="col-lg-6  sales-calculation-section" style="padding-top: 30px">
					<div class="col-lg-4 sales-calculation">
						<div>
							<div class="sales-calculation-title">총 이용권상품 매출</div>
							<p class="sales-calculation-sum" style="padding-top: 16px">0원</p>
						</div>
					</div>
					<div class="col-lg-4 sales-calculation">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 이용권상품 결제금액</div>
							<p class="sales-calculation-sum" style="padding-top: 16px">&nbsp;&nbsp;&nbsp;0원</p>
						</div>
					</div>
					<div class="col-lg-4">
						<div>
							<div class="sales-calculation-title">&nbsp;&nbsp;&nbsp;총 이용권상품 환불
															 <br>&nbsp;&nbsp;&nbsp;(현금/이체)</div>
							<p class="sales-calculation-sum">&nbsp;&nbsp;&nbsp;0원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6" style="padding-top: 5%;text-align:right;">
					<div class="sales-calculation-standby title">
						<span>미수 잔액 </span>
					</div>
					<div class="sales-calculation-standby number">
						<span style="display:inline-block">0건</span>
					</div>
					<div class="sales-calculation-standby sum">
						<span>0원</span>
					</div>
				</div>
			</div>
<!-- ================================= [[ table left ]] =================================================== -->
			<div class="row">
				<div class="col-lg-6" style="padding:0;padding-right: 20px;">
					<h3 class="sales-calculation-table-title">결제수단</h3>
					<table class="sales-calculation-table">
						<thead>
							<tr>
								<td class="sales-calculation-table-header" colspan="3">매출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">신용카드
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">이체
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">현금
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">이체/현금 환불
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
							</tr>
						</tbody>
					</table>
				</div>
<!-- ================================= [[ table right ]] =================================================== -->
				<div class="col-lg-6" style="padding:0;padding-left: 20px;">
					<h3 class="sales-calculation-table-title">매출분류</h3>
					<table class="sales-calculation-table">
						<thead>
							<tr>
								<td class="sales-calculation-table-header" colspan="3">매출</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sales-calculation-table-column1">신규결제
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1">재 결제
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">카드취소
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="color: #FF5722 !important;">이체/현금 환불
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2" style="color: #FF5722 !important;">0원</td>
							</tr>
							<tr>
								<td class="sales-calculation-table-column1" style="background: #F2F2F2;">합계
									<p style="display: inline-block;float: right;">0건</p>
								</td>
								<td class="sales-calculation-table-column2" style="background: #F2F2F2;">0원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
<!-- ================================= [[ TABLE BOTTOM ]] =================================================== -->
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
									<th class="tableheader">주문번호</th>
									<th class="tableheader">결제일시</th>
									<th class="tableheader">구매회원</th>
									<th class="tableheader">휴대폰 번호</th>
									<th class="tableheader">결제내역</th>
									<th class="tableheader">상태</th>
									<th class="tableheader">정가</th>
									<th class="tableheader">할인금액</th>
									<th class="tableheader">결제금액</th>
									<th class="tableheader">미수금</th>
									<th class="tableheader">환불금액</th>
									<th class="tableheader">결제담당</th>
									<th class="tableheader">결제메모</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>ABCD-1234</td>
									<td>2019-09-26 00:00</td>
									<td>이경애</td>
									<td>010-1234-1234</td>
									<td>결제내역</td>
									<td>예약</td>
									<td>200,000</td>
									<td>50,000</td>
									<td>50,000</td>
									<td>-100,000</td>
									<td>0</td>
									<td>이경애</td>
									<td>환불,미수금</td>
								</tr>
								<tr>
									<td>ABCD-1234</td>
									<td>2019-09-26 00:00</td>
									<td>이경애</td>
									<td>010-1234-1234</td>
									<td>결제내역</td>
									<td>예약</td>
									<td>200,000</td>
									<td>50,000</td>
									<td>50,000</td>
									<td>-100,000</td>
									<td>0</td>
									<td>이경애</td>
									<td>환불,미수금</td>
								</tr>
							</tbody>
						</table>
					</div>
<!-- ================================= [[ TABLE BOTTOM ]] =================================================== -->
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