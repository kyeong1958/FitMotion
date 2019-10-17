<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 스케줄러 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/schedule.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/scheduleModal.css">
<style type="text/css">
	body{
		padding:0%;
	}
	*{
		font-family: Sans-serif;
	}
</style>
</head>
<script type="text/javascript">
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
<div>
	<!-- ============================ [[ 화면전환 ]] ======================================== -->

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
	if(request.getParameter("cyear") != null){
		icyear = Integer.parseInt(request.getParameter("cyear").toString());
	}
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	if(request.getParameter("cmonth") != null){
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString())-1;
	}
	for(int year=fyear-10;year<fyear+10;year++){
	if(year==icyear){
		for(int month=0;month<12;month++){
			cal.set(Calendar.YEAR,year);
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
		}
	}
	for(int month=0;month<12;month++){
		if(month==icmonth){
%>
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<a class="bar_menu" href="#">회원상세</a>
		</div>
	<!-- ============================ [[ 홈 ]] ======================================== -->
		<div class="calendar-header">
			<span><input class="easyui-datebox"/></span>
			<select class="schedule-combobox">
				<option>개인레슨 1룸</option>
				<option>개인레슨 2룸</option>
				<option>그룹레슨 룸</option>
				<option>스피닝</option>
				<option>GX</option>
			</select>
			<span id="kyear"><font size="30px" color="black"><%=icyear%></font></span>
	        <span><font size="30px" color="black">.</font></span>
	        <span id="kmonth"><font size="30px" color="black"><%=icmonth+1%></font></span>
		</div>
	<!-- ============================ [[ 캘린더 테이블 ]] ======================================== -->
<table class="monthlycalendar" border="1" align="center" style="">
<tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td width='200' height='100' align='center' style='border-bottom:2px solid'><font size='5mm'>"+week[i]+"</font></td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
						int theday = day[month][i][j];
%>

						<td height='100' align='left' valign='top'><a href='#' style="color: black;font-size: 20px;">
										<%=day[month][i][j]%> 
						</a></td>
<%
					}else{
					out.print("<td>&nbsp&nbsp</td>");
					}
				}/////// end of inner for [주간일자]
			out.print("</tr>");
			}////////////// end of outter for [월별 일자]
%>
</table>
</div>
<%
		}///////////end of if[이번달 정보만 출력하기]
	}
%>
	
<div type="button" data-toggle="modal" data-target="#scheduleModal">모달열기</div>
	<!-- ============================ [[ 화면전환 ]] ======================================== -->
	</div>
</div>
</body>
</html>


<!-- 
 <h2>Small Modal</h2>
  Button to Open the Modal
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
  </button> -->

  <!-- The Modal -->
  <div class="modal fade" id="scheduleModal">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">수업 등록하기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="padding-left: 5%;">
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column">회원명</label>
				<span>
					<input type="text" class="spending-text" style="width:260px;">
				</span>
				<span>
					<button type="button" class="btn-schedule-memsearch">회원검색</button>
				</span>
			</div>
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column">강사명</label>
				<span>
					<select class="spend-combobox" style="width: 170px;text-align-last:center">
						<option value="">이경애</option>
						<option value="">이경애</option>
						<option value="">이경애</option>
						<option value="">이경애</option>
					</select>
				</span>
			</div>
			<div style="padding:0 0 5px">
				<label class="spend-box-right-column">수업장소</label>
				<span>
					<select class="spend-combobox" style="width: 170px;text-align-last:center">
						<option value="">그룹PT1룸</option>
						<option value="">그룹PT2룸</option>
						<option value="">개인PT1룸</option>
						<option value="">개인PT2룸</option>
						<option value="">요가</option>
						<option value="">스피닝</option>
					</select>
				</span>
			</div>
		<div style="padding:0 0 5px">
			<label class="spend-box-right-column">수업일자</label>
			<span>
				<span class="easyui-datebox" id="datebox1"></span>
			</span>
			<span>~</span>
			<span>
				<span class="easyui-datebox" id="datebox2"></span>
			</span>
		</div>
		<div style="padding:0 0 5px">
				<label class="spend-box-right-column">수업시간</label>
				<span>
					<select class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=i%>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=i%>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
				<span>&nbsp;&nbsp;~&nbsp;&nbsp;</span>
				<span>
					<select class="spend-combobox schedule-combobox-time">
<%	for(int i=8;i<23;i++){	%>
						<option value="<%=i%>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
			
				<span>
					<select class="spend-combobox schedule-combobox-time">
<%	for(int i=0;i<60;i+=5){	%>
						<option value="<%=i%>"><%=df.format(i) %></option>
<%	}	%>
					</select>
				</span>
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
  






