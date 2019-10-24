<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%--    <%@ include file="/common/JEasyUICommon.jsp"%>  --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css?22">
<link rel="stylesheet" type="text/css" href="../NewCSS/schedule.css?22">
<link rel="stylesheet" type="text/css" href="../NewCSS/scheduleModal.css?22">
<!-- ============================ [[ 스케줄러 ]] ======================================== -->
<!-- ============================ [[ 주간달력날짜추출 ]] ======================================== -->
<style type="text/css">
	body{
		padding:0%;
	}
</style>
<%
	Calendar cal = Calendar.getInstance();
	int day[][][] = new int[12][6][7];
	DecimalFormat df = new DecimalFormat("00");
	String week[] = {"일","월","화","수","목","금","토"};
	int[] weekday = new int[week.length];
	//이번 달 정보 가져오기
	Calendar currCal = Calendar.getInstance();
	String cyear = df.format(currCal.get(Calendar.YEAR));
	int fyear = Integer.parseInt(cyear);
	int icyear = Integer.parseInt(cyear);
	if(request.getParameter("cyear") != null){
		icyear = Integer.parseInt(request.getParameter("cyear").toString());
	}
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	if(request.getParameter("cmonth") != null){
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString())-1;
	}
	int icweek = currCal.get(Calendar.WEEK_OF_MONTH);
	for(int year=fyear-10;year<fyear+10;year++){
	if(year==icyear){
		for(int month=0;month<12;month++){
			cal.set(Calendar.YEAR,year);
				if(month == icmonth){
					//이번달 마지막 날짜 저장하기
					cal.set(Calendar.MONTH, month);
					for(int tweek=1;tweek<cal.getMaximum(Calendar.WEEK_OF_MONTH);tweek++){
						cal.set(Calendar.WEEK_OF_MONTH,tweek);
						if(tweek == icweek){
							int cnt = 0;
							for(int i=1;i<week.length+1;i++){
								cal.set(Calendar.DAY_OF_WEEK,i);
								String tday = df.format(cal.get(Calendar.DAY_OF_MONTH));
								int today = Integer.parseInt(tday);
								weekday[cnt] = today;
								cnt++;
							}}}}}}}
%>
<!-- ============================ [[ 주간달력날짜추출 ]] ======================================== -->
 

<style type="text/css">
	body{
		padding:0%;
	}
</style>

<body>
<script type="text/javascript">
	$(document).ready(function(){
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();
		$.ajax({
			url:"/schedule/scheduleList.fm"
		   ,success:function(data){
			   $("#schedule_week").html(data);
		   }
			
		});
		/* scheduleModal combobox */
		$.ajax({
			method:'get'
			,url:'/schedule/scheduleModal.fm'
			,success:function(data){
				$("#sm_combobox").html(data);
			}
		}); 
	});
</script>
<script type="text/javascript">
/* 모달창 */
 	function scheduleModal(){
		$("#scheduleModal").modal();
	} 

 	function schedulechangeModal(mem_name, mem_num, appli_date, shour, smin, ehour, emin, place, appli_num){
 	//	alert(mem_name+", "+mem_num+", "+appli_date+", "+shour+", "+smin+", "+ehour+", "+emin+", "+place+", "+appli_num);
 		$.ajax({
			method:'get'
			,url:'/schedule/scheduleModal.fm'
			,success:function(data){
				$("#sm_combobox2").html(data);
			}
		}); 
 		$("#scm_mem_num").val(mem_num);
 		$("#scm_appli_num").val(appli_num);
 		$("#scm_memname").val(mem_name);
 		$("#scm_datebox").datebox('setValue',appli_date);
 		$("#scm_appli_start_hour").val(shour);
 		$("#scm_appli_start_min").val(smin);
 		$("#scm_appli_end_hour").val(ehour);
 		$("#scm_appli_end_min").val(emin);
 		$("#ep_name").val(place);
 		$("#schedulechangeModal").modal();
 	}
/* 모달창 */
/* 출결사항 */
	function caUPD(appli_num,att_num){
	//	alert(appli_num+", "+att_num);
		$.ajax({
			url:'/schedule/caUPD.fm?appli_num='+appli_num+'&att_num='+att_num
			,success:function(data){
				$("#schedule_week").html(data);
			}
		});
	}
/* 출결사항 */
/* 회원검색모달창 */
	 function memberSearch(){
			var d_memname = $("#d_memname").val();
			$.ajax({
				url:"/member/memInfoList.fm?mem_name="+d_memname
			   ,success:function(data){
					$("#memberSearchModalTable").html(data);
			   }
			});
   } 
