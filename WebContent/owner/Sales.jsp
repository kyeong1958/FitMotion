<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<c:set var="chart" value="${requestScope.allsales}" />

<link rel="stylesheet" type="text/css" href="../kcss/chart.css">

<link rel="stylesheet" type="text/css" href="../kcss/insert.css">

<!-- 달력 화살표 이미지? -->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


<script type="text/javascript">

	/* $(document).ready(function() {
		$.ajax({
			method : "get",
			url : ""
			
		});
	}) 
	*/
	function getDummy() {
		var date = new Date();
		return date.getTime();
	}

	function onClickOpenServiceAgreementModal() {
		showModal({
			selector : ".ui.modal.service-agreement"
		});
	}
	function onClickOpenPrivacyPolicyAgreementModal() {
		showModal({
			selector : ".ui.modal.private-privacy-agreement"
		});
	}
	

	
</script>

<body>

	<div class="page-content shop">
		<div class="sub-page-header-wrap">
			<ul class="sub-page-header">

				<li class="active item"><a href="./chart_a.jsp"
					target="ifrm_content">오늘매출</a></li>
				<li class="item"><a href="./chart_b.jsp" target="ifrm_content">매출
						리포트</a></li>
				<li class="item"><a href="./chart_c.jsp" target="ifrm_content">월간
						리포트</a></li>
			</ul>
		</div>
		<div class="today">
			<div class="summary-wrap">
				<table>
					<tbody>
						<tr>
							<td class="date">
								<div class="year-month">

									2019.09 <input type="hidden" id="calMonth" value=""> <input
										type="hidden" id="timeKind" value=""> <input
										type="hidden" id="timeValue" value="">
								</div>
								<div class="day">05</div>
							</td>
							<td class="information">
								<div class="label">샵 매출</div>
								<div class="description">
									2019년09월 총 매출액 :<b>80,000</b>원
								</div>
							</td>
							<td class="sales">80,000원</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="period-wrap">
				<div class="left">
					<div class="ui period">
						<div class="ritem">
							<input type="radio" id="period-1day" value="period-1day"
								name="period" checked="checked" onclick="onClickPeriod('d',0)">
							<label for="period-1day"><span>오늘</span></label>
						</div>
						<div class="ritem">
							<input type="radio" id="period--1day" value="period--1day"
								name="period" onclick="onClickPeriod('d',-1)"> <label
								for="period--1day"><span>어제</span></label>
						</div>
						<div class="ritem">
							<input type="radio" id="period-3day" value="period-3day"
								name="period" onclick="onClickPeriod('d',-3)"> <label
								for="period-3day"><span>3일</span></label>
						</div>
						<div class="ritem">
							<input type="radio" id="period-7day" value="period-7day"
								name="period" onclick="onClickPeriod('d',-7)"> <label
								for="period-7day"><span>7일</span></label>
						</div>
						<div class="ritem">
							<input type="radio" id="period-15day" value="period-15day"
								name="period" onclick="onClickPeriod('d',-15)"> <label
								for="period-15day"><span>15일</span></label>
						</div>
						<div class="ritem">
							<input type="radio" id="period-1month" value="period-1month"
								name="period" onclick="onClickPeriod('m',-1)"> <label
								for="period-1month"><span>1개월</span></label>
						</div>
					</div>
				</div>

				<div class="right">
					<div class="ui choose-date opend" id="div-choosedate-startdate">
						<input class="text hasDatepicker" id="startdate" name="startdate"
							style="display: none">
						<div class="text" id="div-startdate">2019년09월05일</div>
						<span class="fa fa-caret-down" id="span-startdate"></span>
					</div>
					<div class="tilde">~</div>
					<div class="ui choose-date opend" id="div-choosedate-enddate">
						<input class="text hasDatepicker" id="enddate" name="enddate"
							style="display: none">
						<div class="text" id="div-enddate">2019년09월05일</div>
						<span class="fa fa-caret-down" id="span-enddate"></span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="graph-wrap">
					<a style="width: 430px; height: 250px; float: left"><canvas
							id="myChart"></canvas></a> <a
						style="width: 430px; height: 250px; float: right"><canvas
							id="myChart2"></canvas></a>

				</div>
			</div>
			<div class="table-wrap-tit">매출합계  ${requestScope.chart} </div>
			<div class="table-wrap list normal top-border-point">
				<table class="outside">
					<thead>
						<tr class="row">
							<th class="column-header date" style="width: 7%;">날짜</th>
							<th class="column-header treatment" style="width: 15%;">시술</th>
							<th class="column-header product">제품</th>
							<th class="column-header membership">회원권</th>
							<th class="column-header real-sales">총 실매출</th>
							<th class="column-header cash-sales"
								style="border-left: 1px solid #d8e5e7;">현금매출</th>
							<th class="column-header card-sales"
								style="border-right: 1px solid #d8e5e7;">카드매출</th>
							<th class="column-header prepaid">정액권 차감</th>
							<th class="column-header ticket">티켓 차감</th>
						</tr>
					</thead>
					<tbody>
						<tr class="row">
							<td class="column date" style="width: 7%;">합계</td>
							<td class="column treatment" style="width: 15.1%;">80,000
								<button type="button" class="action-overview"
									onclick="onClickOverviewProcedure();">
									<i></i>
								</button>
							</td>
							<td class="column product" style="width: 4%;">0</td>
							<td class="column membership" style="width: 5%;">0</td>
							<td class="column real-sales" style="width: 6.94%;">80,000</td>
							<td class="column cash-sales"
								style="border-left: 1px solid #d8e5e7; padding: 14px 0; width: 6.40%;">
								80,000
								<button type="button" class="action-overview"
									onclick="onClickOverviewCash(80000,0);">
									<i></i>
								</button>
							</td>
							<td class="column card-sales"
								style="border-right: 1px solid #d8e5e7; width: 6.35%;">0</td>
							<td class="column prepaid" style="width: 7.5%;">0</td>
							<td class="column ticket" style="width: 6.7%;">0</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="table-wrap-tit">매출상세</div>
			<div class="table-wrap list normal top-border-point">
				<table class="outside">
					<thead>
						<tr class="row">
							<th class="column-header date" style="width: 7%;">날짜</th>
							<th class="column-header treatment" style="width: 15%;">시술</th>
							<th class="column-header product">제품</th>
							<th class="column-header membership">회원권</th>
							<th class="column-header real-sales">총 실매출</th>
							<th class="column-header cash-sales"
								style="border-left: 1px solid #d8e5e7;">현금매출</th>
							<th class="column-header card-sales"
								style="border-right: 1px solid #d8e5e7;">카드매출</th>
							<th class="column-header prepaid">정액권 차감</th>
							<th class="column-header ticket">티켓 차감</th>
						</tr>
					</thead>
					<tbody>

						<tr class="row">
							<td class="column date">2019.09.05</td>
							<td class="column treatment" style="width: 15%;">80,000</td>
							<td class="column product" style="width: 4%;">0</td>
							<td class="column membership" style="width: 5.45%;">0</td>
							<td class="column real-sales" style="width: 6.55%;">80,000</td>
							<td class="column cash-sales"
								style="border-left: 1px solid #d8e5e7; width: 6.4%;">80,000</td>
							<td class="column card-sales"
								style="border-right: 1px solid #d8e5e7; width: 6.35%;">0</td>
							<td class="column prepaid" style="width: 7.55%;">0</td>
							<td class="column ticket" style="width: 6.6%;">0</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="pagination">
				<a class="item" style="cursor: pointer" onclick="goPage(1)"><i
					class="fa fa-caret-left"></i></a><a class="active item"
					style="cursor: pointer" onclick="goPage(1)">1</a><a class="item"
					style="cursor: pointer" onclick="goPage(1)"><i
					class="fa fa-caret-right"></i></a>
			</div>
		</div>
	</div>
	<script>
		//And for a doughnut chart
		//차트 값 생성
	var labels = new Array();
	var data = new Array();
	
	//받아온 값을 넣기
	//jstl 사용 c:forEach == 반복문. 
  	<c:forEach items="${chart}" var="list">
	    <c:forEach items="${list}" var="map">
	    	<c:if test = "${map.key == '목록'}">
	    		labels.push("${map.value}");
	    	</c:if>
	    	<c:if test = "${map.key == '매출합계'}">
		    	data.push("${map.value}");
	    	</c:if> 
		</c:forEach> 
	</c:forEach>
	
		var ctx = document.getElementById('myChart');

		var myDoughnutChart = new Chart(ctx, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					data : data ,
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(54, 162, 235, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(54, 162, 235, 1)' ]
				} ],

				// These labels appear in the legend and in the tooltips when hovering different arcs
				labels : labels,
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
		
		var ctx2 = document.getElementById('myChart2');

		var myDoughnutChart2 = new Chart(ctx2, {
			type : 'doughnut',
			data : data = {
				datasets : [ {
					data : [ 10, 20, 30 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(155, 156, 100, 0.2)',
							'rgba(54, 162, 235, 0.2)' ],
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
		});
	</script>