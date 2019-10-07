<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/CSS/Main.jsp"%>
<%@ include file="/CSS/TicketAdd.jsp"%>
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
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="trainer">이용권 및 상품 관리</a>
        <a href="#">상품 등록</a>
    </div>
   </div>
<!--========================== [[홈바 끝 ]] ========================== -->
<!--========================메인 상단부분===========================  -->    
<div id="tikAdd" class="section">
	<div id="tikAddcontbox" class="cont_box" style="max-width: 80%">
		<h3 id="tikAddh3">개인레슨 이용권</h3>
		<div id="tAcont_body" class="cont_body">
			<div class="service_type_set" data-template="appointment">
				<form>
					<fieldset id="tAfieldset">
						<legend id="tAlegend">개인레슨 이용권 등록</legend>
						<p>
							<label id="tAlabel1" class="wd_150">개인레슨 이용권 이름</label>
							<span data-msg="ticket.appointmentName">개인레슨</span>
						</p>
						<p>
							<label id="tAlabel2" class="wd_150">수업 진행시간</label>
							<span data-msg="ticket.classTime">50</span><span id="tAmin">분</span>
						</p>
						<p>
							<label id="tAlabel3" class="wd_150">장소</label>
							<span data-msg="ticket.space.spaceName">지정안됨</span>
						</p>
						<p>
							<label id="tAlabel4" class="wd_150">수업 설명</label>
							<span data-msg="ticket.description" style="display: inline-block; line-height: 25px">횟수를 모두 사용하거나 기간이 종료되거나 둘 중 한 가지가 종료되면 남은 기간이나 횟수에 관계없이 이용권은 만료됩니다.</span>
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<div data-template="productParent">
			<div id="tAcontbox"class="cont_box" style="margin-top: 20px; max-width: 80%; position: relative;" data-template="product">
				<h3 id="tAh3">이용권 상품 등록</h3>
				<div id="tAcontbody" class="cont_body">
					<div class="reservation_set">
						<form>
							<fieldset id="tAfieldset" style="margin-top: 0;">
								<legend id="tAlegend">이용권 상품 등록</legend>
								<p>
									<span id="tAlabel5" >기간 및 횟수</span>
									<span id="tAwd250" class="wd_250">
										<span>
											<input id="tAusePeriod" type="number" name="usePeriod" class="wd_100" title="기간" placeholder="예) 6">
											<select id="tAselect" name="usePeriodType" title="기간 유형" style="min-width: 70px;">
												<option value="M">개월</option>
												<option value="D">일</option>
											</select>
										</span>
									</span>
									<span id="tAlabel6" style="width: 70px; margin-left: 40px;">섹션 횟수</span>
									<span>
										<input type="radio" name="useNumberType" value="F" id="useNumberType_F_0" checked="">
										<label id="tAlabel15" for="useNumberType_F_0">무제한 이용가능</label>
										<input style="margin-left: 35px;" type="radio" name="useNumberType" value="I" id="useNumberType_I_0">
										<label id="tAlabel16" for="useNumberType_I_0">
											<span id="tAcount">횟수 설정</span>
											<span id="tAspanmid">
												<input id="tAinputmid" type="number" name="useNumber" class="wd_50" placeholder="예)6">
												회 이용가능
											</span>
										</label>
									</span>
								</p>
								<p>
									<span id="tAlabel7">상품이름</span>
									<input id="tAproname" type="text" name="productName" class="wd_400" title="개인레슨 상품 이름" placeholder="예) 퍼스널 트레이닝 20회 (3개월)">
								</p>
								<p>
									<span id="tAlabel8">상품 분류 선택</span>
									<select id="tAseqgr" name="seqPartnerProductGroup" style="min-width: 100px;">
										
				<option value="2466">
					필라테스 그룹
				</option>
			
				<option value="2467">
					필라테스 개인
				</option>
			
				<option value="2930">
					요가
				</option>
			
									</select>
								</p>
								<div id="tAadd" class="address">
									<span id="tAlabel9">당일중복이용</span>
									<p>
										<input type="radio" name="reentryYn" value="Y" id="reentryYn_Y_0" checked="">
										<label id="tAlabel17" for="reentryYn_Y_0">하루에 '여러번' 이용 가능합니다.</label>
										<br>
										<input type="radio" name="reentryYn" value="N" id="reentryYn_N_0">
										<label id="tAlabel18" for="reentryYn_N_0">하루에 '한번만' 이용 가능합니다.</label>
									</p>
								</div>
								<p id="tAmidp">
									<span id="tAlabel10">주간횟수제한</span>
									<select id="tAweekuse" name="limitNumWeekUse" id="limitNumWeekUse_0" style="min-width: 100px;">
										<option value="-1">무제한</option>
										<option value="1">1회</option>
										<option value="2">2회</option>
										<option value="3">3회</option>
										<option value="4">4회</option>
										<option value="5">5회</option>
										<option value="6">6회</option>
										<option value="7">7회</option>
									</select>
								</p>
								<div id="tAadd" class="address">
									<span id="tAlabel11">부가세상품</span>
									<p>
										<input type="radio" name="includeVat" value="Y" id="includeVat_Y_0" checked="">
										<label id="tAlabel19" for="includeVat_Y_0">네, 10%의 부가세가 부여되는 상품입니다.</label>
										<br>
										<input type="radio" name="includeVat" value="N" id="includeVat_N_0">
										<label id="tAlabel20" for="includeVat_N_0">아니요, 비과세 상품입니다.</label>
									</p>
								</div>
								<p>
									<label id="tAlabel12" for="price_0" class="wd_150">판매정가</label>
									<input id="price_0" type="text" name="price" data-tag="NORMAL" class="wd_150" style="text-align: center;">
									<span>원</span>
									<span class="c_blue" data-revenue-id="price_0" style="margin: 0 5px;"></span>
								</p>
								<p>
									<label id="tAlabel13" for="price_discount1_0" class="wd_150">할인가 1</label>
									<input id="price_discount1_0" type="text" name="price" data-tag="DISCOUNT" class="wd_150" style="text-align: center;">
									<span>원</span>
									<span class="c_blue" data-revenue-id="price_discount1_0" style="margin: 0 5px;"></span>
								</p>
								<p>
									<label id="tAlabel14" for="price_discount2_0" class="wd_150">할인가 2</label>
									<input id="price_discount2_0" type="text" name="price" data-tag="DISCOUNT" class="wd_150" style="text-align: center;">
									<span>원</span>
									<span class="c_blue" data-revenue-id="price_discount2_0" style="margin: 0 5px;"></span>
								</p>
								<p style="display: none;">
									<span class="label">판매기간</span>
									<span>
										<input type="radio" name="sellPeriod" value="F" id="sellPeriod_F_0" checked="">
										<label for="sellPeriod_F_0">무제한</label>
										<input type="radio" name="sellPeriod" value="L" id="sellPeriod_L_0">
										<label for="sellPeriod_L_0">
											<span>기간 설정</span>
											<span>
												<input type="text" name="startDt" class="calendar hasDatepicker" title="판매기간 시작일" readonly="" id="dp1569939137599">
												<span> ~ </span>
												<input type="text" name="endDt" class="calendar hasDatepicker" title="판매기간 종료일" readonly="" id="dp1569939137600">
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

	<div id="tAbtn" class="button_area">
		<a id="tAbtngray" href="/tickets/" class="btn gray">목록</a>
		
			<button id="tAbtnblue" type="button" class="btn blue" data-action="updateProduct">수정</button>
			<button id="tAbtnred" type="button" class="btn red" data-action="deleteProduct">삭제</button>
		
	</div>
</div>  
<!--========================메인 상단부분===========================  -->      
      </div>
</div>
</body>
</html>