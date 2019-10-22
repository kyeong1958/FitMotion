<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/Member2/StatisticscssSales.jsp"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/StatisticsPrivateProg.css">
<!-- <link rel="stylesheet" type="text/css" href="../NewCSS/StatisticsPublicProg.css"> -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<c:set var="publicp" value="${requestScope.publicProg}" />

<style type="text/css">
body{
	padding:0%;
}
</style>
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
	
	var a = new Array();
	var b = new Array();
	var c = new Array();
		
 	//받아온 값을 넣기
		//jstl 사용 c:forEach == 반복문. 
		//Map<String,List<Map<String, String>>>
		
		<c:forEach items="${publicp}" var="map">
			<c:if test = "${map.key == '그룹강의매출'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						a.push("${map2.value}");
						${map2.value};
					</c:forEach>
				</c:forEach>
			</c:if> 
		</c:forEach>    
		
</script>

<div class="bar_area" id="SS-bar">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="management">리포트와 통계</a>
        <a >회원 통계</a>
    </div>		
    <!-- 메뉴바 누르는 부분 시작  -->
		<div class="homenav fr">
			<div class="homenav fr">
				<ul>
					<li><a class="n_04" href="javascript:ajax('../account/StatisticsSales.jsp')">매출통계</a></li>
					<li><a class="n_05" href="javascript:ajax('../account/StatisticsMember.jsp')">회원통계</a></li>
					<li><a class="n_01" href="javascript:ajax('../account/StatisticsPrivateProg.jsp')">개인레슨 통계</a></li>
					<li><a class="n_03 active" href="javascript:ajax('../account/StatisticsPublicProg.jsp')">그룹수업 통계</a></li>
				</ul>
			</div>
		</div>
		    
    <!-- 메뉴바 누르는 부분 끝 -->
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
<!-- ================================= [[ combobox ]] =================================================== -->
		<div class="combobox-area">
		
			<select class="accounting-combobox">
				<option value="">그룹</option>
				<option value="">0000</option>
				<option value="">헬스</option>
				<option value="">스피닝</option>
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
			
		</div>
</div>
<!-- ================================= [[ combobox end ]] =================================================== -->
		<div class="section">

				<div class="row">
					<div class="staff-salary-detail-box">
					 	<div class="staff-salary-detail-box-header">총 건수</div>
					 	<div class="staff-salary-detail-box-body">0 건</div>
					</div>
	<!-- 				<div class="staff-salary-detail-box">
					 	<div class="staff-salary-detail-box-header">총 결석 건수</div>
					 	<div class="staff-salary-detail-box-body">0 건</div>
					</div> -->
					<div class="staff-salary-detail-box">
					 	<!-- <div class="staff-salary-detail-box-header">총  출석</div> -->
					 	<div class="staff-salary-detail-box-header">총  매출</div>
					 	<div class="staff-salary-detail-box-body">0 건</div>
					</div>
					<div class="staff-salary-detail-box">
					 	<div class="staff-salary-detail-box-header">총 회원수</div>
					 	<div class="staff-salary-detail-box-body">0 명</div>
					</div>
					<div class="staff-salary-detail-box">
					 	<div class="staff-salary-detail-box-header">남자 회원수</div>
					 	<div class="staff-salary-detail-box-body">0 명</div>
					</div>
					<div class="staff-salary-detail-box">
					 	<div class="staff-salary-detail-box-header">여자 회원수</div>
					 	<div class="staff-salary-detail-box-body">0 명</div>
					</div>
					<div class="reservation_middle" id="reservationList_total" style="display: inline-block; width: 100%; margin-top: 50px;"> 
					<span class="middle">
						<select class="accounting-combobox">
							<option value="">그룹</option>
							<option value="">0000</option>
							<option value="">헬스</option>
							<option value="">스피닝</option>
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
						
					</span>
					
						<span class="middle">
							<label id="reservationlabel">검색:</label>
							<input type="search" class="reservation_searchbox">
							<button class="btn blue small">검색</button>
						</span>
						<span class="middle" style="width: 180px; float: right">
							<label id="reservationlabel">페이지 당</label>
								<select name="pagetotal" id="pagetotal">
									<option>10</option>
									<option>25</option>
									<option>50</option>
									<option>100</option>
								</select>
							<label id="reservationlabel">개 표시</label>
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
							<td>박지성</td>
							<td>010-1234-1234</td>
							<td>결제내역</td>
							<td>예약</td>
							<td>50,000</td>
							<td>-100,000</td>
							<td>0</td>
							<td>기성용</td>
							<td>환불,미수금</td>
						</tr>
						<tr>
							<td>ABCD-1234</td>
							<td>2019-09-26 00:00</td>
							<td>이청용</td>
							<td>010-1234-1234</td>
							<td>결제내역</td>
							<td>예약</td>
							<td>50,000</td>
							<td>-100,000</td>
							<td>0</td>
							<td>손흥민</td>
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
			