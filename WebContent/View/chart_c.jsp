<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



<!-- 달력 화살표 이미지? -->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">



<script src="/resources/static/scripts/manage-popup.js"></script>

<title></title>
</head>

<style>

/* 오늘매출 매출리포트 월간리포트  */
.sub-page-header-wrap .sub-page-header .item.active {
	border-bottom: 3px solid #58e5e4;
}

.item {
	display: inline-block;
	margin-right: 20px;
	padding-bottom: 5px;
	font-size: 15px;
	font-weight: bold;
}
/* 오늘매출 매출리포트 월간리포트  */
.div {
	display: block;
}

.summary-wrap {
	height: 80px;
	border: 1px solid #dde8ea;
}

.period-wrap {
	height: 30px;
	margin-top: 10px;
}

.today .summary-wrap table .date {
	width: 80px;
	background: #58e5e4;
	color: #ffffff;
	text-align: center;
}

.day {
	font-weight: bold;
	font-size: 24px;
}

.information {
	padding-left: 20px;
	background: #f9fbfb;
}

label {
	margin-top: -5px;
	margin-bottom: 5px;
	color: #37454a;
	font-size: 15px;
	font-weight: bold;
}

.description {
	width: 1000px;
	font-size: 12px;
	color: #718c96;
}

.sales {
	width: 200px;
	padding-right: 30px;
	background: #f9fbfb;
	color: #37454a;
	text-align: right;
	line-height: 78px;
	font-size: 20px;
	font-weight: bold;
}
/* 오늘 어제 3일 7일 15일 1개월 */
.period-wrap {
	display: inline-block;
	width: 100%;
}

.left {
	float: left;
}

input {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
/* span {
    color: #ffffff;
    background: #3fd2d1;
}  */
.ritem {
	display: table-cell;
	position: relative;
	height: 30px;
	border: 1px solid #d9e6e8;
}

.ritem input[type="radio"]+label {
	padding: 0;
	text-align: center;
	line-height: 30px;
	margin-bottom: 0px;
}

.ritem input[type="radio"]+label span {
	display: inline-block;
	width: 100%;
	margin: 0;
	padding-left: 10px;
	padding-right: 10px;
	color: #aeb1b3;
	background: #ffffff;
}

.ritem input[type="radio"]:checked+label span {
	color: #ffffff;
	background: #3fd2d1;
}

input[type="radio" i] {
	background-color: initial;
	cursor: default;
	-webkit-appearance: radio;
	box-sizing: border-box;
	margin: 3px 3px 0px 5px;
	padding: initial;
	border: initial;
}
/* 오늘 어제 3일 7일 15일 1개월 */

/* 오늘 어제 3일 7일.. */
/* 기간 xxxx년 ~ xxxx년*/
.today .period-wrap .right {
	float: right;
	margin-top: 10px;
	font-size: 18px;
	color: #bbc4c8;
}

.tilde {
	display: inline-block;
	margin-right: 10px;
}

.ui.choose-date {
	display: inline-block;
	position: relative;
	cursor: pointer;
}
                                                             56
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

span.fa.fa-caret-down {
	padding-left: 8px;
	padding-right: 8px;
}

.fa-caret-down:before {
	content: "\f0d7";
}

.choose-date {
	display: inline-block;
	position: relative;
	cursor: pointer;
}

.ui.choose-date {
	display: inline-block;
	position: relative;
	cursor: pointer;
}

.ui.choose-date>.text {
	display: inline-block;
}
/* 오늘 어제 3일 7일.. */
/* 기간 xxxx년 ~ xxxx년*/
/* ============================달력============================ */
element.style {
	position: absolute;
	top: 276px;
	left: 707.578px;
	z-index: 1;
	display: block;
}

.ui-widget.ui-widget-content {
	border: 1px solid #c5c5c5;
}

.ui-corner-all, .ui-corner-bottom, .ui-corner-right, .ui-corner-br {
	border-bottom-right-radius: 3px;
}

.ui-widget-content {
	border: 1px solid #dddddd;
	background: #ffffff;
	color: #333333;
}

.ui-datepicker {
	width: 17em;
	padding: .2em .2em 0;
	display: none;
}

.ui-helper-clearfix:before, .ui-helper-clearfix:after {
	content: "";
	display: table;
	border-collapse: collapse;
}

.ui-helper-clearfix:after {
	clear: both;
}

.ui-datepicker .ui-datepicker-header {
	position: relative;
	padding: .2em 0;
}

.ui-helper-clearfix:before, .ui-helper-clearfix:after {
	content: "";
	display: table;
	border-collapse: collapse;
}
/* ============================달력============================ */

/* ============================매출합계================================ */
.table-wrap-tit {
	margin: 20px 0 10px 0;
	font-size: 16px;
	font-weight: bold;
}

.manage-sales>.page-content.shop>.today .table-wrap {
	margin-top: 10px;
}

.table-wrap.top-border-point {
	border-top: 1px solid #37454a;
}

.table-wrap.top-border-point table.outside {
	border-top: 0;
}

.table-wrap table.outside {
	background: #ffffff;
	border: 1px solid #d8e5e7;
	font-size: 13px;
}

thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
}

