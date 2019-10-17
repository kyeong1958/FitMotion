<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
    <!-- ============================ [[ 예약테이블 ]] ======================================== -->
<%@ include file="../common/JEasyUICommon.jsp"%>
 <%
 		List<Map<String,Object>> schedule = (List<Map<String,Object>>)request.getAttribute("schedule");
  %>
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
/////////////광현//////////////
	$(document).ready(function(){
	/*//////////////////////////////  */	
 		$.ajax({
			 method:'get'
			,url:'/schedule/reservation.fm'
			,success:function(data){
				alert("ajax성공");
			}
 		}); 
	}
/////////////광현//////////////
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
			<form id="date" name="date">
				<div class="top_bar" style="width: 2005px;">
					<label class="top_bar_label">예약날짜</label>
					<input class="easyui-datebox calendar date" id="datebox1">
					<span>~</span>
					<input class="easyui-datebox calendar date" id="datebox2">
					<button type="button" class="btn_search" onClick="javascript:search()">검색</button>
				</div>
			</form>
			<div class="row" >
				<div class="reservation_middle" id="reservationList_total" style="    width: 2005px;"	>
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
						<label id="reservationlabel" onClick="javascript:" >검색:</label>
						<input type="search" class="reservation_searchbox">
					</span>
				</div>
			</div>
			<!-- ============================================================================= -->
			<div id=reservation>
						<div class="row" id="reservation_table " >
							<table  class="table table-bordered  table-striped" style=" width: 2005px;">
								<!-- /////////////광현////////////// -->
								<thead>
									<tr>
										<th class="tableheader">예약날짜</th>
										<th class="tableheader">예약시간</th>
										<th class="tableheader">예약회원</th>
										<th class="tableheader">전화번호</th>
										<th class="tableheader">예약한 수업 또는 강사</th>
										<th class="tableheader">상품이름</th>
										<th class="tableheader">이용권이름</th>
										<th class="tableheader" >출결상태</th>
									</tr>
								</thead>
								<tbody >
								<%
								for(int i=0;i<schedule.size();i++){
									Map<String,Object> pMap = schedule.get(i);
								%>
									<tr>
 										<td id= "appointment" name="appointment"><%=pMap.get("APPLI_DATE") %></td>
										<td id="resv_time" name="resv_time"><%=pMap.get("APPLI_START_TIME") %></td>
										<td id="resv_name" name="resv_name"><%=pMap.get("MEM_NAME") %></td>
										<td id="resv_hp" name="resv_hp"><%=pMap.get("MEM_HP") %></td>
										<td id="resv_coach" name="resv_coach"><%=pMap.get("STAFF_NAME") %></td>
										<td id="resv_product_name" name="resv_product_name"><%=pMap.get("PRO_NAME") %> </td>
										<td id="resv_voucher_name" name="resv_voucher_name"><%=pMap.get("TICKET_NAME") %></td>
										<td id="resv_attendance_status"name="resv_attendance_status"><%=pMap.get("ATT_CHECK") %></td>
									</tr>
								</tbody>
									<%
								}
							
								%>
									<!-- /////////////광현////////////// -->
							</table>
						</div>
				</div>
						<!-- ============================================================================= -->
			<div class="row pagination">
				<div class="pagination_top">
					전체 11개 항목 중 1 부터 10 까지 표시
								<nav aria-label="Page navigation example" style="text-align: center;">
									<ul class="pagination-sm" id="pagination"></ul>
								</nav>
				</div>
			</div>
		</div>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
