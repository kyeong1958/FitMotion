<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/Member2/StatisticscssSales.jsp"%>
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
<script type="text/javascript">
$(function () {

    $(".homenav .fr ul li a").click(function () {
        $(".homenav .fr ul li a").removeClass("active").css("color", "#333");
         $(this).addClass("active").css("color", "#fff",
        								 "background-color","#22B2FB");
        $(".search_bar .search_add").hide();
  

    });
});



</script>





<!--=========================[[ 홈바 시작 ]]=============================================== -->
<div class="bar_area" id="SS-bar">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="management">리포트와 통계</a>
        <a >매출 통계</a>
    </div>		
    <!-- 메뉴바 누르는 부분 시작  -->
		    	<div class="homenav fr">
			<div class="homenav fr">
				<ul>
					<li><a  class="n_04 active" >매출통계</a></li>
					<li><a  class="n_05" >회원통계</a></li>
					<li><a  class="n_01" >개인레슨 통계</a></li>
					<li><a class="n_03" >그룹수업 통계</a></li>
				</ul>
			</div>
		</div>
		    
		    
    <!-- 메뉴바 누르는 부분 끝 -->
</div>

<!--========================== [[홈바 끝 ]] ============================================= -->
 <!--==========================[[날짜 부분 시작 ]]==========================================  -->     
	 		<div class="con_top" id="SS-top">
			<div class="section">
				<form>
					<div class="date_set">
						<span class="select">
							<select>
								
							  		<option value="2016">2016 년</option>
								
							  		<option value="2017">2017 년</option>
								
							  		<option value="2018">2018 년</option>
								
							  		<option value="2019">2019 년</option>
								
							</select>
						</span>
	
						<span class="select">
							<select >
								
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
	
						<a class="prev" >이전 (월)</a>
						<a class="next" >다음 (월)</a>
					</div>
				</form>
			</div>
		</div>
	 
 
 
 <!--==========================[[날짜 부분 끝 ]]==========================================  -->     
 <!--==================================[[첫번째 그래프 박스 큰것 시작 ]]==========================  -->
 	<div class="chart_section" id="SS-section">
 		<div class="section">
 			<div class="chart_area">
 			
 			<!-- 회원 일반 현황  시작  -->
 				<div class="itm" style="width:100%; height:400px">
 				
		          <h3>회원 일반 현황</h3>
		          
		          <!-- 그래프 넣을 자리  -->
		          
		          <!-- 여기안에게 넣어주세요 수근 씨  -->
		          <!-- <canvas id="stackChart2" style="width: 50%; height: 70%; max-width: 700px"></canvas> -->
		          
		          <a style="width: 550px; height: 275px; float: left; margin-left:5%; margin-right:15%"><canvas id="stackChart"></canvas></a>
		          <a style="width: 550px; height: 275px; float: left; " ><canvas id="stackChart2"></canvas></a>
		           
		          <!-- 그래프 넣을 자리  -->
		        </div>
		        
		 			<!-- 회원 일반 현황  끝-->		
		        <!-- 이용회원 연령비율 시작   -->
        
        
        
		        <div class="itm" style="height:400px">
		          <h3>이용회원 연령비율</h3>
		          <!-- 그래프 영역 -->
		          
		          
		          <a style="width: 550px; height: 250px; float: left"><canvas style="margin:2%" id="doughnutChart" ></canvas></a> 
		          
		          
		          
		          <!-- // 그래프 영역 -->
		        </div>
		        
		        
        
		        <!-- 이용회원 연령비율 끝   -->
		        <!-- 누적회원 연령비율 시작   -->
		        <div class="itm">
		          <h3>누적회원 연령비율</h3>
		          <!-- 그래프 영역 -->
		          
		          
		          
		          <a style="width: 550px; height: 250px; float: left"><canvas id="doughnutChart2"></canvas></a>
		          
		          
		          <!-- // 그래프 영역 -->
		        </div>
		        
		        <!-- 누적회원 연령비율 끝   -->
		        
		        <!-- 이용회원 연령비율 끝   -->
		        <div class="itm" style="height:400px">
		          <h3>매출 현황</h3>
		          <!-- 그래프 영역 -->
		          
		          
		          <a style="width: 600px; height: 270px; float: left; margin-left:5%"><canvas id="barchart"></canvas></a> 
		          
		          
		          
		          <!-- // 그래프 영역 -->
		        </div>
		        
		        
		        <!-- 누적회원 연령비율 시작   -->
		        <div class="itm">
		          <h3>결제 건 수 현황</h3>
		          <!-- 그래프 영역 -->
		          
		          
		          
		          <a style="width: 600px; height: 270px; float: left; margin-left:5%"><canvas id="barchart2"></canvas></a>
		          
		          
		          <!-- // 그래프 영역 -->
		        </div>
		        
		        <!-- 누적회원 연령비율 끝   -->
	        
	        
	        
	        <!--전체 감싸는 div  -->
 			</div>
 		</div>
 	</div>
 
 
 
 
 
 
 
 <!--==================================[[첫번째 그래프 박스 큰것 끝 ]]==========================  -->
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>
	<script>
		var doughnutChart = document.getElementById('doughnutChart');

		var myDoughnutChart = new Chart(doughnutChart, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					data : [ 10, 20, 30 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
							'rgba(255, 206, 86, 0.6)',
							'rgba(54, 162, 235, 0.6)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(54, 162, 235, 1)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ 'Red', 'Yellow', 'Blue' ],

				weight : 1,
				borderWidth : 10
			},
/* 			options : {
				layout : {
					padding : {
						left : 50,
						right : 0,
						top : 0,
						bottom : 0
					}
				}
			} */
			options: {
				 legend: {
				    	display: true,
		                position: 'right' //차트 레이블 위치 조정 
				 }
			}
		});
		var doughnutChart2 = document.getElementById('doughnutChart2');

		var myDoughnutChart2 = new Chart(doughnutChart2, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					data : [ 15, 25, 35 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
							'rgba(155, 156, 100, 0.5)',
							'rgba(54, 162, 235, 0.5)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(155, 156, 100, 1)', 'rgba(54, 162, 235, 1)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ 'Red', 'Yellow', 'Blue' ],

				weight : 1,
				borderWidth : 10
			},
			options : {
				layout : {
					padding : {
						left : 50,
						right : 0,
						top : 0,
						bottom : 0
					}
				},
				tooltips: {
					titleFontSize: 15,
		            bodyFontSize: 13,
		            mode: 'label'
			    },
			    legend: {
			    	display: true,
	                position: 'right', //차트 레이블 위치 조정 
	                filter: function(legendItem, data) {
	                	
	                    return legendItem.index != 1;
	                }
				}
		        <%-- legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%> : <%=datasets[i].points[datasets[i].points.length-1].value%><%}%></li><%}%></ul>"
			 --%>
			}
		});
		
		var options = {
			    scaleShowGridLines : true,
			    scaleGridLineColor : "rgba(0,0,0,.05)",
			    scaleGridLineWidth : 1,
			    scaleShowHorizontalLines: true,
			    scaleShowVerticalLines: true,
			    bezierCurve : true,
			    bezierCurveTension : 0.4,
			    pointDot : true,
			    pointDotRadius : 4,
			    pointDotStrokeWidth : 1,
			    pointHitDetectionRadius : 20,
			    datasetStroke : true,
			    datasetStrokeWidth : 2,
			    datasetFill : true,
			    			};
		
		var barChartData = {
				labels : [ 'January', 'February', 'March', 'April', 'May', 'June',
						'July' ],
				datasets : [ {
					label : 'Dataset 1',
					backgroundColor : 'rgba(255, 0, 0, 0.6)',
					data : [ 10, 20, 30, 40, 50, 60, 70 ]
				}, {
					label : 'Dataset 2',
					backgroundColor : 'rgba(0, 255, 0, 0.6)',
					data : [ 33, 55, 11, 33, 44, 77, 108 ]
				}, {
					label : 'Dataset 3',
					backgroundColor : 'rgba(0, 0, 255, 0.6)',
					data : [ 21, 25, 40, 44, 53, 57, 62 ]
				}, {
					label : 'Line Dataset',
					data : [ 61, 100, 81, 117, 147, 194, 240 ],

					type : 'line'
				} ]

			};
			var stackChart = document.getElementById('stackChart').getContext('2d');
			window.myBar = new Chart(stackChart, {
				type : 'bar',
				data : barChartData,
				options : {
					title : {
						display : true,
						text : 'Chart.js Bar Chart - Stacked'
					},
					tooltips : {
						mode : 'index',
						intersect : false
					},
					responsive : true,
					scales : {
						xAxes : [ {
							stacked : true,
						} ],
						yAxes : [ {
							stacked : true
						} ]
					},
					 legend: {
					    	display: true,
			                position: 'right' //차트 레이블 위치 조정 
					 }
				}
			});
			var stackChart2 = document.getElementById('stackChart2').getContext('2d');
			window.myBar = new Chart(stackChart2, {
				type : 'bar',
				data : barChartData,
				options : {
					title : {
						display : true,
						text : 'Chart.js Bar Chart - Stacked'
					},
					tooltips : {
						mode : 'index',
						intersect : false
					},
					responsive : true,
					scales : {
						xAxes : [ {
							stacked : true,
						} ],
						yAxes : [ {
							stacked : true
						} ]
					},
					 legend: {
					    	display: true,
			                position: 'right' //차트 레이블 위치 조정 
					 }
				}
			});
			
			var barchart = document.getElementById('barchart');

			var barchart = new Chart(barchart, {
				type : 'bar',
				data : {
					labels : [ 'January', 'February', 'March', 'April', 'May',
							'June', 'July' ],
					datasets : [ {
						label : 'My First Dataset',
						data : [ 65, 59, 80, 81, 56, 55, 40 ],
						fill : false,
						backgroundColor : [ 'rgba(201, 203, 207, 0.6)',
								'rgba(153, 102, 255, 0.6)',
								'rgba(54, 162, 235, 0.6)',
								'rgba(135, 112, 192, 0.6)',
								'rgba(255, 205, 86, 0.6)',
								'rgba(255, 159, 64, 0.6)',
								'rgba(255, 99, 132, 0.6)'],
					
						borderColor : [ 'rgb(255, 99, 132)',
								'rgb(255, 159, 64)', 'rgb(255, 205, 86)',
								'rgb(75, 192, 192)', 'rgb(54, 162, 235)',
								'rgb(153, 102, 255)', 'rgb(201, 203, 207)' ],
						borderWidth : 1
					},
					{
				        label: 'My Second Dataset',
				        data: [ 35, 49, 50, 100, 70, 85, 70 ],
				        type: 'bar',
						fill : false,
						backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
								'rgba(255, 159, 64, 0.6)',
								'rgba(255, 205, 86, 0.6)',
								'rgba(75, 192, 192, 0.6)',
								'rgba(54, 162, 235, 0.6)',
								'rgba(153, 102, 255, 0.6)',
								'rgba(201, 203, 207, 0.6)' ],
						borderColor : [ 'rgb(255, 99, 132)',
								'rgb(255, 159, 64)', 'rgb(255, 205, 86)',
								'rgb(75, 192, 192)', 'rgb(54, 162, 235)',
								'rgb(153, 102, 255)', 'rgb(201, 203, 207)' ],
						borderWidth : 1
					}]
				},
				options : {
 					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					},
					 legend: {
					    	display: true,
			                position: 'right' //차트 레이블 위치 조정 
					 }
				} 
			});
			
			var barchart2 = document.getElementById('barchart2');

			var barchart2 = new Chart(barchart2, {
				type : 'bar',
				data : {
					labels : [ 'January', 'February', 'March', 'April', 'May',
							'June', 'July' ],
					datasets : [ {
						label : 'My First Dataset',
						data : [ 65, 59, 80, 81, 56, 55, 40 ],
						fill : false,
						backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
								'rgba(255, 159, 64, 0.6)',
								'rgba(255, 205, 86, 0.6)',
								'rgba(75, 192, 192, 0.6)',
								'rgba(54, 162, 235, 0.6)',
								'rgba(153, 102, 255, 0.6)',
								'rgba(201, 203, 207, 0.6)' ],
						borderColor : [ 'rgb(255, 99, 132)',
								'rgb(255, 159, 64)', 'rgb(255, 205, 86)',
								'rgb(75, 192, 192)', 'rgb(54, 162, 235)',
								'rgb(153, 102, 255)', 'rgb(201, 203, 207)' ],
						borderWidth : 1
					}]
				},
/* 				options : {
 					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					} 
				} */
				
/* 				options: { // responsive, maintainAspectRatio의 설정이 아래와 같이 해야
					// 브라우저의 크기를 변경해도 canvas를 감싸고 있는
					// div의 크기에 따라 차트가 깨지지 않음.
					responsive: true //auto size : true
					, maintainAspectRatio: false
					, legend: { position: 'top' }
					, title: { display: true , text: '실시간 인원변동 현황 (line)' }
					// Bar 하나에 데이터 모두 보여줄 경우 사용
					, scales: {
//					        xAxes: [
//					                    { stacked: true }
//					               ]
//					         ,
					yAxes: [
					               { stacked: true }
					               ,
					               { ticks: {
					                               beginAtZero:true // Y 축 0부터 시작 
					                                       ,callback: function (value) {
					                                       // Y 축 정수로 보여주기        
					                                       // 숫자가 작거나 또는 0인 경우 등 자동으로 보여주므로 소숫점으로 나타난다
					                                        if (0 === value % 1) { return value; }
														    }
					               			}
					               }
					       ]
					}
				}*/
				
				options: {

			        "hover": {

			            "animationDuration": 0

			        },

			        "animation": {

			            "duration": 0,

			            "onComplete": function () {

			                var chartInstance = this.chart,

			                ctx = chartInstance.ctx;

			                ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);

			                ctx.textAlign = 'center';

			                ctx.textBaseline = 'bottom';

			                this.data.datasets.forEach(function (dataset, i) {

			                    var meta = chartInstance.controller.getDatasetMeta(i);

			                    meta.data.forEach(function (bar, index) {

			                        var data = dataset.data[index];                            

			                        ctx.fillText(data, bar._model.x, bar._model.y - 5);

			                    });

			                });

			            }

			        },

					 legend: {
					    	display: true,
			                position: 'right' //차트 레이블 위치 조정 
			               	
					 },

			        tooltips: {

			            "enabled": true

			        },

			        scales: {

			            yAxes: [{

			                display: true,

			                gridLines: {

			                    display : true

			                },

			                ticks: {

			                    display: true,

			                    beginAtZero:true

			                }

			            }],

			            xAxes: [{

			                gridLines: {

			                    display : true

			                },

			                ticks: {

			                    beginAtZero:true

			                }

			            }]

			        }

			    }
			}); 
			
			
	</script>
</body>
</html>
