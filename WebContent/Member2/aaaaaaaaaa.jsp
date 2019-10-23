<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/Member2/PromotionAddcss.jsp"%>

<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
    padding-right: 0px;
    padding-left: 0px;
}
.nav{
   height: 60px;
    font-size: 18px;
   background-color:#42485A;
   color: white;
}
.side{
   padding-left:0%;
}
#sidebar{
   background-color: #42485A;
   font-size: 18px;
   color:white;
    padding: 0%;
    height: 100%;
    width: 100%;
    position: fixed;
    z-index: 1;
    width: 235px;
    position: fixed;
    z-index: 1;
    text-align: center;
    vertical-align: middle;
}
.row {
    margin-right: 0px;
    margin-left: 0px;
}
#gym_name{
   height: 80px;
}
#login_name{
   height: 50px;
}
.sidelabelbottom{
   height: 30px;
    margin-bottom: 15%;
}

.sidemenu{
   height:50px;
}
.sidemenutitle {
   height:50px;
   background-color: white;
   color:#42485A;
    padding: 5%;
}
.nav .bar{
   height:100%;
   padding: 1%;
    text-align: center;
}
#mainboard{
    margin-left: 235px;
    padding: 0%;
}
</style>
</head>
<script type="text/javascript">
   function sidemenu(id){
      alert(this.val());
      $(id).css("background-color","white");
      $(id+"> a").css("color","#42485A");
      $(".sidemenu")
   }
   function menu(menu){/* menu=# */
      alert("menu click");
      if('.sales' == menu){
         $('.sales').show();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","white");
         $(".menutitle-sales > span").css("color","#42485A");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.member' == menu){
         $('.sales').hide();
         $('.member').show();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","white");
         $(".menutitle-member > span").css("color","#42485A");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.analysis' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').show();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","white");
         $(".menutitle-analysis > span").css("color","#42485A");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.service' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').show();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","white");
         $(".menutitle-service > span").css("color","#42485A");
      }
   }
</script>
<body>
<script type="text/javascript">
   $(document).ready(function(){
      $(".sales").hide();
      $(".member").hide();
      $(".analysis").hide();
      $(".service").hide();
   });
