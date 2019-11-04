<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/common/JEasyUICommon.jsp"%>  --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/PromotionAdd.css">
<%
	/* int size = 0;
	Map<String,Object> tadtlList = new HashMap<>();
	if(request.getAttribute("tadtlList") != null){
		tadtlList = (Map<String,Object>)request.getAttribute("tadtlList");
		size = 0;//주의 로우의 수가 아니라 컬럼의 수
		if(tadtlList!=null && tadtlList.size()>0){
			tadtlList.get("TICKET_NUM");
		}
		
	} */
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
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	<script type="text/javascript">
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
		 $('#databox2').datebox({
			onSelect: function(data){
				
			}
		}); 
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
	   $('#datebox2').datebox({
	      onSelect: function(date){ }
	   });
	/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
		$(document).ready( function() {
			 //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
			/* 이용권 추가하기 누르면 한개더 뜸 */
			/* 	var firstText = $("#prolist1 #ticket_name").val();
				document.getElementById("proproductname").value = firstText;
				var test = $(".procontbox").parent().html();
				var probtngreen = $('#probtngreen')[0];
				probtngreen.addEventListener('click', function() {
					count++;
					$(".proaddbox").append(
							"<div id="+"prolist"+count+">" + test
									+ "</div>");
				}) */
					//	var jsonDoc = JSON.parse(data);
						//alert(jsonDoc);
					//	for( var i=0;i<jsonDoc.length;i++){
						//	alert(jsonDoc[i]);
						//	$("#ticket_name").append("<option value="+jsonDoc[i]+">"+jsonDoc[i])
					//	}
				//ticketList가져오기
				$.ajax({
					url:'/program/ticketList.fm'
					,success:function(data){
						//alert("성공");
						var jsonDoc = JSON.parse(data);
						for(var i=0;i<jsonDoc.length;i++){
							//alert(jsonDoc[i].TICKET_NUM);
							$("#ticket_name").append("<option value='"+jsonDoc[i].TICKET_NUM+","
																	 +jsonDoc[i].TICKET_PRICE+","
																	 +jsonDoc[i].TICKET_NAME+","
																	 +jsonDoc[i].TICKET_CLASS_TIME+"'>"+jsonDoc[i].TICKET_NAME+"</option>");
						}
					}
			   });
			  $(function(){
				//이용권 선택에 따른 수업시간, 가격, 총액 넣기
				 $(document).on('change','#ticket_name',function(){
					 	var values = $(this).val();
					 	var val = values.split(",");
						var num = val[0];
						var price = val[1];
						var pricecom = comma(price);
						var name = val[2];
						var time = val[3];
						var properiod = $(this).parent().parent().find(".wd_100").val();
						$(this).parent().parent().find(".wd_100").val(time);
						var proprice = $(this).parent().parent().find(".wd_150").val();
						$(this).parent().parent().find(".wd_150").val(pricecom);
						//판매정가																									
						if ($("#proprice").val()) {
							var beprice = $("#proprice").val();
							var reprice = removeComma(price);
							var realprice = Number(reprice)+Number(price);
							var fixprice = comma(realprice);
							$("#proprice").val(fixprice);
						} else {
							$("#proprice").val(pricecom);
						}
						//결제총액																									
						if ($("#price_discount2_0").val()) {
							var beprice = $("#proprice").val();
							var reprice = removeComma(price);
							var realprice = Number(reprice)+Number(price);
							var fixprice = comma(realprice);
							$("#price_discount2_0").val(fixprice);
							$("#resultprice").val(realprice);
						} else {
							$("#price_discount2_0").val(pricecom);
							$("#resultprice").val(price);
							
						}
						//패키지상품이름
						if($("#proproductname").val()){
							var packname = $("#proproductname").val();
							packname += '+'+name;
							$("#proproductname").val(packname);
						} else{
							$("#proproductname").val(name);
						}
						
				 })
			}) 
		});
		
	//	var count = 2;
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

		////안감
		function prosave(){
			var formData = $("#f_proinsert").serialize();
			 $.ajax({
				method:"POST"
				,data:formData
				,url:"/program/proIns.fm"
				,success:function(data){
					$("#ticketmain").html(data);
					$.ajax({
						methid:'get'
						,url:"/program/proSEL.fm"
						,success:function(data){
							$("#tasel").html(data);
							$.ajax({
								method : "POST",
								url : "/program/prornk.fm",
								success : function(data) {
									$("#pro_rank").html(data);
								}
							});
							
						}
					});
				}
			}); 
		}
		
		/* 닫기 클릭시 해당 박스 제거 */
		function remove(obj){
			var del = $(obj).parent().parent().parent().remove();
		}
		/* 이용권 추가하기 누르면 한개더 뜸 */
		function create(){
			var $prolist = $(".prolist").clone();
			var prolist = document.getElementById('prolist').cloneNode(true);
			$(prolist).find("#prouseperiod").val('');
			$(prolist).find("#proprice_").val('');
			document.getElementById('plus').appendChild(prolist);
		}
		//할인액 작성시 이벤트
		function discount(){
			var pri = $("#proprice").val();//정가
			var dis = $("#price_discount1_0").val();//할인금액
			var totprice = Number(removeComma(pri))-Number(dis);//결제총액
			var percent = Number(dis) / Number(removeComma(pri)) *100;//할인율
			$("#price_discount2_0").val(comma(totprice));
			$("#resultprice").val(totprice);
			$("#price_discountper1_0").val(percent.toFixed(2));
		}
		//할인율 작성시 이벤트
		function discountper(){
			var pri = $("#proprice").val();//정가
			var per = $("#price_discountper1_0").val()/100;//할인율
			var totprice = Number(removeComma(pri))*(1-Number(per));//결제총액
			$("#price_discount2_0").val(comma(totprice));
			$("#resultprice").val(totprice);
			var discount = Number(removeComma(pri)) - Number(totprice);//할인금액
			$("#price_discount1_0").val(comma(discount));
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
				<div id="proh3">패키지 상품에 포함되는 이용권 옵션 설정</div>
				<!-- 여기부터 설정부분 -->
					<div id="proplusbox">
						<div id="prolist" class="prolist">
							<div class="fbox">
					<!-- 		 	<div class="cont_box" style="max-width: none; position: relative; margin: 15px 0;"> -->
								<div id="procontboxh3">이용권
									<button id="proclose" class="close" onClick="remove(this)">
										닫기
										<!--  <img id="proimg" src="/images/cancel.png" alt="닫기"> -->
									</button>
								</div>
								<div class="cont_body" style="padding: 10px;">
									<div class="reservation_set" style="margin-left: 25px;">
									<!-- 	<form> -->
											<!-- <fieldset id="profieldset">
												<legend id="prolegend">이용권</legend> -->
												<p id="prop1">
													<span id="prolabel1">이용권 이름</span> 
													<!-- <input type="text" id="ticket_name" onkeyup="proadd()"> -->
													<select id="ticket_name" class="ticket_name">
													</select>
												</p>
												<p id="prop2">
													<span id="prolabel3">수업 시간</span>
													 <span id="prowd250"class="wd_250"> 
													 <input id="prouseperiod" type="text" class="wd_100">
													
													</span>
												</p>
												<p id="prop3">
													<label id="prolabel7" for="price_2">이용권의 가격 </label> 
													<input id="proprice_" type="text" class="wd_150" placeholder="0" onkeyup="call()">
												<span>원</span>
												</p>
									<!-- 		</fieldset> -->
									<!-- 	</form> -->
									</div>
								</div>
					<!-- 			</div> -->
							</div>
						</div>
						<div id="plus"></div>
					</div>
					<!--================================[[디데일 부분 박히는 거 끝 ]] ============================================  -->
					<!--=====================================[[[ 프로모션 추가 생성 시작  ]] ===============================================  -->
				
					<!--=====================================[[[ 프로모션 추가 생성 끝  ]] ===============================================  -->
				<!--=============================================[[이용권 버튼부분 시작 ]]=========================================================   -->
				<div id="probtnarea" class="button_area">
				<!-- 	<button id="probtngreen" type="button" class="btn green">이용권 추가하기</button> -->
					<button id="createbtn" onClick="create()" type="button" class="btn green">이용권 추가하기</button>
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
							<form id="f_proinsert">
								<fieldset id="prodieldset2">
									<legend id="prolegend2">패키지 상품 이름과 가격 설정</legend>
									<div id="prop4" style="margin: 5px;">
										<span id="prolabel8">패키지 상품 이름</span> 
										<input id="proproductname" name="prom_name" type="text" placeholder="예) 요가+스피닝1개월">
									</div>
									<div style="margin: 5px;">
										<label id="prolabel8">시작일</label>
										<input class="easyui-datebox" id="datebox1" style="height: 100%" name="prom_start_date">
									</div>
									<div style="margin: 5px;">
										<label id="prolabel8">마지막일</label>
										<input class="easyui-datebox" id="datebox2" style="height: 100%" name="prom_end_date">
									</div>
									
									<div style="margin: 5px;">
										<label id="prolabel17" for="price">판매정가</label>
										<input id="proprice" type="text" class="wd_150" placeholder="0" readonly>
										<span>원</span>
										<!-- <div style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
										</div> -->
									</div>
									<div style="margin: 5px;">
										<label for="price_discount1_0" style="margin-right: 78px;">할인가</label>
										<input id="price_discount1_0" type="text" class="wd_150"
											style="text-align: center;" onkeyup="discount()"> <span>원</span>
										<div
											style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
										</div>
									</div>
									<div style="margin: 5px;">
										<label for="price_discountper1_0" style="margin-right: 78px;">할인율</label>
										<input id="price_discountper1_0" type="text" class="wd_150"
											style="text-align: center;" onkeyup="discountper()"> <span>%</span>
										<div
											style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
										</div>
									</div>
									<div style="margin: 5px;">
										<label for="price_discount2_0" style="margin-right: 61px;">결제 총액</label> 
										<input type="hidden" id="resultprice" name="resultprice"/> 
											<input id="price_discount2_0" name="prom_dis_price" type="text" class="wd_150"
											style="text-align: center;" readonly> <span>원</span>
										<div style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"></div>
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
			<button class="btn gray" onclick="tickback()">목록</button>
			<button type="button" class="btn blue" onclick="prosave()" >저장</button>
		</div>
	</div>
	<!--===================================[[[전체]]================================================  -->
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>

