<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="../kcss/chart.css">

<link rel="stylesheet" type="text/css" href="../kcss/insert.css">

<!-- 달력 화살표 이미지? -->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">



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
				<li class="item"><a href="./chart_b.jsp" target="ifrm_content">매출
						리포트</a></li>
				<li class="active item"><a href="./chart_c.jsp"
					target="ifrm_content">월간 리포트</a></li>
			</ul>
		</div>
		<!-- S:출력버튼 -->
		<div class="page-content-header-wrap type02">
			<!-- div class="left" id="totalCnt-div">총 63명</div-->
			<input type="hidden" id="totalCnt" value="63"> <a
				class="right label" style="cursor: pointer;" onclick="info_print();"><i
				class="fa fa-print"></i> 출력</a>
			<div class="clearfix"></div>
		</div>
		<!-- E:출력버튼 -->
		<div class="report">
			<div class="graph-wrap">
				<div class="header">
					<div class="ui dropdown" style="font-size: 20px; color: #37454a;"
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

							<div class="item active" data-text="2019년" data-value="2019"
								onclick="goNext('2019')">2019년</div>

						</div>
					</div>
					<div>
						<canvas id="myChart"
							style="width: 30%; height: 70%; max-width: 800px"></canvas>
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
							<th class="column-header" style="border-left: 1px solid #d8e5e7;">현금
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
							<td rowspan="2" class="column real-sales" id="year-to-day">8,167</td>
							<td rowspan="2" class="column real-sales">11</td>
							<td rowspan="2" class="column real-sales">186,364</td>
						</tr>

						<!-- percent -->
						<tr class="row">
							<td class="column">68%</td>
							<td class="column">0%</td>
							<td class="column">32%</td>
							<td class="column" style="border-left: 1px solid #d8e5e7;">78%</td>
							<td class="column" style="border-right: 1px solid #d8e5e7;">22%</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="table-wrap-tit">매출상세</div>
			<div class="table-wrap list normal top-border-point" id="printArea">
				<table class="outside">
					<thead>
						<tr class="row">
							<th class="column-header">월</th>
							<th class="column-header">시술</th>
							<th class="column-header">제품</th>
							<th class="column-header">회원권</th>
							<th class="column-header" style="border-left: 1px solid #d8e5e7;">현금
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
							<td class="column" style="border-left: 1px solid #d8e5e7;">1,600,000</td>
							<td class="column" style="border-right: 1px solid #d8e5e7;">450,000</td>
							<td class="column" rowspan="2">2,050,000</td>
							<td class="column" rowspan="2">68,333</td>
							<td class="column" rowspan="2">11</td>
							<td class="column" rowspan="2">186,364</td>
						</tr>
						<tr class="row">
							<td class="column">68%</td>
							<td class="column">0%</td>
							<td class="column">32%</td>
							<td class="column" style="border-left: 1px solid #d8e5e7;">78%</td>
							<td class="column" style="border-right: 1px solid #d8e5e7;">22%</td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- 주석 삭제 : commit 96dc0931 -->

		</div>
	</div>

	<script>
		var barChartData = {
			labels : [ 'January', 'February', 'March', 'April', 'May', 'June',
					'July' ],
			datasets : [ {
				label : 'Dataset 1',
				backgroundColor : 'rgba(255, 0, 0, 0.2)',
				data : [ 10, 20, 30, 40, 50, 60, 70 ]
			}, {
				label : 'Dataset 2',
				backgroundColor : 'rgba(0, 255, 0, 0.2)',
				data : [ 33, 55, 11, 33, 44, 77, 108 ]
			}, {
				label : 'Dataset 3',
				backgroundColor : 'rgba(0, 0, 255, 0.2)',
				data : [ 21, 25, 40, 44, 53, 57, 62 ]
			}, {
				label : 'Line Dataset',
				data : [ 61, 100, 81, 117, 147, 194, 240 ],

				type : 'line'
			} ]

		};
		var ctx = document.getElementById('myChart').getContext('2d');
		window.myBar = new Chart(ctx, {
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
				}
			}
		});
	</script>