.table-wrap tr.row:last-child {
	border-bottom: 0;
}

.table-wrap thead tr.row:last-child {
	border-bottom: 1px solid #dce8ea;
}

table tr {
	padding: 0;
	border: 0;
}

.table-wrap.list th.column-header {
	background: #f9fbfb;
}

.table-wrap th.column-header {
	color: #37454a;
	padding: 14px;
	text-align: center;
	font-weight: bold;
}

table {
	width: 100%;
	table-layout: fixed;
	border: 0;
	border-collapse: collapse;
}

tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

.table-wrap tr.row {
	border-bottom: 1px solid #dce8ea;
}

table td {
	padding: 0;
	border: 0;
}

td {
	display: table-cell;
	vertical-align: inherit;
}

.action-overview {
	cursor: pointer;
	display: inline-block;
	background: none;
	border: none;
	padding: 0;
	margin-left: 5px;
}

input, button {
	margin: 0;
	padding: 0;
}

button {
	background: none;
	border: none;
	letter-spacing: -1px;
}

button {
	-webkit-appearance: button;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	background-color: buttonface;
	box-sizing: border-box;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonface;
	border-image: initial;
}

.table-wrap td.column {
	color: #718c96;
	padding: 14px;
	text-align: center;
}

/* ============================매출합계================================ */

/* ============================================== 2번째 차트 페이지 css 시작 ================================================ */

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

