<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../kcss/insert.css">
<!-- ================== [[ 메인화면 ]] ================== -->

<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">
//데이트박스 
//datebox 날짜형식 YYYY-MM-DD로 설정
	$.fn.datebox.defaults.formatter = function(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate(); 
	return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
}
//datebox parser설정
	$.fn.datebox.defaults.parser = function(s){
    var t = Date.parse(s);
    if (!isNaN(t)){
       return new Date(t);
    } else {
       return new Date();
    }
}
//datebox 한글화
	$.fn.datebox.defaults.currentText = '오늘'
$.fn.datebox.defaults.closeText = '닫기'
$.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
$.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
</script>

<!--============================ [[ script ]] ==============================================  -->
		<div class="page-top-menu-wrap">
					<div class="left">
						<div class="page-title">비품관리</div>
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
							<span>비품<br>
							</span>
						</div>
					</div>
					<div class="col-sm-8 col-lg-8">
					<div class="col-sm-6 col-lg-6">
						 <div class="row">
								<span>●&nbsp;비품명<input class="textbox" type="text" style="width:60%;margin-left:10%"></span>
						 </div>
						 <div class="row" style="margin-top:20%">
							<span>●&nbsp;개수<input class="textbox" type="text" style="width:70%;margin-left:7%"></span>
							</div>
					<div class="row" style="margin-top:20%">
							<span>●&nbsp;구매일&nbsp;&nbsp;</span><input class="easyui-datebox" id="datebox" style="width:65%;margin-left:10%">
					</div>
					</div>
					<div class="col-sm-6 col-lg-6">
						<div class="row">
								<span>●&nbsp;분류&nbsp;&nbsp;&nbsp;
									<span class="operation">
										<select class="valid" aria-invalid="false">
											<option value="">소모품</option>
											<option value=""></option>
										</select>
									</span>
								</span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;금액&nbsp;<input class="textbox" type="text" style="width:70%"></span>
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
										<td class="meminfo-table-header" style="width:20%">비품명</td>
										<td class="meminfo-table-header" style="width:20%">분류</td>
										<td class="meminfo-table-header" style="width:20%">개수</td>
										<td class="meminfo-table-header" style="width:20%">금액</td>
										<td class="meminfo-table-header" style="width:20%">구매일</td>
									</tr>
									<tr>
										<td class="meminfo-table-body">기구명입력</td>
										<td class="meminfo-table-body">고장or작동</td>
										<td class="meminfo-table-body">등등</td>
										<td class="meminfo-table-body">인클루드</td>
										<td class="meminfo-table-body">2019.09.16</td>
									</tr>
								</table>
							</div>
						</div>
					</div>






