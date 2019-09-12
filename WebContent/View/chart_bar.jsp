<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--============================== [[ 막대차트 ]] =================================  -->
<%@ include file="../CSS/Chart.jsp" %>


<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		//pie차트
		/* var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Work', 11 ], [ 'Eat', 2 ],
				[ 'Commute', 2 ], [ 'Watch TV', 2 ], [ 'Sleep', 7 ] ]);

		var options = {
			title : '경예'
		};
		var data2 = google.visualization.arrayToDataTable([
				[ 'Task2', 'Hours per Day' ], [ 'Work2', 11 ], [ 'Eat2', 2 ],
				[ 'Commute2', 2 ], [ 'Watch TV2', 2 ], [ 'Sleep2', 7 ] ]);

		var options2 = {
			title : '광여이'
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));
		chart.draw(data, options);
		var chart = new google.visualization.PieChart(document
				.getElementById('piechart2'));
		chart.draw(data2, options2); */

		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Work', 11 ], [ 'Eat', 2 ],
				[ 'Commute', 2 ], [ 'Watch TV', 2 ], [ 'Sleep', 7 ] ]);

		var data2 = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Work', 11 ], [ 'Eat', 2 ],
				[ 'Commute', 2 ], [ 'Watch TV', 2 ], [ 'Sleep', 7 ] ]);

		var options = {
			title : '경예',
			pieHole : 0.4,
		};
		var options2 = {
			title : '광여이',
			pieHole : 0.4,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
		chart.draw(data, options);

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart2'));
		chart.draw(data2, options2);
	}

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
	<div class="content">
		<div class="page manage-sales">
		 	<div class="page-content shop">
				<div class="sub-page-header-wrap">
					<ul class="sub-page-header">
						<li class="item"><a href="./chart_a.html" target="ifrm_content">오늘매출</a></li>
						<li class="active item"><a href="./chart_b.html" target="ifrm_content">매출 리포트</a></li>
						<li class="item"><a href="./chart_c.html" target="ifrm_content">월간 리포트</a></li>
					</ul>
				</div>
				<div class="report">
					<div class="graph-wrap">
						<div class="header">
							<div class="ui choose-date" id="div-choosedate-startdate">
								<input class="text hasDatepicker" id="startdate" name="startdate" style="display: none"/>
								<input type="hidden" id="timeKind" value="d"/>
								<div class="text" id="div-startdate">2019년09월09일</div>
								<span class="fa fa-caret-down" id="span-startdate"></span>
							</div>
							<div style="display: inline-block; margin-right: 10px; font-size: 18px;">~</div>
							<div class="ui choose-date" id="div-choosedate-enddate">
								<input class="text hasDatepicker" id="enddate" name="enddate" style="display: none"/>
								<div class="text" id="div-enddate">2019년09월09일</div>
								<span class="fa fa-caret-down" id="span-enddate"></span>
							</div>
							<div class="range">
								<a class="item active" href="#" onclick="onClickPeriod('d')">일</a>
								<a class="item"	href="#" onclick="onClickPeriod('w')">주</a>
								<a class="item " href="#" onclick="onClickPeriod('m')">월</a>
								<a class="item " href="#" onclick="onClickPeriod('y')">요일</a>
							</div>
						</div>
						<div class="body">
							<div id="sale-graph">
								<div style="position: relative;">
									<div dir="ltr" style="position: relative; width: 838px; height: 200px;">
										<div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;">
											<svg width="838" height="200" aria-label="A chart." style="overflow: hidden;">
												<defs id="_ABSTRACT_RENDERER_ID_0">
													<clipPath id="_ABSTRACT_RENDERER_ID_1">
														<rect x="105" y="38" width="629" height="124"></rect>
													</clipPath>
												</defs>
												<rect x="0" y="0" width="838" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect>
												<g>
												<rect x="747" y="38" width="78" height="93"	stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect>
												<g>
													<rect x="747" y="38" width="78" height="13"	stroke="none" stroke-width="0" fill-opacity="0"	fill="#ffffff"></rect>
													<g>
														<text text-anchor="start" x="778" y="49.05" font-family="Arial" font-size="13" stroke="none"
														  stroke-width="0" fill="#222222">total</text>
													</g>
													<path d="M747,44.5L773,44.5" stroke="#ffcf8b" stroke-width="2" fill-opacity="1" fill="none"></path>
												</g>
												<g>
													<rect x="747" y="59" width="78" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect>
													<g>
														<text text-anchor="start" x="778" y="70.05" font-family="Arial" font-size="13" stroke="none"
															  stroke-width="0" fill="#222222">김정은</text>
													</g>
													<rect x="747" y="59" width="26" height="13" stroke="none" stroke-width="0" fill="#58e5e4"></rect>
												</g>
												<g>
													<rect x="747" y="80" width="78" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect>
													<g>
													<text text-anchor="start" x="778" y="91.05" font-family="Arial" font-size="13" stroke="none"
														  stroke-width="0" fill="#222222">민지</text>
													</g>
													<rect x="747" y="80" width="26" height="13"	stroke="none" stroke-width="0" fill="#897bf6"></rect>
												</g>
												<g>
													<rect x="747" y="101" width="78" height="30" stroke="none" stroke-width="0" fill-opacity="0"
														  fill="#ffffff"></rect>
													<g>
														<text text-anchor="start" x="778" y="112.05" font-family="Arial" font-size="13" stroke="none"
															  stroke-width="0" fill="#222222">담당자</text>
														<text text-anchor="start" x="778" y="129.05" font-family="Arial" font-size="13" stroke="none"
															  stroke-width="0" fill="#222222">없음</text>
													</g>
														<rect x="747" y="101" width="26" height="13" stroke="none" stroke-width="0" fill="#6ab9f1"></rect>
													</g>
												</g>
												<g>
													<rect x="105" y="38" width="629" height="124" stroke="none" stroke-width="0" fill-opacity="0"
													      fill="#ffffff"></rect>
													<g clip-path="url(https://www.gongbiz.kr/sale/report#_ABSTRACT_RENDERER_ID_1)">
														<g>
															<rect x="105" y="161" width="629" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect>
															<rect x="105" y="100" width="629" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect>
															<rect x="105" y="38" width="629" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect>
															<rect x="105" y="130" width="629" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect>
															<rect x="105" y="69" width="629" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect>
														</g>
														<g>
															<rect x="225" y="100" width="389" height="0.5" stroke="none" stroke-width="0" fill="#6ab9f1"></rect>
															<rect x="225" y="100" width="389" height="0.5" stroke="none" stroke-width="0" fill="#897bf6"></rect>
															<rect x="225" y="100" width="389" height="0.5" stroke="none" stroke-width="0" fill="#58e5e4"></rect>
														</g>
														<g>
															<rect x="105" y="100" width="629" height="1" stroke="none" stroke-width="0" fill="#333333"></rect>
														</g>
														<g>
															<g>
																<circle cx="419.5" cy="100" r="2" stroke="none" stroke-width="0" fill="#ffcf8b"></circle>
															</g>
														</g>
													</g>
													<g>
														<g>
															<text text-anchor="middle" x="419.5" y="181.05" t-family="Arial" font-size="13" stroke="none"
																  stroke-width="0" fill="#222222">9월9일</text>
														</g>
														<g>
															<text text-anchor="end" x="92" y="166.05" font-family="Arial" font-size="13" stroke="none"
																  stroke-width="0" fill="#444444">-1</text>
														</g>
														<g>
															<text text-anchor="end" x="92" y="104.55" font-family="Arial" font-size="13" stroke="none"
																  stroke-width="0" fill="#444444">0</text>
														</g>
														<g>
															<text text-anchor="end" x="92" y="43.05" font-family="Arial" font-size="13" stroke="none"
																  stroke-width="0" fill="#444444">1</text>
														</g>
													</g>
												</g>
											</svg>
											<div aria-label="A tabular representation of the data in the chart."
												 style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;">
												<table>
													<thead>
														<tr>
															<th>Date</th>
															<th>담당자없음</th>
															<th>민지</th>
															<th>김정은</th>
															<th>total</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>9월9일</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
															<td>0</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 848px; white-space: nowrap;
										 font-family: Arial; font-size: 13px;">없음</div>
								</div>
							</div>
						</div>
					</div>
					<div class="table-wrap list normal top-border-point">
						<table class="outside">
							<thead>
								<tr class="row">
									<th class="column-header">날짜</th>
									<th class="column-header">분류</th>
									<th class="column-header">현금
										<button type="button" class="action-overview"></button>
									</th>
									<th class="column-header">카드</th>
									<th class="column-header">회원권차감</th>
									<th class="column-header" title="해당 분류 매출액 - 회원권차감">실매출합계</th>
									<th class="column-header">총합계</th>
								</tr>
							</thead>
						</table>
					</div>