/* ============================================== 2번째 차트 페이지 css 끝 ================================================ */
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<script type="text/javascript">
	

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
													<li class="item"><a href="./chart_a.jsp" target="ifrm_content">오늘매출</a></li>
													<li class="item"><a href="./chart_b.jsp" target="ifrm_content">매출 리포트</a></li>
													<li class="active item"><a href="./chart_c.jsp" target="ifrm_content">월간 리포트</a></li>
												</ul>
											</div>
											<!-- S:출력버튼 -->
											<div class="page-content-header-wrap type02">
												<!-- div class="left" id="totalCnt-div">총 63명</div-->
												<input type="hidden" id="totalCnt" value="63"> <a
													class="right label" style="cursor: pointer;"
													onclick="info_print();"><i class="fa fa-print"></i> 출력</a>
												<div class="clearfix"></div>
											</div>
											<!-- E:출력버튼 -->
											<div class="report">
												<div class="graph-wrap">
													<div class="header">
														<div class="ui dropdown"
															style="font-size: 20px; color: #37454a;"
															id="div-choosedate-startdate">
															<div class="text">2019년</div>
															<span class="fa fa-caret-down" id="span-startdate">&nbsp;&nbsp;월별
																매출 통계</span>
															<div class="dropdown-items">

																<div class="item " data-text="2010년" data-value="2010"
																	onclick="goNext('2010')">2010년</div>

																<div class="item " data-text="2011년" data-value="2011"
																	onclick="goNext('2011')">2011년</div>

																<div class="item " data-text="2012년" data-value="2012"
																	onclick="goNext('2012')">2012년</div>

																<div class="item " data-text="2013년" data-value="2013"
																	onclick="goNext('2013')">2013년</div>

																<div class="item " data-text="2014년" data-value="2014"
																	onclick="goNext('2014')">2014년</div>

																<div class="item " data-text="2015년" data-value="2015"
																	onclick="goNext('2015')">2015년</div>

																<div class="item " data-text="2016년" data-value="2016"
																	onclick="goNext('2016')">2016년</div>

																<div class="item " data-text="2017년" data-value="2017"
																	onclick="goNext('2017')">2017년</div>

																<div class="item " data-text="2018년" data-value="2018"
																	onclick="goNext('2018')">2018년</div>

																<div class="item active" data-text="2019년"
																	data-value="2019" onclick="goNext('2019')">2019년
																</div>

															</div>
														</div>
													<div>
													  	<canvas id="myChart" style="width: 30%; height: 70%; max-width: 800px" ></canvas>
													</div>
													</div>

												</div>

												<div class="table-wrap-tit">매출합계</div>
												<div class="table-wrap list normal top-border-point">
													<table class="outside">
														<thead>
															<tr class="row">
																<th class="column-header">연도</th>
																<th class="column-header">시술</th>
																<th class="column-header">제품</th>
																<th class="column-header">회원권</th>
																<th class="column-header"
																	style="border-left: 1px solid #d8e5e7;">현금
																	<button type="button" class="action-overview"
																		onclick="onClickOverviewCashYear();">
																		<i></i>
																	</button>
																</th>
																<th class="column-header"
																	style="border-right: 1px solid #d8e5e7;">카드</th>
																<th class="column-header">실매출</th>
																<th class="column-header" style="width: 100px">일평균매출</th>
																<th class="column-header">고객수</th>
																<th class="column-header">객단가</th>
															</tr>
														</thead>
														<tbody>
															<tr class="row">
																<td class="column" rowspan="2">2019</td>
																<td class="column treatment">1,390,000</td>
																<td class="column product">0</td>
																<td class="column membership">660,000</td>
																<td class="column cash-sales"
																	style="border-left: 1px solid #d8e5e7; padding: 14px 0;">
																	1,600,000</td>
																<td class="column card-sales"
																	style="border-right: 1px solid #d8e5e7;">450,000</td>
																<td rowspan="2" class="column real-sales">2,050,000</td>
																<td rowspan="2" class="column real-sales"
																	id="year-to-day">8,167</td>
																<td rowspan="2" class="column real-sales">11</td>
																<td rowspan="2" class="column real-sales">186,364</td>
															</tr>

															<!-- percent -->
															<tr class="row">
																<td class="column">68%</td>
																<td class="column">0%</td>
																<td class="column">32%</td>
																<td class="column"
																	style="border-left: 1px solid #d8e5e7;">78%</td>
																<td class="column"
																	style="border-right: 1px solid #d8e5e7;">22%</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="table-wrap-tit">매출상세</div>
												<div class="table-wrap list normal top-border-point"
													id="printArea">
													<table class="outside">
														<thead>
															<tr class="row">
																<th class="column-header">월</th>
																<th class="column-header">시술</th>
																<th class="column-header">제품</th>
																<th class="column-header">회원권</th>
																<th class="column-header"
																	style="border-left: 1px solid #d8e5e7;">현금
																	<button type="button" class="action-overview"
																		onclick="onClickOverviewCash();">
																		<i></i>
																	</button>
																</th>
																<th class="column-header"
																	style="border-right: 1px solid #d8e5e7;">카드</th>
																<th class="column-header">실매출</th>
																<th class="column-header" style="width: 100px">일평균매출</th>
																<th class="column-header">고객수</th>
																<th class="column-header">객단가</th>
															</tr>
														</thead>
														<tbody>

															<tr class="row">
																<td class="column" rowspan="2">8월</td>
																<td class="column">1,390,000</td>
																<td class="column">0</td>
																<td class="column">660,000</td>
																<td class="column"
																	style="border-left: 1px solid #d8e5e7;">1,600,000</td>
																<td class="column"
																	style="border-right: 1px solid #d8e5e7;">450,000</td>
																<td class="column" rowspan="2">2,050,000</td>
																<td class="column" rowspan="2">68,333</td>
																<td class="column" rowspan="2">11</td>
																<td class="column" rowspan="2">186,364</td>
															</tr>
															<tr class="row">
																<td class="column">68%</td>
																<td class="column">0%</td>
																<td class="column">32%</td>
																<td class="column"
																	style="border-left: 1px solid #d8e5e7;">78%</td>
																<td class="column"
																	style="border-right: 1px solid #d8e5e7;">22%</td>
															</tr>

														</tbody>
													</table>
												</div>
												<!-- 주석 삭제 : commit 96dc0931 -->

											</div>
										</div>
										
						<script>

						var barChartData = {
							labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
							datasets: [{
								label: 'Dataset 1',
								backgroundColor: 'rgba(255, 0, 0, 0.2)',
								data: [10, 20, 30, 40, 50, 60, 70]
							}, {
								label: 'Dataset 2',
								backgroundColor: 'rgba(0, 255, 0, 0.2)',
								data: [33, 55, 11, 33, 44, 77, 108]
							}, {
								label: 'Dataset 3',
								backgroundColor: 'rgba(0, 0, 255, 0.2)',
								data: [21, 25, 40, 44, 53, 57, 62]
							}, {
					            label: 'Line Dataset',
					            data: [61, 100, 81, 117, 147, 194, 240],

							type: 'line'
							} ]

						};
						window.onload = function() {
							var ctx = document.getElementById('myChart').getContext('2d');
							window.myBar = new Chart(ctx, {
								type: 'bar',
								data: barChartData,
								options: {
									title: {
										display: true,
										text: 'Chart.js Bar Chart - Stacked'
									},
									tooltips: {
										mode: 'index',
										intersect: false
									},
									responsive: true,
									scales: {
										xAxes: [{
											stacked: true,
										}],
										yAxes: [{
											stacked: true
										}]
									}
								}
							});
						};

						document.getElementById('randomizeData').addEventListener('click', function() {
							barChartData.datasets.forEach(function(dataset) {
								dataset.data = dataset.data.map(function() {
									return randomScalingFactor();
								});
							});
							window.myBar.update();
						});
					
						
					</script>
</body>
</html>