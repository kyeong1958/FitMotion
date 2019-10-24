<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 회계관리 ]] ======================================== -->
	<!-- ============================ [[ 매출내역 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%> 
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/salesStatement.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<%
	Calendar cal = Calendar.getInstance();
	DecimalFormat df = new DecimalFormat("00");
	String y = df.format(cal.get(Calendar.YEAR));
	int year = cal.get(Calendar.YEAR);
	String mon = df.format(cal.get(Calendar.MONTH));
	int month = Integer.parseInt(mon);
	int quarter = 0;
	if(month >= 0 && month < 3) quarter = 1;
	if(month >= 3 && month < 6) quarter = 2;
	if(month >= 6 && month < 9) quarter = 3;
	if(month >= 9 && month < 12) quarter = 4;
%>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:'/account/salesStatement.fm?month=<%=y%>-<%=month+1%>'
			,success:function(data){
				$("#statement").html(data);
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

	});
	
</script>
<script>
/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
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

/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
	function thisyear(){
		$.ajax({
			url:'/account/salesStatement.fm?year=<%=year%>'
			,success:function(data){
				alert("성공");
				$("#statement").html(data);
			}
		});
	}
	function quarter(){
		$.ajax({
			url:'/account/salesStatement.fm?quarter=<%=quarter%>'
			,success:function(data){
				alert("성공");
				$("#statement").html(data);
			}
		});
	}
	function thismonth(){
		$.ajax({
			url:'/account/salesStatement.fm?month=<%=y%>-<%=month+1%>'
			,success:function(data){
				alert("성공");
				$("#statement").html(data);
			}
		});
	}
	function dateSEL(){
		var startDay = $('#datebox1').datebox('getValue');
		var endDay = $('#datebox2').datebox('getValue');
		alert(startDay+", "+endDay);
		if(startDay != '' && endDay != ''){
			alert("ajax");
			$.ajax({
				url:'/account/salesStatement.fm?startDay='+startDay+'&endDay='+endDay
				,success:function(data){
					alert("성공");
					$("#statement").html(data);
				}
			});
		}
		
	}
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회계 관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">매출 내역</a>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
		<div class="section">
			<div id="period_btns">
				<button class="btn blue small" onClick="thisyear()">당 해</button>
				<button class="btn blue small" onClick="quarter()">당 분기</button>
				<button class="btn blue small" onClick="thismonth()">당 월</button>
				<span style="margin-left: 1%">
					<input class="easyui-datebox" id="datebox1"/>
					<span>~</span>
					<input class="easyui-datebox" id="datebox2"/>
					<button class="btn blue small" onClick="dateSEL()">조회</button>
				</span>
			</div>
		</div>
<!-- ================================= [[ 홈 ]] =================================================== -->
<div id="statement">
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
									<th class="tableheader">결제번호</th>
									<th class="tableheader">결제일시</th>
									<th class="tableheader">구매회원</th>
									<th class="tableheader">HP</th>
									<th class="tableheader">결제수단</th>
									<th class="tableheader">정가</th>
									<th class="tableheader">할인금액</th>
									<th class="tableheader">결제금액</th>
									<th class="tableheader">미수금</th>
									<th class="tableheader">환불금액</th>
									<th class="tableheader">결제담당</th>
								</tr>
							</thead>
							<tbody>
								
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
