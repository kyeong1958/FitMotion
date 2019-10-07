<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 강사 상세 스케줄 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사상세스케줄</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffManagement-calendar.css">
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
/* 	function weekly(year,month,day){
		alert("날짜선택"+year+month+day);
		var theday = new Date(year,month,day).getDay();//해당날짜의 요일
		var startday = 0;
		if(theday%6 == 0){
			startday = day;
		}else{
			startday = day-theday;
			if(day < 6){
				
			}			
		}
		alert("startday"+startday);
		
	} */
</script>
</head>
<script type="text/javascript">
	function sidemenu(id){
		alert(this.val());
		$(id).css("background-color","white");
		$(id+"> a").css("color","#42485A");
		$(".sidemenu")
	}

</script>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$(".sales").hide();
		$(".member").hide();
		$(".analysis").hide();
		$(".service").hide();
	});
</script>
<div class="container-fluid">
	<div class="row nav">
		<div class="col-sm-2"style="border:1px soild"></div>
	</div>
	<div class="col-lg-1" id="sidebar">

		<div class="row sidemenutitle" id="salesmanagement">매출관리</div>
		<div class="row sales">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
		</div>
		<div class="row sidemenutitle" id="salesmanagement">회원관리</div>
		<div class="row member">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
		</div>
		<div class="row sidemenutitle" id="analysis">통계분석</div>
		<div class="row analysis">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
			<div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
			<div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
		</div>
		<div class="row sidemenutitle titleservice" id="analysis">고객센터</div>
		<div class="row service">
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
			<div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
		</div>
	</div>
	<div id="mainboard">
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<a class="bar_menu" href="#">회원상세</a>
		</div>
	
	<!-- ================================= [[ 개인정보 ]] =================================================== -->
		<div class="row profile">
			<div class="row">
				<div class="col-lg-4">
					<div class="profile-top memname">
						이경애
					</div>
					<div class="profile-bottom">
						담당그룹 <span>4</span>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/gender2.png" style="width: 6%;">
						여성
					</div>
					<div class="profile-bottom">
						<img src="../images/address.png" style="width: 6%;">
						경기도 안산시 상록구 본오동
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/phone.png" style="width: 6%;">
						010-2680-6595
					</div>
					<div class="profile-bottom">
						<img src="../images/email.png" style="width: 6%;">
						미입력
					</div>			
				</div> 
			</div>
			<div class="row" style="margin-top: 25px;">
				<a  class="staff-management-tab" style="border-right:1px solid #BABBC2;color:black">
					<img src="../images/piechart.png" class="staff-management-tab-a">강사 정보
				</a>
				<a  class="staff-management-tab" style="border-right:1px solid #BABBC2;color:black">
					<img src="../images/calendar.png" class="staff-management-tab-a">스케줄 확인
				</a>
				<a class="staff-management-tab" style="color:black">
					<img src="../images/person.png" class="staff-management-tab-a">인사 정보
				</a>
			</div>
		</div>
		<div class="section">
			<div class="col-lg-4" style="padding: 10px;" id="new">
	<!-- ================================= [[ left calendar ]] =================================================== -->
<%-- <%
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
</div> --%>
<%@ include file="/kView/staffManagement_calendar.jsp"%>
	<!-- ================================= [[ left calendar ]] =================================================== -->
			</div>
	<!-- ================================= [[ right weekly calendar ]] =================================================== -->
			<div class="col-lg-8" style="padding-top: 58px;">
				<ul>
<%--  <%
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
 --%>				</ul>				
				
				
				
			</div>
	<!-- ================================= [[ right weekly calendar ]] =================================================== -->
		</div>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	</div>
</div>


</body>
</html>


