<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 입장내역 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/entranceStatement.css">
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
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">내역 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">입장 내역</a>
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
