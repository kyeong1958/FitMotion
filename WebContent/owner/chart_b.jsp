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

<div class="content">
	<div class="page manage-sales">

		<div class="page-top-menu-wrap">
			<div class="left">
				<div class="page-title">우리샵 매출</div>
			</div>
		</div>


		<div class="page-content shop">
			<div class="sub-page-header-wrap">
				<ul class="sub-page-header">
					<li class="item"><a href="./chart_a.jsp" target="ifrm_content">오늘매출</a></li>
					<li class="active item"><a href="./chart_b.jsp"
						target="ifrm_content">매출 리포트</a></li>
					<li class="item"><a href="./chart_c.jsp" target="ifrm_content">월간
							리포트</a></li>
				</ul>
			</div>
			<div class="report">
				<div class="graph-wrap">
					<div class="header">
						<div class="ui choose-date" id="div-choosedate-startdate">
							<input class="text hasDatepicker" id="startdate" name="startdate"
								style="display: none"> <input type="hidden"
								id="timeKind" value="d">
							<div class="text" id="div-startdate">2019년09월09일</div>
							<span class="fa fa-caret-down" id="span-startdate"></span>
						</div>
						<div
							style="display: inline-block; margin-right: 10px; font-size: 18px;">~</div>
						<div class="ui choose-date" id="div-choosedate-enddate">
							<input class="text hasDatepicker" id="enddate" name="enddate"
								style="display: none">
							<div class="text" id="div-enddate">2019년09월09일</div>
							<span class="fa fa-caret-down" id="span-enddate"></span>
						</div>
						<div class="range">
							<a class="item active" href="#" onclick="onClickPeriod('d')">일</a><a
								class="item " href="#" onclick="onClickPeriod('w')">주</a><a
								class="item " href="#" onclick="onClickPeriod('m')">월</a><a
								class="item " href="#" onclick="onClickPeriod('y')">요일</a>
						</div>
					</div>
					<div class="body">
						<!-- <a style="width: 500px; height: 250px; float: left"><canvas
									id="myChart"></canvas></a> -->
						<canvas id="myChart"
							style="width: 30%; height: 70%; max-width: 800px"></canvas>
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
							<button type="button" class="action-overview"
								onclick="onClickOverviewCash('cosm');">
								<i></i>
							</button>
						</th>
						<th class="column-header">카드</th>
						<th class="column-header">회원권차감</th>
						<th class="column-header" title="해당 분류 매출액 - 회원권차감">실매출합계</th>
						<th class="column-header">총합계</th>
					</tr>
				</thead>
			</table>
		</div>
		<script>
			var ctx = document.getElementById('myChart');

			var myBarChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : [ 'January', 'February', 'March', 'April', 'May',
							'June', 'July' ],
					datasets : [ {
						label : 'My First Dataset',
						data : [ 65, 59, 80, 81, 56, 55, 40 ],
						fill : false,
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(255, 159, 64, 0.2)',
								'rgba(255, 205, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(201, 203, 207, 0.2)' ],
						borderColor : [ 'rgb(255, 99, 132)',
								'rgb(255, 159, 64)', 'rgb(255, 205, 86)',
								'rgb(75, 192, 192)', 'rgb(54, 162, 235)',
								'rgb(153, 102, 255)', 'rgb(201, 203, 207)' ],
						borderWidth : 1
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
		</script>
	</div>
</div>