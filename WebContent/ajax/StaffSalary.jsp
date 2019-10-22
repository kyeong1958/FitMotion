<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../kcss/insert.css">
<!-- ================== [[ 메인화면 ]] ================== -->

<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">

</script>

<!--============================ [[ script ]] ==============================================  -->
		<div class="page-top-menu-wrap">
					<div class="left">
						<div class="page-title">직원급여</div>
						<!-- 검색창 -->
						<div class="right" style="float: right">
							<div class="ui search form">
								<input id="searchTxt" name="searchTxt" placeholder="검색어를 입력하세요" style="width: 300px"/>
								<a class="action" href="#">
									<i class="fa fa-search" aria-hidden="true"></i>
								</a>
								<div id="search-result" class="search-result hidden"></div>
								<input type="hidden" id="custno" name="custno" value="0"/>
							</div>
						</div>
				</div>
			</div>
<!-- //////////////////////////////////////////////////////////////////////////////// -->
			<div class="row" id="management">
					<div class="col-sm-2 col-lg-2">
						<div class="title_insert">
							<span><font size="5px"><b>+</b></font></span>
							<span>급여<br>
							<span>&nbsp;&nbsp;&nbsp;인센티브</span>
							</span>
						</div>
					</div>
					<div class="col-sm-8 col-lg-8">
					<div class="col-sm-6 col-lg-6">
						 <div class="row">
								<span>●&nbsp;이름<input class="textbox" type="text" style="width:60%;margin-left:10%"></span>
						 </div>
						 <div class="row" style="margin-top:20%">
							<span>●&nbsp;금액<input class="textbox" type="text" style="width:70%;margin-left:7%"></span>
							</div>
					<div class="row" style="margin-top:20%">
							<span>●&nbsp;지급일<input class="textbox" type="text" style="width:60%;margin-left:10%"></span>
					</div>
					</div>
					<div class="col-sm-6 col-lg-6">
						<div class="row">
							<span>●&nbsp;금액&nbsp;<input class="textbox" type="text" style="width:70%"></span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;분류&nbsp;&nbsp;&nbsp;
								<span class="operation">
									<select class="valid" aria-invalid="false">
										<option value="salary">급여</option>
										<option value="incentive">인센티브</option>
									</select>
								</span>
							</span>
						</div>
					</div>
					</div> 
					<div class="col-sm-2 col-lg-2">
						<div class="btn_registration">
						 	<button type="button" class="registration">등록
							</button>
						</div>
					</div>
			</div>
<!-- /////////////////////////////// [[등록박스 끝]] ////////////////////////////////////////////////////// -->
			<div class="row checknbtn" style="margin-bottom:20px">
				<div class="col-sm-3 col-lg-3 allcheck">
					<input type="checkbox"/><span>&nbsp;전체선택</span>
				</div>
				<div class="col-sm-6 col-lg-6">&nbsp;</div>
				<div class="col-sm-3 col-lg-3">
					<div  class="btn3" style="text-align: -webkit-right">
						<button>정렬</button>
						<button>번호</button>
						<button>등록일</button>
					</div>
				</div>
			</div>

<!-- /////////////////////////////// [[회원목록]] ////////////////////////////////////////////////////// -->
					<div class="row" id="meminfo" >
						<div class="row">
							<div class="row meminfo-top">
								<div class="col-sm-3 col-lg-3">
									<input type="checkbox"/>
									<span>번호넣는곳</span>
								</div>
								<div class="col-sm-5 col-lg-5"></div>
								<div class="col-sm-4 col-lg-4">
									<div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">등록일</div>
									<div class="col-sm-7 col-lg-7">등록날짜 넣는 곳</div>
								</div>
							</div>
							<div class="row meminfo-second">
								<table class="meminfo-table">
									<tr>
										<td class="meminfo-table-header" style="width:25%">이름</td>
										<td class="meminfo-table-header" style="width:25%">분류</td>
										<td class="meminfo-table-header" style="width:25%">금액</td>
										<td class="meminfo-table-header" style="width:25%">지급일</td>
									</tr>
									<tr>
										<td class="meminfo-table-body">이름입력</td>
										<td class="meminfo-table-body">급여or인센티브</td>
										<td class="meminfo-table-body">금액</td>
										<td class="meminfo-table-body">2019.09.16</td>
									</tr>
								</table>
							</div>
						</div>
					</div>






