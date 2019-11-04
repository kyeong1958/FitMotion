<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8");
	//response.setContentType("text/html;charset=UTF-8");
%>
    <!-- ============================ [[ 예약테이블 ]] ======================================== -->
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
	    return y+'/'+(m<10 ? "0"+m:m)+'/'+(d<10 ? "0"+d:d);
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
	
	function reservationSearch(){
/* 		var sdate = $("#datebox1").datebox('getValue');
		var edate = $("#datebox2").datebox('getValue');
		var pageSize = $("#pageSize").val(); 
		alert(sdate+", "+edate);*/
		var keyword = $("#keyword").val();
		alert(keyword);
		var dataForm = $("#f_search").serialize();
		dataForm=decodeURIComponent(dataForm);
		alert(dataForm);
		$.ajax({
			method:'get'
			,data:dataForm
			,url:"/schedule/reservation.fm"
			,success:function(data){
				$("#reservationTable").html(data);
			}
		}); 
	}
	function reservationBTN(period){
		alert(period);
		$.ajax({
			url:"/schedule/reservation.fm?period="+period
			,success:function(data){
				alert(data);
				//$("#reservationTable").html(data);
			}
		}); 
	}
</script>
<script>
	$(document).ready(function(){
		$.ajax({
			url:"/schedule/reservation.fm?pageSize=15"
			,success:function(data){
				$("#reservationTable").html(data);
			}
		});
		 //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
		   $('#datebox1').datebox({
		      onSelect: function(date){
		         firstDate = date;
		         $('#datebox2').datebox().datebox('calendar').calendar({
		               validator: function(date){
		                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
		                   return d1<=date;
		               }
		           });
		      }
		   });
		   $(function(){
			   $("#pageSize").change(function(e){
				   var pageSize = $("#pageSize").val();
				   alert("페이지사이즈"+pageSize);
				   $.ajax({
					   url:"/schedule/reservation.fm?pageSize="+pageSize
					  ,success:function(data){
						  $("#reservationTable").html(data);
					  }   
				   });
			   });
		   })
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
			<form id="f_search">
				<div class="top_bar">
					<label class="top_bar_label">예약날짜</label>
					<button class="btn rbtn" onClick="reservationBTN('year')">당 해</button>
					<button class="btn rbtn" onClick="reservationBTN('month')">당 월</button>
					<button class="btn rbtn" onClick="reservationBTN('today')">오늘</button>
					<input class="easyui-datebox calendar" id="datebox1">
					<span>~</span>
					<input class="easyui-datebox calendar" id="datebox2">
					<button type="button" class="btn_search" onClick="reservationSearch()">검색</button>
				</div>
				<div class="row">
					<div class="reservation_middle" id="reservationList_total">
						<span class="middle">
							<label id="reservationlabel">페이지 당</label>
								<select name="pageSize" id="pageSize">
									<option value="10">10</option>
									<option value="15" selected>15</option>
									<option value="20">20</option>
									<option value="25">25</option>
								</select>
							<label id="reservationlabel">개 표시</label>
						</span>
						<span class="middle">
							<label id="reservationlabel">검색:</label>
							<input type="text" class="reservation_searchbox" name="keyword" id="keyword" style="width: 20%;">
							<button type="button" class="btn_search" onClick="reservationSearch()">검색</button>
						</span>
					</div>
				</div>
			</form>
			<div class="row" id="reservationTable">
			</div>
		</div>

<!-- ================================= [[ 화면전환 ]] =================================================== -->
