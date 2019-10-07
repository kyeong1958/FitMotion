<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 예약테이블 ]] ======================================== -->
<%@ include file="../common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/reservation.css">
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
			<a class="bar_menu" href="#">예약 내역</a>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
		<div class="section">
			<div class="top_bar">
				<label class="top_bar_label">예약날짜</label>
				<input class="easyui-datebox date">
				<span>~</span>
				<input class="easyui-datebox date">
				<button type="button" class="btn_search">검색</button>
			</div>
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
				<table id="reservation-table" class="table table-bordered  table-striped">
					<thead>
						<tr>
							<th class="tableheader">예약날짜</th>
							<th class="tableheader">예약시간</th>
							<th class="tableheader">예약회원</th>
							<th class="tableheader">전화번호</th>
							<th class="tableheader">예약한 수업 또는 강사</th>
							<th class="tableheader">상품이름</th>
							<th class="tableheader">이용권이름</th>
							<th class="tableheader">이용상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>010-2680-6595</td>
							<td>이경애</td>
							<td>개인레슨 10회</td>
							<td>개인레슨</td>
							<td>예약</td>
						</tr>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>010-2680-6595</td>
							<td>이경애</td>
							<td>개인레슨 10회</td>
							<td>개인레슨</td>
							<td>예약</td>
						</tr>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>010-2680-6595</td>
							<td>이경애</td>
							<td>개인레슨 10회</td>
							<td>개인레슨</td>
							<td>예약</td>
						</tr>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>010-2680-6595</td>
							<td>이경애</td>
							<td>개인레슨 10회</td>
							<td>개인레슨</td>
							<td>예약</td>
						</tr>
						<tr>
							<td>1995-09-24</td>
							<td>16:51</td>
							<td>이경애</td>
							<td>010-2680-6595</td>
							<td>이경애</td>
							<td>개인레슨 10회</td>
							<td>개인레슨</td>
							<td>예약</td>
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
