<%@page import="sun.util.resources.CalendarData"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- ================== [[ 메인화면 ]] ================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
</style>

<title>FitMotion</title>
<%@ include file="../common/JEasyUICommon.jsp"%>
<%@ include file="../CSS/maincss.jsp"%>
<%@ include file="/CSS/datepicker.jsp"%>
<!-- datepicker -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
timepicker
<link rel="stylesheet" href="//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.css">
<script src='//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.js'></script> -->
</head>
<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">
	function ajax(url){
		alert("ajax==> "+url)
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#changedisplay").html(data);
		   }
		});
	}
</script>

<!--============================ [[ script ]] ==============================================  -->
<body>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   <div class="row-i">
<%--    <%@ include file="./nav.jsp" %> --%>
   </div>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   
   
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
   <div class="container-fluid">
      <div class="col-sm-2" >&nbsp;</div>
      <div class="col-sm-8" >
         <div class="col-sm-2">
            <div class="row" id="label"></div>
                <div class="container" >
               <ul class="list" id="mainlist" >
                  <a id="menu">매출관리</a>
                  <li><a href="#" onclick="">전체 매출 </a></li>
                  <li><a href="#" onclick="">직원별 매출 </a></li>
                  <li><a href="#" onclick="">종목별 매출 </a></li>
                  <li><a href="#" onclick="">고객별 매출 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">헬스장관리</a>
                  <li><a href="javascript:ajax('SProgram.jsp')">프로그램 </a></li>
                  <li><a href="#" onclick="">프로모션 </a></li>
                  <li><a href="javascript:ajax('Equipment.jsp')">기구관리 </a></li>
                  <li><a href="javascript:ajax('Goods.jsp')">비품관리 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">직원관리</a>
                  <li><a href="javascript:ajax('Staff.jsp')">직원등록/목록</a></li>
                  <li><a href="javascript:ajax('monthly.jsp')">근무일지</a></li>
                  <li><a href="javascript:ajax('StaffSalary.jsp')">직원급여 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">회원관리</a>
                  <li><a href="javascript:ajax('Member.jsp')">회원등록/목록 </a></li>
                  <li><a href="javascript:ajax('MemberBuy.jsp')">구매등록</a></li>
               </ul>
            </div>
         </div>
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
         
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         <div class="col-sm-10" style="border: 1px solid;">
         <div id="changedisplay">

<span id="new">
<%
int a = 10;
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
		//1월~12월까지
		for(int month=0;month<12;month++){
			cal.set(Calendar.YEAR,year);
			if(month == icmonth){
					//이번달 마지막 날짜 저장하기
					cal.set(Calendar.MONTH, month);
					for (int weeks = 1; weeks < cal.getMaximum(Calendar.WEEK_OF_MONTH); weeks++) {
						   cal.set(Calendar.WEEK_OF_MONTH, weeks);
						   cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
						   int startDay = cal.get(Calendar.DAY_OF_MONTH);
						   cal.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
						   int endDay = cal.get(Calendar.DAY_OF_MONTH);
						   if (weeks == 1 && startDay >= 7) {
						    startDay = 1;
						   }
						   if (weeks == cal.getMaximum(Calendar.WEEK_OF_MONTH) - 1 && endDay <= 7) {
						    endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
						   }
						 	out.print("<br>");
						   out.print(weeks + "주 : " + startDay + " ~ " + endDay+"<br>");
						  }
						 }

					}
				}
			}
	for(int month=0;month<12;month++){
		if(month==icmonth){
%>

               <div class="row" id="monthlyheader" align="center" style="margin-top: 20px"> 
               <span style="padding-left: 5px;margin-right: 3% ">
               <button onClick="javascript:ajax('monthly.jsp')">monthly</button>
               <button onClick="javascript:ajax('weekly.jsp')">weekly</button>
               <button onClick="">daily</button>
               <button onClick="">일정등록</button>
               </span>
              <!--  <span style="margin-left:120px;margin-right:300px "> -->
               <span style="margin-left:10%;margin-right:30% ">
               <span style="margin-right:50px;">
                  <a href="javascript:premonth()" data-handler="prev" data-event="click" title="이전" >
                   	  이전
                  </a>
              </span>
                  
                  <span id="kyear"><font size="30px" color="black"><%=icyear%></font></span>
                  <span><font size="30px" color="black">.</font></span>
                  <span id="kmonth"><font size="30px" color="black"><%=icmonth+1%></font></span>
                  <span  style="margin-left:50px;">
                  <a href="javascript:nextmonth()" data-handler="next" data-event="click" title="다음">
                  	다음</a>
                  </span>
               </span> 
               </div>
<span style="padding: 5px 5px">
<table class="monthlycalendar" border="1" align="center" style="">
<tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td width='200' height='100' align='center'><font size='5mm'>"+week[i]+"</font></td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
						if(day[month][i][j]==a){
							out.print("<td height='100' align='left' valign='top'  style='background-color: #8662cd'><a href='#'><font size='5px' color=white>"+day[month][i][j]+"</font></a></td>");
						}else{	
							out.print("<td height='100' align='left' valign='top'><a href='#'><font size='5px' color='black'>"+day[month][i][j]+"</font></a></td>");
						}
					}else{
					out.print("<td>&nbsp&nbsp</td>");
					}
				}/////// end of inner for [주간일자]
			out.print("</tr>");
			}////////////// end of outter for [월별 일자]
%>
</table>
</span>
<%
		}///////////end of if[이번달 정보만 출력하기]
	}
%>
<!-- </div> -->
</span>
         </div>
      </div>
<!--//////////////////////////화면 전환////////////////////////////////////  -->
      <div class="col-sm-2">&nbsp;</div>
   </div>
</body>
</html>