/* 회원검색모달창 */
/* 데이트 박스 */
	//datebox 날짜형식 YYYY-MM-DD로 설정
	 $.fn.datebox.defaults.formatter = function(date){
	     var y = date.getFullYear();
	     var m = date.getMonth()+1;
	     var d = date.getDate();
	     return y+'/'+(m<10 ? "0"+m:m)+'/'+(d<10 ? "0"+d:d);
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
/* 데이트 박스 */
/* 수업 예약모달창 */
	function smreservation(){
		 var formData = $("#f_sm").serialize();
	//	 alert("form전성");
		 $.ajax({
			 method:'get'
			 ,url:'/schedule/scheduleReservation.fm'
			 ,data:formData
			 ,success:function(data){
				 if(data == '예약불가'){
					alert('예약된 수업이 존재합니다.');	 
				 }else{
					 $("#scheduleModal").modal({backdrop: false});
					 $("#scheduleModal").modal('hide');
					 $("#schedule_week").html(data);
			 	 }
			 }
		 });
	 }
/* 수업 예약모달창 */
/* 예약변경 모달창 */
	function smreservation(){
		 var formData = $("#f_scm").serialize();
	//	 alert("form전성");
		 $.ajax({
			 method:'get'
			 ,url:'/schedule/scheduleReservationUPD.fm'
			 ,data:formData
			 ,success:function(data){
				 if(data == '변경불가'){
					alert('예약된 수업이 존재합니다.');	 
				 }else{
					 $("#scheduleModal").modal({backdrop: false});
					 $("#scheduleModal").modal('hide');
					 $("#schedule_week").html(data);
			 	 }
			 }
		 });
	 }
/* 예약변경 모달창 */
/* 날짜이동 */
	function prev(year,month,week){
	//	alert(year+", "+month+", "+week);
		$.ajax({
			url:"/schedule/scheduleList.fm?year="+year+"&month="+month+"&week="+week+"&move=prev"
		   ,success:function(data){
			  // alert("성공");
			   $("#schedule_week").html(data);
		   }
		});
	}
	function next(year,month,week){
	//	alert(year+", "+month+", "+week);
		$.ajax({
			url:"/schedule/scheduleList.fm?year="+year+"&month="+month+"&week="+week+"&move=next"
		   ,success:function(data){
			  // alert("성공");
			   $("#schedule_week").html(data);
		   }
		});
	}
/* 날짜이동 */
</script>
<div>
	<!-- ============================ [[ 화면전환 ]] ======================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">예약관리</a>
		</div>
	<!-- ============================ [[ 홈 ]] ======================================== -->
<div id="schedule_week">
</div>
</div>
<!-- ============================ [[ 화면전환 ]] ======================================== -->
<!--================================ [[ 수업등록 모달 ]] ====================================== -->
  <!-- The Modal -->
  <div class="modal fade" id="scheduleModal">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">수업 예약</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
       <form id="f_sm">
        <div class="modal-body" style="padding-left: 5%;">
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column">회원명</label>
				<span>
					<input type='hidden' name='sm_mem_num' id="sm_mem_num" />
					<input type="text" class="spending-text" id="sm_memname" name="sm_memname" style="width:260px;">
				</span>
				<span>
					<button type="button" class="btn-schedule-memsearch" data-toggle="modal" data-target="#search_member2">회원검색</button>
				</span>
			</div>
			<div id="sm_combobox">
				
			</div>
		<div style="padding:0 0 5px">
			<label class="spend-box-right-column">수업일자</label>
			<span>
				<span class="easyui-datebox" name="appli_date" id="datebox1"></span>
			</span>
		</div>
		<div style="padding:0 0 5px">
				<label class="spend-box-right-column">수업시간</label>
				<span>
					<select name="appli_start_hour" class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select name="appli_start_min" class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
				<span>&nbsp;&nbsp;~&nbsp;&nbsp;</span>
				<span>
					<select name="appli_end_hour" class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select name="appli_end_min" class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			</div>
	<!-- BODY -->
        </div>
        </form>
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" onClick="smreservation()">등록</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
<!--================================ [[ 수업등록 모달 ]] ====================================== -->  


<!--================================ [[ 회원검색 모달 ]] ====================================== -->

<!--   The Modal -->
  <div class="modal fade" id="search_member2">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">회원 검색</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="padding-left: 5%;height: 240px;">
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column" style="text-align:center">회원명</label>
				<span>
					<input type="text" class="spending-text" id="d_memname" style="width:260px;">
				</span>
				<span>
					<button type="button" id="memberSearch" onClick="memberSearch()" class="btn-schedule-memsearch" style="margin-left:10px;">검색</button>
				</span>
			</div>
			<div class="search-mem-modal" id="memberSearchModalTable">
				<table id="tb_membersearch" class="table table-bordered  table-striped">
						<tr>
							<th class="tableheader">회원명</th>
							<th class="tableheader">생년월일</th>
							<th class="tableheader">전화번호</th>
						</tr>
				</table>
			</div>
<!-- BODY -->
        </div>
<!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
 <!--  ================================ [[ 회원검색 모달 ]] ====================================== -->


<!--================================ [[ 수업변경 모달 ]] ====================================== -->
  <!-- The Modal -->
  <div class="modal fade" id="schedulechangeModal">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">예약 변경</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
       <form id="f_scm">
        <div class="modal-body" style="padding-left: 5%;">
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column">회원명</label>
				<span>
					<input type='hidden' name='sm_mem_num' id="scm_mem_num" />
					<input type='hidden' name='sm_appli_num' id="scm_appli_num" />
					<input type="text" class="spending-text" id="scm_memname" name="sm_memname" style="width:260px;">
				</span>
			</div>
			<div id="sm_combobox2">
			</div>
		<div style="padding:0 0 5px">
			<label class="spend-box-right-column">수업일자</label>
			<span>
				<span class="easyui-datebox" name="appli_date" id="scm_datebox"></span>
			</span>
		</div>
		<div style="padding:0 0 5px">
				<label class="spend-box-right-column">수업시간</label>
				<span>
					<select name="appli_start_hour" id="scm_appli_start_hour" class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select name="appli_start_min" id="scm_appli_start_min" class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
				<span>&nbsp;&nbsp;~&nbsp;&nbsp;</span>
				<span>
					<select name="appli_end_hour" id="scm_appli_end_hour" class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select name="appli_end_min" id="scm_appli_end_min" class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=df.format(i) %>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			</div>
	<!-- BODY -->
        </div>
        </form>
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" onClick="smreservationchange()">변경</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
<!--================================ [[ 수업변경 모달 ]] ====================================== -->  

