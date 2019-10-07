<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 입장내역 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입장내역</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/entranceStatement.css">
<script type="text/javascript">
	//데이트박스 
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
</script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#reservation-table").bootstrapTable({
			  pagination:'true'//페이지 네이션
	         ,paginationPreText:"Previous"
	         ,paginationNextText:"Next"
	         ,pageSize:2//기본 페이지 사이즈
	         ,pageList:[1, 2, 15, 20] //칸수

		});
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();
	    $('#reservation-table').DataTable({
	    	"paging":"simple_numbers"
	    });
	    $('.dataTables_length').addClass('bs-select');
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
			<div class="entrance-time" style="margin-top: 10px;">
				<span style="margin-right:10px">방문 시간대</span>
				<select class="time-combobox">
					<option value="">시</option>
					<option value="">00</option>
					<option value="">01</option>
					<option value="">02</option>
					<option value="">03</option>
				</select>
				<select class="time-combobox">
					<option value="">분</option>
					<option value="">00</option>
					<option value="">15</option>
					<option value="">30</option>
					<option value="">45</option>
				</select>
				<span>~</span>
					<select class="time-combobox">
					<option value="">시</option>
					<option value="">00</option>
					<option value="">01</option>
					<option value="">02</option>
					<option value="">03</option>
				</select>
				<select class="time-combobox">
					<option value="">분</option>
					<option value="">00</option>
					<option value="">15</option>
					<option value="">30</option>
					<option value="">45</option>
				</select>
			</div>
		</div>
<!-- ================================= [[ combobox ]] =================================================== -->
		<div class="section">
			<div class="combobox-area">
				<select class="accounting-combobox">
					<option value="">그룹</option>
					<option value="">0000</option>
					<option value="">헬스</option>
					<option value="">스피닝</option>
				</select>
				<select class="accounting-combobox">
					<option value="">성별</option>
					<option value="">남</option>
					<option value="">여</option>
				</select>
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
					<option value="">담당강사</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
					<option value="">이경애</option>
				</select>
				<span class="middle" style="margin-left: 755px;">
					<label id="reservationlabel">검색:</label>
					<input type="search" class="reservation_searchbox">
				</span>
			</div>
<!-- ================================= [[ combobox end ]] =================================================== -->
			<div class="row">
				<div class="entrance-table-top" style="padding-top:10px;">
					<table id="entrance-table" class="table table-bordered  table-striped">
						<thead>
							<tr>
								<th class="tableheader">회원번호</th>
								<th class="tableheader">회원이름</th>
								<th class="tableheader">휴대폰번호</th>
								<th class="tableheader">이용날짜</th>
								<th class="tableheader">입장시간</th>
								<th class="tableheader">퇴장시간</th>
								<th class="tableheader">이용장소</th>
								<th class="tableheader">강사이름</th>
								<th class="tableheader">이용권상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>ABCD-1234</td>
								<td>이경애</td>
								<td>010-1234-1234</td>
								<td>0000-00-00</td>
								<td>00:00</td>
								<td>00:00</td>
								<td>PT1룸</td>
								<td>이경애</td>
								<td>개인PT</td>
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
		</div>

<!-- ================================= [[ 화면전환 ]] =================================================== -->
	
	</div>
</div>
</body>
</html>