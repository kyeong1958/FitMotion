<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="/NewCSS/StatisticscssSales.jsp"%> 

<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="mainboard3">
<form id="form">
<%
   String year = "";
   String month ="";
   if(year == ""){
	   year = "2019";
	   month = "10";
   }
   if(request.getAttribute("year") != null){   
	   year = (String)request.getAttribute("year");
   	   month = (String)request.getAttribute("month");
   }
%>
<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<%-- <c:set var="memp" value="<%=memsales %>" /> --%>
<c:set var="memp" value="${requestScope.memsales}" />
<c:set var="year" value="<%=year %>" />
<c:set var="month" value="<%=month %>" />
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">

$(document).ready(function() {
	$.ajax({
		method : 'get',
		url : '/account/memsales.fm?date='+201910,
		success : function(data) {
			$("#mainboard3").html(data);
		}
	});
}); 

//콤보박스 년도 받아올 변수
var kyear;
//콤보박스 월 받아올 변수
var kmonth;
//다음버튼눌렀을 때
function nextmonth2(){
	kyear = ${year};
	kmonth = ${month};
	var kkmonth = parseInt(kmonth);
	if(kkmonth<11){
		kkmonth += 1;
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
		 ,url:'/account/memsales.fm?date='+date
		 ,success:function(data){
			 $("#mainboard3").html(data);
		 }
    });
}

//이전버튼눌렀을때
function premonth2(){
	kyear = ${year};
	kmonth = ${month};
	var kkmonth = parseInt(kmonth);
	var kkyear = parseInt(kyear);
	if(kkmonth>2){
		kkmonth -= 1;
	}else{
		kkyear -= 1;
		kkmonth = 12;
	}
	var date = "";
	if(kkmonth < 10){
		date = kkyear +"0"+ kkmonth		
	}else
		date = kkyear +""+ kkmonth	
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
					<li><a class="n_01" href="javascript:ajax('/account/privateProg.fm?startDate=20190701&endDate=20191001')">개인레슨 통계</a></li>
					<li><a class="n_03" href="javascript:ajax('/account/publicProg.fm')">그룹수업 통계</a></li>
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
						<a class="prev" href="javascript:premonth2()" >
						이전 (월)
						</a>
						<a class="next" href="javascript:nextmonth2()">
						다음 (월)
						</a>
					</div> 
				</form>
			</div>
		</div> 
<!--==========================[[날짜 부분 끝 ]]==========================================  -->     
 <!--==================================[[ 그래프  시작 ]]==========================  -->

 	<div class="chart_section" id="SS-section">
 		<div class="section">
 			<div class="chart_area">
 			<!-- 회원 일반 현황  시작  -->
 				<div class="itm" style="width:100%; height:400px">
		          <h3>회원 일반 현황</h3>
		          <a style="width: 400px; height: 300px; float: left; margin-left:2%; margin-right:2%"><canvas id="doughnutChart" ></canvas></a> 
		          <a style="width: 400px; height: 300px; float: left"><canvas id="doughnutChart2"></canvas></a>
		          <!-- 추가 또는 수정 -->
		          <%-- <a style="width: 400px; height: 300px; float: left"><canvas id="doughnutChart3"></canvas></a> --%>
		          <!-- 그래프 넣을 자리  -->
		        </div>
		 			<!-- 회원 일반 현황  끝-->		
		        <div class="itm" style="width:100%; height:400px">
		          <h3>매출 현황</h3>
		          <canvas id="barchart" style="width: 70%; height: 30%"></canvas>
		        </div>
 			</div>
 		</div>
 	</div>
 
 
 
 <!--==================================[[그래프 끝 ]]==========================  -->
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
	<script type="text/javascript">
	var mdatas = new Array();
	var mtime = new Array();
	var mpay = new Array();
	
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
					<c:if test = "${map2.key == 'MCOUNT'}">
						mtime.push("${map2.value}");
			    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if>  
		<c:if test = "${map.key == '방문시간'}">
			<c:forEach items="${map.value}" var="list">
				<c:forEach items="${list}" var="map2">
					<c:if test = "${map2.key == 'newpay'}">
						mpay.push("${map2.value}");
			    	</c:if> 
				</c:forEach>
			</c:forEach>
		</c:if>  

	</c:forEach> 

		var doughnutChart = document.getElementById('doughnutChart');

		var myDoughnutChart = new Chart(doughnutChart, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					label : '성별',
					data : mdatas,
					backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
							'rgba(255, 206, 86, 0.6)',
							'rgba(54, 162, 235, 0.6)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(54, 162, 235, 1)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ '남자','여자' ],

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
					label : '시간대 별',
					data : mtime,
					backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
							'rgba(155, 156, 100, 0.5)',
							'rgba(54, 162, 235, 0.5)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(155, 156, 100, 1)', 'rgba(54, 162, 235, 1)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : [ '오전','오후' ],

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
				legend: {
			    	display: true,
	                position: 'right' //차트 레이블 위치 조정 
			 }
			}
		});
		
	/* 	var doughnutChart3 = document.getElementById('doughnutChart3');

		var myDoughnutChart3 = new Chart(doughnutChart3, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					data : [ 30, 50, 100 ],
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
				legend: {
			    	display: true,
	                position: 'right' //차트 레이블 위치 조정 
			 }
			}
		}); */
		
			var barchart = document.getElementById('barchart');

			var barchart = new Chart(barchart, {
				type : 'bar',
				data : {
					labels : [ '신규결제','제결제' ],
					datasets : [ {
						label : 'My First Dataset',
						data : mpay,
						fill : false,
						backgroundColor : [ 'rgba(201, 203, 207, 0.6)',
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
	     </form>
	      </div>
