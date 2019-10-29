<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ============================ [[ 지출등록   ]] ======================================== -->
<link rel="stylesheet" type="text/css" href="../NewCSS/spending.css">
<style type="text/css">
body {
	padding: 0%;
}
</style>
<script type="text/javascript">
	//데이트박스 
	//datebox 날짜형식 YYYY-MM-DD로 설정
	$.fn.datebox.defaults.formatter = function(date) {
		var y = date.getFullYear();
		var m = date.getMonth() + 1;
		var d = date.getDate();
		return y + '-' + (m < 10 ? "0" + m : m) + '-' + (d < 10 ? "0" + d : d);
	}
	//datebox parser설정
	$.fn.datebox.defaults.parser = function(s) {
		var t = Date.parse(s);
		if (!isNaN(t)) {
			return new Date(t);
		} else {
			return new Date();
		}
	}
	//datebox 한글화
	$.fn.datebox.defaults.currentText = '오늘'
	$.fn.datebox.defaults.closeText = '닫기'
	$.fn.calendar.defaults.weeks = [ '일', '월', '화', '수', '목', '금', '토' ]
	$.fn.calendar.defaults.months = [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
			'8월', '9월', '10월', '11월', '12월' ]

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	var protext = "";
	var g_val = "";
	var g_Card = "";
	var g_Money = "";
	var g_Fund = "";
	var g_dis = "";
	var g_dismoney = "";
	var alltotal = "";
	var g_nomoney = "";
	/* 키보드로 입력시 콤마  */
	function comma(obj) {
		// 콤마( , )의 경우도 문자로 인식되기때문에 콤마를 따로 제거한다.
		var deleteComma = obj.value.replace(/\,/g, "");
		// isFintite() ==> 숫자면 true // isNAN()는 문자면 ==> true
		if (isFinite(deleteComma) == false) {
			alert("문자는 입력하실 수 없습니다.");
			obj.value = "";
			return false;
		}
		// 기존에 들어가있던 콤마( , )를 제거한 이 후의 입력값에 다시 콤마( , )를 삽입한다.
		obj.value = commatogeter(commaremove(obj.value));
	}

	// 천단위 이상의 숫자에 콤마( , )를 삽입하는 함수
	function commatogeter(str) {
		str = String(str);
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
	}
	// 콤마( , )가 들어간 값에 콤마를 제거하는 함수
	function commaremove(str) {

		str = String(str);
		return str.replace(/[^\d]+/g, "");
	}
	/* 숫자 타입 버튼틀릭시 text박스에 값 넣기 */
	function number(num) {
		g_val += num;
		g_val = String(g_val);
		var temp = g_val.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
		document.getElementById("etextname").value = temp;
	}
	/* 지우기 눌렀을때 전체 삭제  */
	function clean() {
		g_val = "";
		document.getElementById("etextname").value = g_val;
	}

	function removeComma(str) {
		n = parseInt(str.replace(/,/g, ""));
		return n;
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////	
	function card() {
		g_card = $("#etextname").val();

		//alert(g_card);
		if ($("#t_card").text() == "") {
			document.getElementById("t_card").value = g_card;
			if ($("#total_buy").text() == "") {
				document.getElementById("total_buy").value = g_card;
			}
			g_val = "";
		}

		if (g_money != null) {

			commatogeter(document.getElementById("total_buy").value) = Number(removeComma(document
					.getElementById("total_buy").value))
					+ Number(removeComma(g_money));
		}

	}

	/* 현금 눌렀을때 */
	function money() {
		g_money = $("#etextname").val();

		//alert(g_card);
		if ($("#t_money").text() == "") {
			document.getElementById("t_money").value = g_money;
			if ($("#total_buy").text() == "") {
				document.getElementById("total_buy").value = g_money;
			}
			g_val = "";
		}

		if (g_card != null) {
			commatogeter(document.getElementById("total_buy").value) = Number(removeComma(document
					.getElementById("total_buy").value))
					+ Number(removeComma(g_card));
		}
	}

	/* 이체 눌렀을때 */
	function fund() {
		g_Fund = $("#etextname").val();
		if ($("#t_fund").text() == "") {
			document.getElementById("t_fund").value = g_Fund;
			if ($("#nomoney").text() == "") {
				document.getElementById("nomoney").value = g_Fund;
			}
			g_val = "";
		}
		document.getElementById("total_buy").value = Number(removeComma(document
				.getElementById("total_buy").value))
				- Number(removeComma(g_Fund));
	}
	/*지출 insert*/
	function spendInser() {
		var formData = $("#spendingInsert").serialize();
		alert(formData);
		if ($("#t_card").val() != 0 && $("#nomoney").val() !=0) {
			formData += "&ge_pay_method=카드&ge_state=결제요청"
		
		} else if ($("#t_money").val() != 0 && $("#nomoney").val() != 0) {
			formData += "&ge_pay_method=현금 &ge_state=결제요청"
		} else if ($("#t_fund").val() != 0 && $("#nomoney").val() != 0) {
			formData += "&ge_pay_method=이체 &ge_state=결제요청"
		} 
		
		 else if ($("#t_card").val() != 0 && $("#nomoney").val() == 0) {
			formData += "&ge_pay_method=카드&ge_state=결제완료"
		}
		 else if ($("#t_money").val() != 0 && $("#nomoney").val() == 0) {
			formData += "&ge_pay_method=현금&ge_state=결제완료"
		}
		 else if ($("#t_fund").val() != 0 && $("#nomoney").val() == 0) {
			formData += "&ge_pay_method=이체&ge_state=결제완료"
		}
		console.log(formData);
		//////////////////////////
		$.ajax({
			method : "POST",
			data : formData,
			url : "/account/spendingInsert.fm",
			success : function(data) {
				$("#spending").html(data);
			}
		});
	}
	function spending(exb_num) {
		alert(exb_num);
		$("#sexb_num").val(exb_num);
	}
	function staffsel(ge_biller){
		alert(ge_biller);
		 data = ge_biller.split(",")
		  $("#sge_biller").val(data[1]);
	}
	
	
	function miji(){
		g_nomoney = $("#etextname").val();

		 if ($("#nomoney").text() == "") {
			document.getElementById("nomoney").value = g_nomoney;
			if ($("#nomoney").text() == "") {
				document.getElementById("nomoney").value = g_nomoney;

			}
			g_val = "";
		}
		document.getElementById("total_buy").value = Number(removeComma(document
				.getElementById("total_buy").value))
				- Number(removeComma(g_nomoney));
	}
</script>




<div id="spending">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<div class="bar_area">
	<a class="bar_menu" href="#">홈</a> <img
		src="../images/location_arrow.png"> <a class="bar_menu" href="#">지출등록</a>
</div>
<!-- ================================= [[ 홈 끝 ]] =================================================== -->
<div class="section">
	<!-- ================================= [[ left ]] =================================================== -->
	<form id="spendingInsert" onSubmit="return false">
		<input type="hidden" name="exb_num" id="sexb_num">
		<input type="hidden" name="ge_biller" id="sge_biller">
		<div class="row spending-box">
			<div class="row">
				<div class="col-sm-6"
					style="border-right: 1px solid #BABBC2; padding-right: 30px;">
					<h4 class="spending-box-left">지출등록</h4>
					<div>
						<div style="padding: 0 0 5px">
							<label class="spend-box-left-column">지출분류</label> <span> 
							<select
								class="spend-combobox" id="breakcombo"
								onchange="spending(this.value)">
									<!-- 지출 분류 Ajax -->
							</select>
							</span>
						</div>
						<div style="padding: 0 0 5px">
							<label class="spend-box-left-column">지출내역</label> <span> <input
								type="text" name="ge_story" class="spending-text"
								style="width: 260px;">
							</span>
						</div>
						<div style="padding: 0 0 5px">
							<label class="spend-box-left-column">지출증빙 선택</label> <span>
								<select class="spend-combobox">
									<option value="">지출증빙</option>
									<option value="">일반영수증</option>
									<option value="">현금형수증</option>
									<option value="">세금계산서</option>
									<option value="">기타</option>
							</select>
							</span>
						</div>
						<div style="padding: 0 0 5px">
							<label class="spend-box-left-column">금액</label> <span> <input
								type="text" name="ge_price" class="spending-text"
								style="width: 260px;">
							</span>
						</div>
						<div style="padding: 0 0 5px">
							<label class="spend-box-left-column">수량</label> <span> <input
								type="text" name="ge_count" class="spending-text"
								style="width: 260px;">
							</span>
						</div>

						<div>
							<table class="spend-table">
								<tr class="spend-table-row">
									<td class="spend-table-column">카드</td>
									<td class="spend-table-content"><input type="text"
										id="t_card" style="text-align: right; border: none;">
										원</td>
								</tr>
								<tr class="spend-table-row">
									<td class="spend-table-column">현금</td>
									<td class="spend-table-content"><input type="text"
										id="t_money" style="border: none; text-align: right;">원</td>
								</tr>
								<tr class="spend-table-row">
									<td class="spend-table-column">이체</td>
									<td class="spend-table-content"><input type="text"
										id="t_fund" style="border: none; text-align: right;">원</td>
								</tr>
								<tr class="spend-table-row">
									<td class="spend-table-column">총 결제금액</td>
									<td class="spend-table-content"
										style="color: #2196F3 !important;">
										<div>
											<span>
											 <input type="text"
												id="total_buy" name="ge_totprice"
												style="border: none; text-align: right;">원
											</span>
										</div>
									</td>
								</tr>
								<tr class="spend-table-row">
									<td class="spend-table-column">미지급금</td>
									<td class="spend-table-content"
										style="color: #FF5722 !important;">
										<input type="text"
										id="nomoney" value="0" name="ge_ref_amount"
										style="border: none; text-align: right;">원</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-6" style="padding-left: 30px;">
					<div style="padding: 0 0 5px">
						<label class="spend-box-right-column">결제 담당자 선택</label> <span>
							<select class="spend-combobox" name="" id="selectpro2" onchange="staffsel(this.value)">
								<!--콤보박스 AJAX  -->
						</select>
						</span>
					</div>
					<div style="padding: 0 0 5px">
						<label class="spend-box-right-column">결제일자</label> <span> <!-- <span class="easyui-datebox" id="datebox" type="text"></span> -->
							<input type="text" name="ge_date">
						</span>
					</div>
					<div style="padding: 0 0 5px">
						<label class="spend-box-right-column"></label> <span> 
						<input
							onkeyup="comma(this)" id="etextname" value="" type="text"
							class="spending-text" style="width: 260px;">
							<button type="button" onclick="clean()">지우기</button>
						</span>
					</div>
					<div style="padding-top: 3%">
						<%
							int cnt = 1;
							String count = "0";
							for (int i = 0; i < 4; i++) {
						%>
						<div>
							<%
								for (int j = 0; j < 3; j++) {
										if (cnt < 10 && cnt > 0) {
							%>
							<button onclick="number(value)" value=<%=cnt%> type="button"
								class="spend-button"><%=cnt%></button>
							<%
								if (cnt < 9 && cnt > 0) {
												cnt++;
											} else if (cnt == 9) {
												cnt = 0;
											}
										} else {
							%>
							<button type="button" onclick="number(value)" value=<%=count%>
								class="spend-button"><%=count%></button>
							<%
								count = "0" + count;
										} /// end of elsse
									} /// end of inner for
							%>
						</div>
						<%
							}
						%>
					</div>
					<div>
						<h4 class="spending-box-payment-title">결제 수단 선택</h4>
						<button class="spending-payment-method card" onclick="card()">카드</button>
						<button class="spending-payment-method cash" onclick="money()">현금</button>
						<button class="spending-payment-method bankTransfer" onclick="fund()">이체</button>
						<button class="spending-payment-method nopay" onclick="miji()">미지급금</button>
					</div>
				</div>
			</div>
			<div class="spending-payment-bottom">
				<button type="button" class="btn_cancle add" onclick="spendInser()">등록</button>
				<button type="button" class="btn_cancle cancle">취소</button>
			</div>
		</div>
	</form>
</div>

<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
