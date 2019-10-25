<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%-- <%@ include file="/NewCSS/StatisticscssSales.jsp"%> --%> 

<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<%
   int size = 0;
   Map<String,List<Map<String,Object>>> allsales = 
         ( Map<String,List<Map<String,Object>>>)request.getAttribute("allsales");
   String year;
   String month;
   
/*    if(allsales.get("날짜") != null){
	   out.print(allsales.get("날짜").size());
   } */
   
     year = (String)allsales.get("날짜").get(0).get("year");
  	 month = (String)allsales.get("날짜").get(0).get("month");  
%>
<c:set var="alls" value="<%=allsales %>" />
<div id="mainboard2">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">
 
/* $(function () {

    $(".homenav .fr ul li a").click(function () {
        $(".homenav .fr ul li a").removeClass("active").css("color", "#333");
         $(this).addClass("active").css("color", "#fff",
        								 "background-color","#22B2FB");
        $(".search_bar .search_add").hide();
  
    });
}); */

//콤보박스 년도 받아올 변수
var kyear;
//콤보박스 월 받아올 변수
var kmonth;
//다음버튼눌렀을 때
function nextmonth(){
	kyear = <%=year%>;
	kmonth = <%=month%>;
	var kkmonth = parseInt(kmonth);
	if(kkmonth<11){
		kkmonth += 1;
		$("#kyear").value =  kkmonth;
	}else{
		kyear =  parseInt(kyear);
		kyear += 1;
		kkmonth = 0;
	}
	var date = kyear +""+ kkmonth
	var formData = $("#form").serialize();
	$.ajax({
		 method:'get'
	     ,data:formData
		 ,url:'/account/allsales.fm?date='+date
		 ,success:function(data){
			 $("#mainboard2").html(data);
		 }
    });
}

//이전버튼눌렀을때
function premonth(){
	kyear = <%=year%>;
	kmonth = <%=month%>;
	var kkmonth = parseInt(kmonth);
	if(kkmonth>2){
		kkmonth -= 1;
	}else{
		kyear = parseInt(kyear);
		kyear -= 1;
		kkmonth = 12;
	}
	var date = kyear +""+ kkmonth
	$.ajax({
		 method:'get'
		 ,url:'/account/allsales.fm?date='+date
		 ,success:function(data){
			 $("#mainboard2").html(data);
		 }
    });
}

function ajax(url) {

	$.ajax({
		method : 'get',
		url : url,
		success : function(data) {
			$("#mainboard2").html(data);
			
		}
	});
}