</script>
<div class="container-fluid">
   <div class="row nav">
      <div class="col-sm-2"style="border:1px soild">
         <div class="col-sm-9"><img src="../images/logo.png"/></div>
      </div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">매출관리</span></div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">헬스장관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">직원관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">회원관리</span></div>
      <div class="col-sm-1 bar menutitle-service"><span onClick="menu('.service')">고객센터</span></div>
      <div class="col-sm-4"></div>
   </div>
      <div class="col-lg-1" id="sidebar">
         <div class="row">
            <div class="row" id="gym_name">지점명</div>
            <div class="row" id="login_name">이름</div>
            <div class="row sidelabelbottom">
               <div class="col-lg-6">로그아웃</div>
               <div class="col-lg-6">MyPage</div>
            </div>
         </div>
         <div class="row sales">
      <!--       <div class="row sidemenutitle" id="salesmanagement">매출관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
         </div>
         <div class="row member">
      <!--       <div class="row sidemenutitle" id="salesmanagement">회원관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
   
      <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
         </div>
         <div class="row analysis">
         <!--    <div class="row sidemenutitle" id="analysis">통계분석</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
         </div>
         <div class="row service">
         <!--    <div class="row sidemenutitle" id="analysis">고객센터</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<!--=========================[[ 홈바 시작 ]]========================== -->

			<div class="bar_area">
				<div class="homefl" >
					<a id="home">홈</a> 
					<a id="management">프로모션상품 관리</a>
				</div>
			</div>



			<!--========================== [[홈바 끝 ]] ========================== -->

			<!-- ================================= [[ 화면전환 ]] =================================================== -->

			<div class="service_make">

				<div id="prosection" class="section"
					style="margin: 0 auto; max-width: max-content; min-width: 1400px;">

					<div id="procolumn" class="column"
						style="width: 780px; height: 750px; overflow-y: scroll;">

						<h3 id="proh3">패키지 상품에 포함되는 이용권 옵션 설정</h3>



						<div id="procontbox" data-template-parent="productPasses">
							<div class="cont_box"
								style="max-width: none; position: relative; margin: 15px 0;"
								data-template="productPass">

								<h3 id="procontboxh3"
									style="display: block; margin: 0; padding: 10px;">이용권</h3>

								<button id="proclose" class="close"
									style="position: absolute; top: 8px; right: 20px;"
									data-action="close">

									<img id="proimg" src="/images/cancel.png" alt="닫기">

								</button>

								<div class="cont_body" style="padding: 10px;">

									<div class="reservation_set">

										<form>

											<fieldset id="profieldset" style="margin-top: 0;">

												<legend id="prolegend">이용권</legend>

												<p id="prop1">

													<span id="prolabel1">이용권 종류 선택</span> <select
														id="proselect1" name="serviceType" title="이용권 종류 선택"
														style="width: 175px !important; min-width: auto;">

														<option value="">선택해주세요</option>

														<option value="APPOINTMENT">개인레슨</option>

														<option value="CLASS">그룹수업</option>

														<option value="PLACE">장소</option>

														<option value="OPTION">옵션</option>

													</select> <span id="prolabel2"
														style="width: 70px; margin-left: 40px;">이용권 선택</span> <select
														id="proselect2" name="seqPartnerPass" title="이용권 선택"
														style="width: 190px !important; min-width: auto;">

														<option value="">선택해주세요</option>

													</select>

												</p>

												<p id="prop2">

													<span id="prolabel3">기간 및 횟수</span> <span id="prowd250"
														class="wd_250"> <span> <input
															id="prouseperiod" type="number" name="usePeriod"
															class="wd_100" title="기간" placeholder="예) 6"> <select
															id="proselect3" name="usePeriodType" title="기간 유형"
															style="min-width: 70px;">

																<option value="M">개월</option>

																<option value="D">일</option>

														</select>

													</span>

													</span> <span id="prolabel4"
														style="width: 70px; margin-left: 40px;">섹션 횟수</span> <span>

														<input type="radio" name="useNumberType" value="F"
														id="useNumberType_F_2" checked=""> <label
														id="prolabel5" for="useNumberType_F_2">무제한 이용가능</label> <input
														type="radio" name="useNumberType" value="I"
														id="useNumberType_I_2"> <label id="prolabel6"
														for="useNumberType_I_2"> <span>횟수 설정</span> <span
															id="prospanmid"> <input id="prousenumber"
																type="number" name="useNumber" class="wd_50"
																placeholder="예)6"> 회 이용가능

														</span>

													</label>

													</span>

												</p>

												<p id="prop3">

													<label id="prolabel7" for="price_2">이용권의 가격 설정</label> <input
														id="proprice_2" type="text" name="price" value="0"
														class="wd_150" style="text-align: center;"> <span>원</span>

												</p>

											</fieldset>

										</form>

									</div>

								</div>

							</div>

						</div>



						<div id="probtnarea" class="button_area"
							style="border-top: none; margin: 0; padding: 10px 0;">

							<button id="probtngreen" type="button" class="btn green"
								data-action="addProductPassTemplate">이용권 추가하기</button>

						</div>

					</div>



					<div id="procontbox2" class="cont_box"
						data-template-parent="product"
						style="display: inline-block; width: 530px; margin-left: 15px;">

						<div data-template="product">

							<h3 id="proh3_2">패키지 상품 이름과 가격 설정</h3>

							<button class="close"
								style="position: absolute; top: 18px; right: 20px;"
								data-action="delete">

								<img src="/resources/img/btn/close_x_blue.png" alt="닫기">

							</button>

							<div id="procontbody2" class="cont_body">

								<div class="reservation_set">

									<form>

										<fieldset id="prodieldset2" style="margin-top: 0;">

											<legend id="prolegend2">패키지 상품 이름과 가격 설정</legend>

											<p id="prop4">

												<span id="prolabel8">패키지 상품 이름</span> <input
													id="proproductname" type="text" name="productName"
													title="패키지 상품 이름" placeholder="예) 퍼스널 트레이닝">

											</p>

											<p>

												<span id="prolabel9">상품 분류 선택</span> <select id="proselect4"
													name="seqPartnerProductGroup" style="min-width: 100px;">

													<option value="2466">필라테스 그룹</option>



													<option value="2467">필라테스 개인</option>



													<option value="2930">요가</option>

												</select>

											</p>

											<div>

												<label id="prolabel17" for="price">판매정가</label> <input
													id="proprice" type="text" name="price" data-tag="NORMAL"
													class="wd_150"
													style="text-align: center; background-color: #e8e7e8;"
													disabled=""> <span>원</span>

												<div
													style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"
													data-template="unitPrice"></div>

											</div>

											<div>

												<label for="price_discount1_0">할인가 1</label> <input
													id="price_discount1_0" type="text" name="price"
													data-tag="DISCOUNT" class="wd_150"
													style="text-align: center;"> <span>원</span>

												<div
													style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"
													data-template="unitPrice"></div>

											</div>

											<div>

												<label for="price_discount2_0">할인가 2</label> <input
													id="price_discount2_0" type="text" name="price"
													data-tag="DISCOUNT" class="wd_150"
													style="text-align: center;"> <span>원</span>

												<div
													style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"
													data-template="unitPrice"></div>

											</div>

											<p style="display: none;">

												<span class="label">판매기간</span> <span> <input
													type="radio" name="sellPeriod" value="F" id="sellPeriod_F_"
													checked=""> <label for="sellPeriod_F_">무제한</label>

													<input type="radio" name="sellPeriod" value="L"
													id="sellPeriod_L_"> <label for="sellPeriod_L_">

														<span>기간 설정</span> <span> <input type="text"
															name="startDt" class="calendar hasDatepicker"
															title="판매기간 시작일" readonly="" id="dp1569998577351">

															<span> ~ </span> <input type="text" name="endDt"
															class="calendar hasDatepicker" title="판매기간 종료일"
															readonly="" id="dp1569998577352">

													</span>

												</label>

												</span>

											</p>

										</fieldset>

									</form>

								</div>

							</div>

						</div>

					</div>

				</div>



				<div class="button_area" style="margin-top: 0;">

					<a href="/tickets/" class="btn gray">목록</a>



					<button type="button" class="btn blue" data-action="regist">저장</button>





					<button type="button" class="btn blue" data-action="update"
						style="display: none;">수정</button>

					<button type="button" class="btn red" data-action="delete"
						style="display: none;">삭제</button>



				</div>

			</div>









	
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>
</body>
</html>