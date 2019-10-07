<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../kcss/insert.css">
<!-- ================== [[ 메인화면 ]] ================== -->

<!--============================ [[ script ]] ==============================================  -->
<script>
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
	//커스텀 스크립트
/*	$(document).ready(function(){
	   //선택가능날짜 범위 설정
	   $('#datebox').datebox().datebox('calendar').calendar({
	       validator: function(date){
	           var now = new Date();
	           var d1 = new Date(now.getFullYear()-1, now.getMonth(), now.getDate());
	           var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	           return d1<=date && date<=d2;
	       }
	   });
	   //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
 	   $('#datebox1').datebox({
	      onSelect: function(date){
	         firstDate = date;
	         $('#datebox2').datebox().datebox('calendar').calendar({
	               validator: function(date){
	                   var now = new Date();
	                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
	                   var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	                   return d1<=date && date<=d2;
	               }
	           });
	      }
	   }); 
	});*/
</script>

<!--============================ [[ script ]] ==============================================  -->
		<div class="page-top-menu-wrap">
					<div class="left">
						<div class="page-title">기구관리</div>
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
							<span>기구<br>
							<span>&nbsp;&nbsp;&nbsp;등록관리</span>
							</span>
						</div>
					</div>
					<div class="col-sm-8 col-lg-8">
					<div class="col-sm-6 col-lg-6">
						 <div class="row">
								<span>●&nbsp;기구명<input class="textbox" type="text" style="width:60%;margin-left:10%"></span>
						 </div>
						 <div class="row" style="margin-top:20%">
								<span>●&nbsp;작동여부&nbsp;&nbsp;&nbsp;
									<span class="operation">
										<select class="valid" aria-invalid="false">
											<option value="operate">작동</option>
											<option value="broken">고장</option>
										</select>
									</span>
								</span>
							</div>
					<div class="row" style="margin-top:20%">
							<span>●&nbsp;수리횟수&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" style="width:15%"></span>
					</div>
					</div>
					<div class="col-sm-6 col-lg-6">
						<div class="row">
							<span>●&nbsp;&nbsp;&nbsp;가격<input class="textbox" type="text" style="width:70%;margin-left:7%"></span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;고장내역&nbsp;<input class="textbox" type="text" style="width:70%"></span>
						</div>
						<div class="row" style="margin-top:20%">
						<!-- 	<span>●&nbsp;구매일<input class="textbox" type="text" style="width:65%;margin-left:10%"></span> -->
							<span>●&nbsp;구매일&nbsp;&nbsp;</span><input class="easyui-datebox" id="datebox" style="width:65%;margin-left:10%">
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
									<div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">구매일</div>
									<div class="col-sm-7 col-lg-7">구매날짜 넣는 곳</div>
								</div>
							</div>
							<div class="row meminfo-second">
								<table class="meminfo-table">
									<tr>
										<td class="meminfo-table-header" style="width:15%">기구명</td>
										<td class="meminfo-table-header" style="width:10%">작동여부</td>
										<td class="meminfo-table-header" style="width:20%">가격</td>
										<td class="meminfo-table-header" style="width:10%">수리횟수</td>
										<td class="meminfo-table-header" style="width:35%">고장내역</td>
									</tr>
									<tr>
										<td class="meminfo-table-body">기구명입력</td>
										<td class="meminfo-table-body">고장or작동</td>
										<td class="meminfo-table-body">등등</td>
										<td class="meminfo-table-body">인클루드</td>
										<td class="meminfo-table-body">for문</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
