<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@ include file="/NewCSS/StatisticscssSales.jsp"%> 
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
   int size = 0;
Map<String, List<Map<String, String>>> memsales = 
         (Map<String, List<Map<String, String>>>)request.getAttribute("memsales");
   String year2;
   String month2;
      
   year2 = (String)memsales.get("날짜").get(0).get("year");
   month2 = (String)memsales.get("날짜").get(0).get("month");  
%>
<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<c:set var="memp" value="<%=memsales %>" />
<div id="mainboard3">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
 <script type="text/javascript">
 

//콤보박스 년도 받아올 변수
var kyear;
//콤보박스 월 받아올 변수
var kmonth;
//다음버튼눌렀을 때
function nextmonth2(){
	kyear =<%=year2%>;
	kmonth = <%=month2%>;
	var kkmonth = parseInt(kmonth);
	if(kkmonth<12){
		kkmonth += 1;
	}else{
		kyear =  parseInt(kyear);
		kyear += 1;
		kkmonth = 1;
	}
	var date = kyear +""+ kkmonth
	var formData = $("#form").serialize();
	$.ajax({
		 method:'get'
	     ,data:formData
		 ,url:'/account/memsales.fm?date='+date
		 ,success:function(data){
			 $("#mainboard3").html(data);
		 }
    });
}

//이전버튼눌렀을때
function premonth2(){
	kyear = <%=year2%>;
	kmonth = <%=month2%>;
	var kkmonth = parseInt(kmonth);
	if(kkmonth>1){
		kkmonth -= 1;
	}else{
		kyear = parseInt(kyear);
		kyear -= 1;
		kkmonth = 12;
	}
	var date = kyear +""+ kkmonth
	$.ajax({
		 method:'get'
		 ,url:'/account/memsales.fm?date='+date
		 ,success:function(data){
			 $("#mainboard3").html(data);
		 }
    });
}
	function ajax(url) {

		$.ajax({
			method : 'get',
			url : url,
			success : function(data) {
				$("#mainboard3").html(data);
			}
		});
	}

</script>
	
