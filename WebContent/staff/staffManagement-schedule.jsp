<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 강사 상세 스케줄확인 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffManagement-calendar.css">
<style type="text/css">
	body{
	   padding:0%;
	}
</style>
 <script type="text/javascript">
	//콤보박스 년도 받아올 변수
 	var kyear;
	//콤보박스 월 받아올 변수
	var kmonth;
	//다음버튼눌렀을 때
	function nextmonth(){
		kyear = $("#kyear").text();
		kmonth = $("#kmonth").text();
		var kkmonth = parseInt(kmonth);
		if(kkmonth<12){
			kkmonth += 1;
		}else{
			kyear =  parseInt(kyear);
			kyear += 1;
			kkmonth = 1;
		}
		$.ajax({
			 method:'get'
			 ,url:'staffManagement_calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//이전버튼눌렀을때
	function premonth(){
		kyear = $("#kyear").text();
		kmonth = $("#kmonth").text();
		var kkmonth = parseInt(kmonth);
		if(kkmonth>1){
			kkmonth -= 1;
		}else{
			kyear =  parseInt(kyear);
			kyear -= 1;
			kkmonth = 12;
		}
		$.ajax({
			 method:'get'
			 ,url:'staffManagement_calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//월별 달력 날짜 클릭에 따른 주간달력 날짜변경
	function weekly(year,month,day){
	//	alert("날짜선택"+year+month+day);
		var theday = new Date(year,month,day).getDay();//해당날짜의 요일
		var startday = 0;
		if(theday%6 == 0){
			startday = day;
		}else{
			startday = day-theday;
			if(day < 6){
				
			}			
		}
	//alert("startday"+startday);
		
	}
</script>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
			<div class="col-lg-4" style="padding: 10px;" id="new">
	<!-- ================================= [[ left calendar ]] =================================================== -->
<%
	Calendar cal = Calendar.getInstance();
	int day[][][] = new int[12][6][7];

	DecimalFormat df = new DecimalFormat("00");
	String week[] = {"일","월","화","수","목","금","토"};
	//이번 달 정보 가져오기
	Calendar currCal = Calendar.getInstance();
	String cyear = df.format(currCal.get(Calendar.YEAR));
	int fyear = Integer.parseInt(cyear);
	int icyear = Integer.parseInt(cyear);
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	for(int month=0;month<12;month++){
			if(month == icmonth){
				//이번달 마지막 날짜 저장하기
				cal.set(Calendar.MONTH, month);
				int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
				for(int i=1;i<=maxDay;i++){
					cal.set(Calendar.DATE,i);
					day[cal.get(Calendar.MONTH)][cal.get(Calendar.WEEK_OF_MONTH)-1][cal.get(Calendar.DAY_OF_WEEK)-1]=i;
				}
			}
		}
	for(int month=0;month<12;month++){
		if(month==icmonth){
%>
<div id="calendarmodal">
               <div id="calendarheader" align="center">
              	  <a href="javascript:premonth()">
                  	<img src="../images/arrow-left.png" style="width:5%;margin-right:20px">
                  </a>
                  <span class="staff-calendar-header" id="kyear"><%= icyear %></span>
                  <span class="staff-calendar-header">년</span>
                  <span class="staff-calendar-header" id="kmonth"><%= icmonth+1 %></span>
                  <span class="staff-calendar-header">월</span>
                  <a href="javascript:nextmonth()">
                  	<img src="../images/arrow-right.png" style="width:5%;margin-left:20px">
				  </a>                  	
               </div>
<table class="staff-calendar-table"><tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td  class='staff-calendar-table-header' width='40' align='center'>"+week[i]+"</td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
					out.print("<td align='center' class='staff-calendar-table-body'><a href='#' onClick='weekly("+icyear+","+(icmonth)+","+day[month][i][j]+")' style='color:black;'>"+day[month][i][j]+"</a></td>");
					}else{
					out.print("<td>&nbsp&nbsp</td>");
					}
				}/////// end of inner for [주간일자]
			out.print("</tr>");
			}////////////// end of outter for [월별 일자]
%>
</table>
<%
		}///////////end of if[이번달 정보만 출력하기]
	}
%>
</div>
	<!-- ================================= [[ left calendar ]] =================================================== -->
			</div>
	<!-- ================================= [[ right weekly calendar ]] =================================================== -->
			<div class="col-lg-8" style="padding-top: 58px;">
				<ul>
<%
	for(int i=0;i<week.length;i++){
%>
					<li class="staff-calendar-weekly-li">
						<span class="staff-calendar-weekly-span">
						<span class="staff-calendar-weekly-span-circle"></span>
						<%=week[i] %>
						</span>
						<div class="staff-calendar-weekly-span-line"></div>
					</li>
<%
	}
%>
				</ul>				
				
				
				
			</div>
	<!-- ================================= [[ right weekly calendar ]] =================================================== -->
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
