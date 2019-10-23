<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/NewCSS/PromotionAdd.css"%>
<%
		Map<String,Object> tadtlList = (Map<String,Object>)request.getAttribute("tadtlList");
		int size = 0;//주의 로우의 수가 아니라 컬럼의 수
		if(tadtlList!=null && tadtlList.size()>0){
			tadtlList.get("TICKET_NUM");
		}
%>

<style type="text/css">
body {
	padding: 0%;
}

.container-fluid {
	padding-right: 0px;
	padding-left: 0px;
}
</style>


<div id="mainboard">
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	<script type="text/javascript">
		var count = 2;
		//콤마넣는함수																									
		function comma(str) {
			str = String(str);
			return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
		}

		//콤마제거함수																									
		function removeComma(str) {
			n = parseInt(str.replace(/,/g, ""));
			return n;
		}

		////콤마를 먼저 제거후 콤마삽입한후 더하기																									
		var minus;
		function call() {
			var removecomma = null;
			minus = removeComma($("#proprice").val())
					- removeComma($("#price_discount1_0").val());

			for (var i = 1; i <= count; i++) {
				if ($("#prolist" + i + " #proprice_").val() === '') {
					$("#prolist" + i + " #proprice_").val("0")
				}

				removecomma += Number(removeComma($(
						"#prolist" + i + " #proprice_").val()));
			}
			document.getElementById("proprice").value = comma(removecomma);

			//판매정가에 찍힌값 총액에 찍히게하기																									
			if ($("#proprice").val()) {
				document.getElementById("price_discount2_0").value = $(
						"#proprice").val();
			}
			//판매정가 - 할인가 = 총액																									
			if ($("#price_discount1_0").val()) {
				document.getElementById("price_discount2_0").value = comma(minus);
			}
		}

		/* 이용권 추가하기 누르면 한개더 뜸 */
		$(document).ready(
				function() {
					var test = $(".procontbox").parent().html();
					var probtngreen = $('#probtngreen')[0];
					probtngreen.addEventListener('click', function() {
						count++;
						$(".proaddbox").append(
								"<div id="+"prolist"+count+">" + test
										+ "</div>");

					})
				});
		
		
		function proadd(){
		
					if($("#ticket_name").text()!=null){
						$("#ticket_name").html($("#proproductname").val());
					}
		
		}
		
		
		$(function() {

			/*     $(".search_bar .search_add").hide();																							
			$(".search_bar .search_add").show(); */

			$("#prolist2").click(function() {
				$("#prolist2").removeClass("active").css("color", "#333");
				$(this).addClass("active").css("display", "none");

			});
		});
	
		function a() {
			alert("너먹히니" + $('.proaddbox').length);//응																								
			$(".proaddbox").each(function(index, item) {
				alert(index + ", " + item);
			});

		}
	</script>