<!-- ================[[ 홈바 시작 ]]========================================= -->


    <div class="bar_area" id="SS-bar">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="management">리포트와 통계</a>
        <a >회원 통계</a>
    </div>		
    <!-- 메뉴바 누르는 부분 시작  -->
		<div class="homenav fr">
			<div class="homenav fr">
				<ul>
					<li><a class="n_04" href="javascript:ajax('../account/StatisticsSales2.jsp')">매출통계</a></li>
					<li><a class="n_05 active" href="javascript:ajax('../account/StatisticsMember2.jsp')">회원통계</a></li>
					<li><a class="n_01" href="javascript:ajax('../account/StatisticsPrivateProg2.jsp')">개인레슨 통계</a></li>
					<li><a class="n_03" href="javascript:ajax('../account/StatisticsPublicProg2.jsp')">그룹수업 통계</a></li>
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
						<span id="kyear"> <%=year2 %> </span>
						<span> / </span>
						<span id="kmonth"> <%=month2 %> </span>
						<a class="prev" href="javascript:premonth2()" >
						이전 (월)
						</a>
						<a class="next" href="javascript:nextmonth2()">
						다음 (월)
						</a>
					</div> 
				</form>
			</div>
		</div> <!--==========================[[날짜 부분 끝 ]]==========================================  -->     
 <!--==================================[[첫번째 그래프 박스 큰것 시작 ]]==========================  -->
 	<div class="chart_section" id="SS-section">
 		<div class="section">
 			<div class="chart_area">
 			
 			<!-- 회원 일반 현황  시작  -->
 				<div class="itm" style="width:100%; height:400px">
 				
		          <h3>방문 회원</h3>
		          
		          <!-- 그래프 넣을 자리  -->
		          
		          <!-- 여기안에게 넣어주세요 수근 씨  -->
		          <!-- <canvas id="stackChart2" style="width: 50%; height: 70%; max-width: 700px"></canvas> -->
		          
		          <a style="width: 500px; height: 400px; float: left;"><canvas id="doughnutChart" ></canvas></a> 
		          <a style="width: 500px; height: 400px; float: left; margin-left:2%;"><canvas id="doughnutChart2"></canvas></a>
		          <!-- 추가 또는 수정 -->
		          <a style="width: 500px; height: 400px; float: left; margin-left:2%;"><canvas id="doughnutChart3"></canvas></a>
		           
		          <!-- 그래프 넣을 자리  -->
		        </div>
		        
		 			<!-- 회원 일반 현황  끝-->		
		     
		        <div class="itm" style="width:100%; height:400px">
		          <h3>매출 현황</h3>
		          <!-- 그래프 영역 -->
		          
		          
		          <!-- <a style="width: 1000px; height: 400px; float: left; margin-left:5%"></a> -->
		          
		          <canvas id="barchart" style="width: 70%; height: 30%"></canvas>
		          

		          
		          <!-- // 그래프 영역 -->
		        </div>
		        
	        
	        
	        <!--전체 감싸는 div  -->
 			</div>
 		</div>
 	</div>
 
 
 
 
 
 
 
 <!--==================================[[첫번째 그래프 박스 큰것 끝 ]]==========================  -->
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
	<script>
	var mdatas = new Array();
	var mtime = new Array();
	var mplace = new Array();
	var mpay = new Array();
	
	var maverage = 0;
	var maverage2 = 0;
	var maverage3 = 0;
	
	<c:forEach items="${memp}" var="map">
		<c:if test = "${map.key == '방문회원'}">
			<c:forEach items="${map.value}" var="list">
				<c:forEach items="${list}" var="map2">
					<c:if test = "${map2.key == '명'}">
	   			    	mdatas.push("${map2.value}");
	   		    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if> 
		<c:if test = "${map.key == '방문결제'}">
			<c:forEach items="${map.value}" var="list">
				<c:forEach items="${list}" var="map2">
					<c:if test = "${map2.key == 'NEWPAY'}">
						mpay.push("${map2.value}");
			    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if>  
		<c:if test = "${map.key == '방문장소'}">
			<c:forEach items="${map.value}" var="list">
				<c:forEach items="${list}" var="map2">
					<c:if test = "${map2.key == '명'}">
						mplace.push("${map2.value}");
			    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if>  
		<c:if test = "${map.key == '방문시간'}">
			<c:forEach items="${map.value}" var="list">
				<c:forEach items="${list}" var="map2">
					<c:if test = "${map2.key == 'MCOUNT'}">
						mtime.push("${map2.value}");
			    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if>  
		

	</c:forEach> 
	
	for(var i=0;i<mdatas.length;i++){
		maverage += parseFloat(mdatas[i]);
	}
	for(var i=0;i<mtime.length;i++){
		maverage2 += parseFloat(mtime[i]);
	}
	for(var i=0;i<mplace.length;i++){
		maverage3 += parseFloat(mplace[i]);
	}
	
	
	

		var doughnutChart = document.getElementById('doughnutChart');

		var myDoughnutChart = new Chart(doughnutChart, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					label : '성별',
					data : mdatas,
					backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
							'rgba(255, 206, 86, 0.6)',
							'rgba(54, 162, 235, 0.6)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ '남자','여자' ],
				weight : 1,
				borderWidth : 10
			},
			options : {
				title : {
					display : true,
					fontSize : 20,
					text : "성별 비율                 "
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						top : 0,
						bottom : 0
					}
				},
				legend: {
			    	display: true,
	                position: 'right' //차트 레이블 위치 조정 
			 	},
			    
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

				                        //var data = dataset.data[index].toString();  
				                        var data = (parseInt(dataset.data[index].toString()) / maverage * 100).toFixed(0) + "%";
										var position = bar.tooltipPosition();
				                        
				                        ctx.fillText(data, position.x - 10, position.y - 5);
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
					label : '시간대 별',
					data : mtime,
					backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
										'rgba(155, 156, 100, 0.5)',
										'rgba(54, 162, 235, 0.5)',
										'rgba(105, 106, 50, 0.5)']
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ '오전','오후' ],

				weight : 1,
				borderWidth : 10
			},
			options : {
				title : {
					display : true,
					fontSize : 20,
					text : "입장 시간 비율                 "
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						top : 0,
						bottom : 0
					}
				},
				legend: {
			    	display: true,
	                position: 'right' //차트 레이블 위치 조정 
				},
			    
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

				                        //var data = dataset.data[index].toString();                            
										var data = (parseInt(dataset.data[index].toString()) / maverage2 * 100).toFixed(0) + "%";
				                        var position = bar.tooltipPosition();
				                        
				                        ctx.fillText(data, position.x - 10, position.y - 5);
				                    });
							}
			            });
		            }
		        }
			}
		});
		
		var doughnutChart3 = document.getElementById('doughnutChart3');

		var myDoughnutChart3 = new Chart(doughnutChart3, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					label : '장소 별',
					data : mplace,
					backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
							'rgba(155, 156, 100, 0.5)',
							'rgba(54, 162, 235, 0.5)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ 'GX룸', '요가실', '필라테스룸','스피닝실' ],

				weight : 1,
				borderWidth : 10
			},
			options : {
				title : {
					display : true,
					fontSize : 20,
					text : "장소별 비율                       "
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						top : 0,
						bottom : 0
					}
				},
				legend: {
			    	display: true,
	                position: 'right' //차트 레이블 위치 조정 
			 },
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

				                        //var data = dataset.data[index].toString();                            
										var data = (parseInt(dataset.data[index].toString()) / maverage3 * 100).toFixed(0) + "%";
				                        var position = bar.tooltipPosition();
				                        
				                        ctx.fillText(data, position.x - 12, position.y - 7);
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
					labels : [ '신규결제','제결제','만료예정','만료' ],
					datasets : [ {
						label : '매출 현황',
						data : mpay,
						fill : false,
						backgroundColor : [ 'rgba(201, 203, 207, 0.6)',
								'rgba(153, 102, 255, 0.6)',
								'rgba(201, 203, 207, 0.6)',
								'rgba(153, 102, 255, 0.6)'],
						borderWidth : 1
					}]
				},
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
			               // position: 'right' //차트 레이블 위치 조정 
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
</div>