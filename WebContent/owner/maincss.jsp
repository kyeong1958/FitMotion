<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
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
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/ 
.chart1 .con_top .date_set .prev {
    background: url(../img/btn/select_left.png) no-repeat center 50%;
    left: 0;
}
.section {
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}
.chart1_section .chart1_area {
    display: flex;
    flex-flow: row wrap;
    justify-content: flex-start;
    margin-left: -10px;
}

.chart1_section .chart1_area .itm {
    flex: 0 1 auto;
    margin: 0 0 20px 20px;
    width: calc((100% - 40px) / 2);
    border: 1px solid #BABBC2;
    border-radius: 5px;
    position: relative;
    overflow: hidden;
}
.chart1_section .chart1_area .itm .chart1_itm.f1 .chart1_itm.f2, .chart1_section .chart1_area .itm .chart1_itm.fr {
    width: 50%;
}
.chart1_section .chart1_area .itm .chart1_itm {
    height: 310px;
}
.chartfl {
    float: left;
}
.chartfr {
    float: right;
}
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/ 
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
         <!--  <div class="row sidemenutitle" id="analysis">고객센터</div>  -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      <div class="chart1.con_top">
		<div class="section">
			<form id="searchForm" name="searchForm" method="post" action="/manager/accounting/index">
				<div class="date_set">
					<span class="select">
						<select id="selSearchYear" name="selSearchYear">
							
						  		<option value="2016">2016 년</option>
							
						  		<option value="2017">2017 년</option>
							
						  		<option value="2018">2018 년</option>
							
						  		<option value="2019">2019 년</option>
							
						</select>
					</span>

					<span class="select">
						<select id="selSearchMonth" name="selSearchMonth">
							
								<option value="1">1 월</option>
							
								<option value="2">2 월</option>
							
								<option value="3">3 월</option>
							
								<option value="4">4 월</option>
							
								<option value="5">5 월</option>
							
								<option value="6">6 월</option>
							
								<option value="7">7 월</option>
							
								<option value="8">8 월</option>
							
								<option value="9">9 월</option>
							
								<option value="10">10 월</option>
							
								<option value="11">11 월</option>
							
								<option value="12">12 월</option>
							
						</select>
					</span>

					<a class="prev" id="prevMonth">이전 (월)</a>
					<a class="next" id="nextMonth">다음 (월)</a>
				</div>
			</form>

			<!-- div class="info">
				<div class="itm">
					<p><span>회원</span>
					<strong class="c_blue">
						총  명 / 유효 0 명
					</strong></p>
				</div>
				<div class="itm">
					<p><span>월 결제건수</span>
					<strong>
						총  건 / 신규  건 / 재등록  건
					</strong></p>
				</div>
				<div class="itm">
					<p><span>매출 (월)</span>
					<strong class="c_blue">
						총 0 원	/ 평균
						
							0 원
						
						
					</strong></p>
				</div>
				<div class="itm">
					<p><span>월 개인레슨 이용권 등록 세션수</span>
					<strong>
						총 0 회 / 평균 0 회 / 수업 진행 0 회
					</strong></p>
				</div>
				<div class="itm">
					<p><span>월 이용상품 등록기간</span>
					<strong>
						평균 0 일 / 입장 0 회
					</strong></p>
				</div>
				<div class="itm">
					<p><span>월 그룹수업 이용권 상품 등록기간</span>
					<strong>
						평균 0 일 / 입장 0 회
					</strong></p>
				</div>
			</div-->
		</div>
	</div>
    <div class="chart1_section">
    	<div class="section">
    		<div class="chart1_area">
    			<div class="itm" style="width:100%">
    				<h3>회원 일반 현황</h3>
    				<div class = "chart1_itm chartfl" id="selectMemSexChartUsageInfo" style="width:50%; overflow: visible; text-align: left">
    					<div class="amcharts-main-div" style="position: relative; width:100%; height:100%;">
    						<div class="amcharts-chart1-div1" style="overflow: hidden; position: absolute; text-align: left; width:700px; height:310px; padding: 0px; left: 0px; touch-action: auto;">
    						 그림그림
    						</div>
     						<div class="amChartsLegend amcharts-chart1-div1" style="overflow: hidden; position: absolute; text-align: left; width: 145px; height:80px; left: 500px; top:115px">
    						그림그림2
    						</div>
    						
    					</div>
    				</div>
    				<div class = "chart1_itm chartfr" id="selectAccumulateMemberSexChartUsageInfo" style="width:50%; overflow: visible; text-align: left">
    					<div class="amcharts-main-div" style="position: relative; width:100%; height:100%;">
    						<div class="amcharts-chart1-div1" style="overflow: hidden; position: absolute; text-align: left; width:700px; height:310px; padding: 0px; left: 0px; touch-action: auto;">
    						그림그림3
    						</div>
<!--     						<div class="amChartsLegend amcharts-chart1-div1" style="overflow: hidden; position: relative; text-align: left; width: 145px; height:80px; left: 700px; top:115px">
    						그림그림4
    						</div> -->
    					</div>
    				</div>
    			</div>
    			<div class="itm">
    				<h3>이용회원 연령비율</h3>
    				<div class="chart_itm" id="selectaaaaaaaaaaaaa" style="overflow: visible; text-align: left;">
    					<div class="amcharts-main-div" style="position: relative; width: 100%; height: 100%;">
    						<div class="amcharts-chart-div" style="overflow: hidden; position: absolute; text-align: left; width:384px; height:310px; padding: 0px; left: 0px;">
    						 그림2
    						</div>
    						<div class="amChartsLegend amcharts-chart-div" style="overflow: hidden; position: relative; text-align: left; width: 250px; height:334px; left: 383px; top:0px">
    						그림2
    						</div>
    						<div class="amchart-export-menu amcharts-export-menu-top-right amExportButton">
    							<ul></ul>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    			<div class="itm" style="width:100%">111111</div>
    		</div>
    	</div>
    </div>
      
      
      
      
      
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>
</body>
</html>