/* function memberSearch(){
    var d_memname = $("#d_memname").val();
    $.ajax({
       url:"/member/memInfoList.fm?mem_name="+d_memname
       ,success:function(data){
          $("#memberSearchModalTable").html(data);
       }
    });
}  */

 
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
					<li><a class="n_04 active" href="javascript:ajax('../account/StatisticsSales2.jsp')">매출통계</a></li>
					<li><a class="n_05" href="javascript:ajax('../account/StatisticsMember2.jsp')">회원통계</a></li>					
					<li><a class="n_01" href="javascript:ajax('../account/StatisticsPrivateProg2.jsp')">개인레슨 통계</a></li>
					<li><a class="n_03" href="javascript:ajax('/account/publicProg.fm?startDate=20190701&endDate=20191001')">그룹수업 통계</a></li>
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
						<span id="kyear"> <%=year%> </span>
						<span> / </span>
						<span id="kmonth"> <%=month %> </span>
						<a class="prev" href="javascript:premonth()" >
						이전 (월)
						</a>
						<a class="next" href="javascript:nextmonth()">
						다음 (월)
						</a>
					</div> 
				</form>
			</div>
		</div>
  <!--==========================[[날짜 부분 끝 ]]==========================================  -->     
 <!--==================================[[첫번째 그래프 박스 큰것 시작 ]]==========================  -->
 
 	<form id="form">
	 	<div class="chart_section" id="SS-section">
	  		<div class="section">
	 			<div class="chart_area">
	 			
	 			<!-- 회원 일반 현황  시작  -->
	 				<div class="itm" style="width:100%; height:400px">
	 				
			          <h3>회원 일반 현황</h3>
			          
			          <a style="width: 35%; height: 25%; float: left; margin-left:2.5%; margin-right:15.5%"><canvas id="stackChart2"></canvas></a>
			          <a style="width: 35%; height: 25%; float: left; " ><canvas id="stackChart"></canvas></a>
			           
			          <!-- 그래프 넣을 자리  -->
			        </div>
			 			<!-- 회원 일반 현황  끝-->		
			     
			        <!-- 매출 현황 시작  -->
			        
			        <div class="itm" style="height:410px">
			          <h3>매출 현황</h3>
			          <!-- 그래프 영역 -->
			          
			          
			          <a style="width: 75%; height: 25%; float: left; margin-left:5%"><canvas id="barchart"></canvas></a> 
			          
			          
			          
			          <!-- // 그래프 영역 -->
			        </div>
			        
			        <!-- 매출 현황 시작  -->
			        
			        <!-- 결제 건 수 현황 시작   -->
			        <div class="itm">
			          <h3>결제 건 수 현황</h3>
			          <!-- 그래프 영역 -->
			          <a style="width: 75%; height: 30%; float: left; margin-left:5%"><canvas id="barchart2"></canvas></a>
			          <!-- // 그래프 영역 -->
			        </div>
			        
			        <!-- 결제 건 수 현황 끝   -->
		           <!-- 이용회원 연령비율 시작   -->
			        <div class="itm" style="height:400px">
			          <h3>이용회원 연령비율</h3>
			          <a style="width: 550px; height: 250px; float: left"><canvas style="display:block; margin:2%" id="doughnutChart" ></canvas></a> 
			          </div>
			          <!-- 이용회원 연령비율 끝   -->
			        <!-- 누적회원 연령비율 시작   -->
			        <div class="itm">
			          <h3>누적회원 연령비율</h3>
			          <a style="width: 550px; height: 250px; float: left"><canvas style="margin:2%" id="doughnutChart2"></canvas></a>
			        </div>
			        <!-- 누적회원 연령비율 끝   -->
		        <!--전체 감싸는 div  -->
	 			</div>
	 		</div> 
	 	</div>
	 
	 
	 <!--==================================[[첫번째 그래프 박스 큰것 끝 ]]==========================  -->
	      
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	      	
	<script type="text/javascript">
	//차트 위에 값이 나오게함 
		
   		var mdatas = new Array();
   		var mMen = new Array();
   		var mWomen = new Array();
   		var mdatas2 = new Array();
   		var mMen2 = new Array();
   		var mWomen2 = new Array();
   		
   		var salemonth = new Array();
   		var salepay = new Array();
   		var salecount = new Array();
   		var salemonth2 = new Array();
   		var salepay2 = new Array();
   		var salecount2 = new Array();
   		
   		var agevalue = new Array();
   		var agecount = new Array();
   		var agevalue2 = new Array();
   		var agecount2 = new Array();
   		
   		var year;
   		var month;
   	//받아온 값을 넣기
		//jstl 사용 c:forEach == 반복문. 
		//Map<String,List<Map<String, String>>>
		
		<c:forEach items="${alls}" var="map">
			<c:if test = "${map.key == '남여고정'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						//a.push("${map2.value}");
						<c:if test = "${map2.key == '명'}">
		   			    	mdatas.push("${map2.value}");
		   			    	//${map.value};
		   		    	</c:if> 
					</c:forEach>
				</c:forEach>
			</c:if> 
 			<c:if test = "${map.key == '남여변동'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						<c:if test = "${map2.key == '명'}">
		   			    	mdatas2.push("${map2.value}");
	   		    		</c:if> 
					</c:forEach>
				</c:forEach>
			</c:if>  
			
 			<c:if test = "${map.key == '매출신규'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						<c:if test = "${map2.key == '월'}">
							salemonth.push("${map2.value}");
							${map2.value};
	   		    		</c:if>  
						<c:if test = "${map2.key == '총액'}">
							salepay.push("${map2.value}");
	   		    		</c:if>  
						<c:if test = "${map2.key == '건수'}">
							salecount.push("${map2.value}");
	   		    		</c:if>  
					</c:forEach>
				</c:forEach>
			</c:if>  
			
 			<c:if test = "${map.key == '매출재결제'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						<c:if test = "${map2.key == '월'}">
							salemonth2.push("${map2.value}");
	   		    		</c:if>  
						<c:if test = "${map2.key == '총액'}">
							salepay2.push("${map2.value}");
	   		    		</c:if>  
						<c:if test = "${map2.key == '건수'}">
							salecount2.push("${map2.value}");
	   		    		</c:if>  
					</c:forEach>
				</c:forEach>
			</c:if>  
			
			<c:if test = "${map.key == '연령고정'}">
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						//a.push("${map2.value}");
						<c:if test = "${map2.key == '연령'}">
							agevalue.push("${map2.value}");
		   		    	</c:if> 
						<c:if test = "${map2.key == '인원수'}">
							agecount.push("${map2.value}");
		   		    	</c:if> 
					</c:forEach>
				</c:forEach>
			</c:if>
 			<c:if test = "${map.key == '연령변동'}">
 			//연령변동
				<c:forEach items="${map.value}" var="list">
					<c:forEach items="${list}" var="map2">
						<c:if test = "${map2.key == '연령'}">
							agevalue2.push("${map2.value}");
		   		    	</c:if>
						<c:if test = "${map2.key == '인원수'}">
							agecount2.push("${map2.value}");
		   		    	</c:if> 
					</c:forEach>
				</c:forEach>
			</c:if>  
		</c:forEach>   
   		
   		mMen.push(mdatas[0]);
   		mWomen.push(mdatas[1]);	
   		mMen2.push(mdatas2[0]);
   		mWomen2.push(mdatas2[1]);
   		
		var barChartData = {
				labels : [ '누적회원' ],
				datasets : [ {
					label : ['남자'],
					backgroundColor : 'rgba(255, 205, 86, 0.6)',
					backgroundColor : 'rgba(255, 205, 86, 0.6)',
					data : mMen
				}, {
					label : ['여자'],
					backgroundColor : 'rgba(255, 99, 132, 0.6)',
					backgroundColor : 'rgba(255, 99, 132, 0.6)',
					data : mWomen
				} ]
			};
		
		var barChartData2 = {
				labels : [ '이용회원' ],
				datasets : [ {
					label : '남자',
					backgroundColor : 'rgba(255, 50, 100, 0.6)',
					data : mMen2
				}, {
					label : '여자',
					backgroundColor : 'rgba(100, 255, 50, 0.6)',
					data : mWomen2
				} ]
			};
		
			var stackChart = document.getElementById('stackChart').getContext('2d');
			window.myBar = new Chart(stackChart, {
				type : 'bar',
				data : barChartData,
				options : {
					title : {
						display : true,
						fontSize : 20,
						text : Number(mMen) + Number(mWomen) + "명"
						/* text : '244명' */
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
			              //  position: 'right' //차트 레이블 위치 조정 
					 },"animation": {

				            "duration": 0,

				            "onComplete": function (chart) {

				                var chartInstance = this.chart,

				                ctx = chartInstance.ctx;

				                var fontSize = 16;
				                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
				                
					            this.data.datasets.forEach(function (dataset, i) {
							        var meta = chartInstance.controller.getDatasetMeta(i);
									if (!meta.hidden) {
					                    meta.data.forEach(function (bar, index) {	
					                        var data = dataset.data[index];                            
											var position = bar.tooltipPosition();					                        
					                        ctx.fillText(data, position.x, position.y + 30);
					                    });
									}
					            });
				            }
				        }
					 
				}
			});
			var stackChart2 = document.getElementById('stackChart2').getContext('2d');
			window.myBar = new Chart(stackChart2, {
				type : 'bar',
				data : barChartData2,
				options : {
					title : {
						display : true,
						fontSize : 20,
						text : Number(mMen2) + Number(mWomen2) + "명"
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
			            //    position: 'right' //차트 레이블 위치 조정 
					 },
					 "animation": {

				            "duration": 0,

				            "onComplete": function (chart) {

				                var chartInstance = this.chart,

				                ctx = chartInstance.ctx;

				                var fontSize = 16;
				                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
				                
					            this.data.datasets.forEach(function (dataset, i) {
							        var meta = chartInstance.controller.getDatasetMeta(i);
									if (!meta.hidden) {
					                    meta.data.forEach(function (bar, index) {	
					                        var data = dataset.data[index];                            
											var position = bar.tooltipPosition();					                        
					                        ctx.fillText(data, position.x, position.y + 30);
					                    });
									}
					            });
				            }
				        }
				}
			});
			 
			var barchart = document.getElementById('barchart');
			
			
			var barchart = new Chart(barchart, {
				type : 'bar',
				data : {
					labels : salemonth,
					datasets : [ {
						label : '신규결제',
						data : salepay,
						fill : false,
						backgroundColor : ['rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)'],
						borderWidth : 1
					},{
						label : '재결제',
						data : salepay2,
						fill : false,
						backgroundColor : [ 'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)'],
						borderWidth : 1
					}]
				},
				options : {
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
			                position: 'top' //차트 레이블 위치 조정 
					 },
					 "animation": {

				            "duration": 0,

				            "onComplete": function (chart) {

				                var chartInstance = this.chart,

				                ctx = chartInstance.ctx;

				                var fontSize = 13;
				                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
				                
					            this.data.datasets.forEach(function (dataset, i) {
							        var meta = chartInstance.controller.getDatasetMeta(i);
									if (!meta.hidden) {
										meta.data.forEach(function (bar, index) {

					                        var data = dataset.data[index];                            
											var position = bar.tooltipPosition();
					                        
					                        ctx.fillText(data, position.x - 28, position.y + 15);
					                    });
									}
					            });
				            }
				        }
				} 
			});
			
			var barchart2 = document.getElementById('barchart2');

			var barchart2 = new Chart(barchart2, {
				type : 'bar',
				data : {
					labels : salemonth,
					datasets : [ {
						label : '신규결제',
						data : salecount,
						fill : false,
						backgroundColor : ['rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)',
							'rgba(54, 162, 235, 0.6)'],
						borderWidth : 1
					},{
						label : '재결제',
						data : salecount2,
						fill : false,
						backgroundColor : [ 'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)',
							'rgba(75, 192, 192, 0.6)'],
						borderWidth : 1
					}]
				},
				options : {
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
			                position: 'top' //차트 레이블 위치 조정 
					 },
					 "animation": {

				            "duration": 0,

				            "onComplete": function (chart) {

				                var chartInstance = this.chart,

				                ctx = chartInstance.ctx;

				                var fontSize = 13;
				                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
				                
					            this.data.datasets.forEach(function (dataset, i) {
							        var meta = chartInstance.controller.getDatasetMeta(i);
									if (!meta.hidden) {
										meta.data.forEach(function (bar, index) {

					                        var data = dataset.data[index].toString();                            
											var position = bar.tooltipPosition();
					                        
					                        ctx.fillText(data, position.x - 5, position.y + 15);
					                    });
									}
					            });
				            }
				        }
				} 
			});
			
			//도넛차트 시작 
			var doughnutChart = document.getElementById('doughnutChart');

			var myDoughnutChart = new Chart(doughnutChart, {
				type : 'doughnut',
				data : data = {
					datasets : [ {
						data : agecount,
						backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
								'rgba(255, 206, 86, 0.6)',
								'rgba(54, 162, 235, 0.6)' ]
					} ],

					labels : agevalue,

					weight : 1,
					borderWidth : 10
				},
				options: {
					 legend: {
					    	display: true,
			                position: 'right' //차트 레이블 위치 조정 
					 },
/* 				plugins: {	 
					afterDatasetsDraw: function(chart) {
					    var ctx = chart.ctx;
					    chart.data.datasets.forEach(function(dataset, i) {
					      var meta = chart.getDatasetMeta(i);
					      if (!meta.hidden) {
					        meta.data.forEach(function(element, index) {
					          // Draw the text in black, with the specified font
					          ctx.fillStyle = 'rgb(0, 0, 0)';
					          var fontSize = 16;
					          var fontStyle = 'normal';
					          var fontFamily = 'Helvetica Neue';
					          ctx.font = Chart.helpers.fontString(fontSize, fontStyle, fontFamily);
					          // Just naively convert to string for now
					          var dataString = dataset.data[index];
					          // Make sure alignment settings are correct
					          ctx.textAlign = 'center';
					          ctx.textBaseline = 'middle';
					          var padding = 5;
					          var position = element.tooltipPosition();
					          ctx.fillText(dataString, position.x, position.y * 1.1);
					        });
					      }
					    });
					  }
					 } */
					    
					    "animation": {

				            "duration": 0,

				            "onComplete": function (chart) {

				                var chartInstance = this.chart,

				                ctx = chartInstance.ctx;
				                ctx.fillStyle = 'rgb(0, 0, 0)';
				                var fontSize = 16;
				                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
				                
					            this.data.datasets.forEach(function (dataset, i) {
							        var meta = chartInstance.controller.getDatasetMeta(i);
									if (!meta.hidden) {
										 meta.data.forEach(function (bar, index) {

					                        var data = dataset.data[index].toString();                            
											var position = bar.tooltipPosition();
					                        
					                        ctx.fillText(data, position.x, position.y - 5);
					                    });
									}
					            });
				            }
				        } 
					 
				}
			});
			
			var doughnutChart2 = document.getElementById('doughnutChart2');
			var myDoughnutChart2 = new Chart(doughnutChart2, {
				
				type : 'doughnut',
				data : data = {
					datasets : [ {
						data : agecount2,
						backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
								'rgba(155, 156, 100, 0.5)',
								'rgba(54, 162, 235, 0.5)' ]
					} ],

					labels : agevalue2,

					weight : 1
				},
				options : {
					responsive:true,
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
			            bodyFontSize: 13
				    },
				    legend: {
				    	display: true,
		                position: 'right' //차트 레이블 위치 조정 
		                
				    } ,
			    
			    "animation": {

		            "duration": 0,

		            "onComplete": function (chart) {

		                var chartInstance = this.chart,

		                ctx = chartInstance.ctx;
		                ctx.fillStyle = 'rgb(0, 0, 0)';
		                var fontSize = 16;
		                ctx.font = Chart.helpers.fontString(fontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
		                
			            this.data.datasets.forEach(function (dataset, i) {
					        var meta = chartInstance.controller.getDatasetMeta(i);
							if (!meta.hidden) {
								 meta.data.forEach(function (bar, index) {

				                        var data = dataset.data[index].toString();                            
										var position = bar.tooltipPosition();
				                        
				                        ctx.fillText(data, position.x, position.y - 5);
				                    });
							}
			            });
		            }
		        }
				}
			});
		//도넛차트 끝 
	   		</script>
     </form>
	</div>
	      

	
		