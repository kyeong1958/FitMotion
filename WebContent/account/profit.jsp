<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 매출등록   ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/profit.css">
<style type="text/css">
body{
	padding:0;
}
</style>
<%@ include file="/account/SearchMember.jsp"%>
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
<!-- <script type="text/javascript">
	$(document).ready(function(){
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
</script>  -->

	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">매출등록</a>
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

	<!-- ================================= [[ 화면전환 ]] =================================================== -->
