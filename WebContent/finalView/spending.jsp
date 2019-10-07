<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 지출등록   ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/spending.css">
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

	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">지출등록</a>
		</div>
	<!-- ================================= [[ 홈 끝 ]] =================================================== -->
		<div class="section">
	<!-- ================================= [[ left ]] =================================================== -->
			<div class="row spending-box">
				<div class="row">
					<div class="col-sm-6" style="border-right:1px solid #BABBC2;padding-right:30px;">
						<h4 class="spending-box-left">지출등록</h4>
						<div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">지출분류</label>
								<span>
									<select class="spend-combobox">
										<option value="">지출선택</option>
										<option value="">매입지출 등록</option>
										<option value="">일반지출 등록</option>
										<option value="">인건비지출 등록</option>
										<option value="">센터특별지출 등록</option>
										<option value="">일반지출 등록</option>
										<option value="">세금과공과</option>
									</select>
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">거래처 선택</label>
								<span>
									<input type="text" class="spending-text" style="width:260px;">
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">지출명</label>
								<span>
									<input type="text" class="spending-text" style="width:260px;">
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">지출증빙 선택</label>
								<span>
									<select class="spend-combobox">
										<option value="">지출증빙</option>
										<option value="">일반영수증</option>
										<option value="">현금형수증</option>
										<option value="">세금계산서</option>
										<option value="">기타</option>
									</select>
								</span>
							</div>
							<div style="padding:0 0 5px">
								<label class="spend-box-left-column">수량</label>
								<span>
									<input type="number" class="spending-text" style="width:260px;">
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
										<td class="spend-table-column">정가</td>
										<td class="spend-table-content">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">총 결제금액</td>
										<td class="spend-table-content" style="color: #2196F3 !important;">0원</td>
									</tr>
									<tr class="spend-table-row">
										<td class="spend-table-column">미지급금</td>
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
							<label class="spend-box-right-column">결제일자</label>
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
							<button class="spending-payment-method nopay">미지급금</button>
						</div>						
					</div>
				</div>
				<div class="spending-payment-bottom">
					<button type="button" class="btn_cancle add">등록</button>
					<button type="button" class="btn_cancle cancle">취소</button>
				</div>
			</div>
		</div>

	<!-- ================================= [[ 화면전환 ]] =================================================== -->