<div id="pro_add">
	<!--=========================[[ 홈바 시작 ]]========================== -->
	<div class="bar_area">
		<div class="homefl">
			<a id="home">홈</a> <a id="management">프로모션상품 관리</a>
		</div>
	</div>
	<!--========================== [[홈바 끝 ]] ========================== -->
	<!--================================================[[패키지상품에 포함된 이용설정 시작  ]]=========================================  -->
	<div class="service_make">
		<div id="prosection" class="section">
			<div id="procolumn" class="column">
				<h3 id="proh3">패키지 상품에 포함되는 이용권 옵션 설정</h3>
				<!-- 여기부터 설정부분 -->
				
					<div id="prolist1">
							<div class="cont_box"
								style="max-width: none; position: relative; margin: 15px 0;">
								<h3 id="procontboxh3">이용권</h3>
								<button id="proclose" class="close">
									닫기
									<!--  <img id="proimg" src="/images/cancel.png" alt="닫기"> -->
								</button>
								<div class="cont_body" style="padding: 10px;">
									<div class="reservation_set" style="margin-left: 25px;">
										<form>
											<fieldset id="profieldset">
												<legend id="prolegend">이용권</legend>
												<p id="prop1">
													<span id="prolabel1">이용권 이름</span> 
													<input type="text" id="ticket_name" value="<%=tadtlList.get("TICKET_NAME") %>">
												</p>
												<p id="prop2">
													<span id="prolabel3">수업 시간</span>
													 <span id="prowd250"class="wd_250"> 
													 <input id="prouseperiod" type="text" class="wd_100" value=" <%=tadtlList.get("TICKET_CLASS_TIME") %>" >
													
													</span>
												</p>
												<p id="prop3">
													<label id="prolabel7" for="price_2">이용권의 가격 </label> 
													<input id="proprice_" type="text" class="wd_150" value="	<%=tadtlList.get("TICKET_PRICE") %>" placeholder="0" onkeyup="call()"> 
													
												<span>원</span>
												</p>
											</fieldset>
										</form>
									</div>
								</div>
							</div>
					
					</div>
					<!--================================[[디데일 부분 박히는 거 끝 ]] ============================================  -->
					<!--=====================================[[[ 프로모션 추가 생성 시작  ]] ===============================================  -->
					<div class="proaddbox">
					<div id="prolist2">
						<div id="procontbox" class="procontbox">
							<div class="cont_box"
								style="max-width: none; position: relative; margin: 15px 0;">
								<h3 id="procontboxh3">이용권</h3>
								<button id="proclose" class="close">
									닫기
									<!--  <img id="proimg" src="/images/cancel.png" alt="닫기"> -->
								</button>
								<div class="cont_body" style="padding: 10px;">
									<div class="reservation_set" style="margin-left: 25px;">
										<form>
											<fieldset id="profieldset">
												<legend id="prolegend">이용권</legend>
												<p id="prop1">
													<span id="prolabel1">이용권 이름</span> 
													<input type="text" id="proaddname" onkeyup="proadd()">
												</p>
												<p id="prop2">
													<span id="prolabel3">기간 및 횟수</span> <span id="prowd250" class="wd_250"> 
														<input id="prouseperiod"
														type="text" class="wd_100" title="기간" placeholder="예) 6">
														<select id="proselect3" title="기간 유형" style="min-width: 70px;">
															<option value="M">개월</option>
															<option value="D">일</option>
														</select>
													</span>
												</p>
												<p id="prop3">
													<label id="prolabel7" for="price_2">이용권의 가격 </label> 
													<input id="proprice_" type="text" class="wd_150" placeholder="0" onkeyup="call(this.val)">
													<span>원</span>
												</p>
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					
					
					
					<!--=====================================[[[ 프로모션 추가 생성 끝  ]] ===============================================  -->
					
					
				</div>
				<!--=============================================[[이용권 버튼부분 시작 ]]=========================================================   -->
				<div id="probtnarea" class="button_area">
					<button id="probtngreen" type="button" class="btn green">이용권
						추가하기</button>
				</div>
				<!--=============================================[[이용권 버튼부분 끝]]=========================================================   -->
			</div>
			<!--================================================[[패키지상품에 포함된 이용설정 끝 ]]=========================================  -->
			<!--==============================[[패키지 이름과 가격 설정 시작]]============================================================================  -->
			<div id="procontbox2" class="cont_box">
				<div>

					<h3 id="proh3_2">패키지 상품 이름과 가격 설정</h3>
					<button class="close"
						style="position: absolute; top: 18px; right: 20px;">
						<img alt="닫기">
					</button>
					<div id="procontbody2" class="cont_body">
						<div class="reservation_set">
							<form>
								<fieldset id="prodieldset2">
									<legend id="prolegend2">패키지 상품 이름과 가격 설정</legend>
									<p id="prop4">
										<span id="prolabel8">패키지 상품 이름</span> 
										<input id="proproductname" type="text"  placeholder="예) 요가+스피닝1개월">
									</p>
									<p>
										<span id="prolabel9">상품 분류 선택</span> <select id="proselect4">
											<option value="2466">필라테스 그룹</option>
											<option value="2467">필라테스 개인</option>
											<option value="2930">요가</option>
										</select>
									</p>
									<div>
										<label id="prolabel17" for="price">판매정가</label> <input
											id="proprice" type="text" class="wd_150" placeholder="0"
											readonly> <span>원</span>

										<div
											style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
										</div>
									</div>
									<div>
										<label for="price_discount1_0" style="margin-right: 78px;">할인가</label>
										<input id="price_discount1_0" type="text" class="wd_150"
											style="text-align: center;" onkeyup="call()"> <span>원</span>
										<div
											style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
										</div>
									</div>
									<div>
										<label for="price_discount2_0" style="margin-right: 61px;">결제
											총액</label> <input id="price_discount2_0" type="text" class="wd_150"
											style="text-align: center;" readonly> <span>원</span>
										<div
											style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"></div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--==============================[[패키지 이름과 가격 설정 끝]]============================================================================  -->
		</div>
		<div id="proBut" class="button_area">
			<button class="btn gray">목록</button>
			<button type="button" class="btn blue">저장</button>
		</div>
	</div>
	<!--===================================[[[전체]]================================================  -->
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
</div>

