<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();
	int day[][][] = new int[12][6][7];

	DecimalFormat df = new DecimalFormat("00");
	String week[] = {"일","월","화","수","목","금","토"};
	//이번 달 정보 가져오기
	Calendar currCal = Calendar.getInstance();
	String cyear = df.format(currCal.get(Calendar.YEAR));
	int icyear = Integer.parseInt(cyear);
	if(request.getParameter("cyear") != null){
		icyear = Integer.parseInt(request.getParameter("cyear").toString());
	}
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	if(request.getParameter("cmonth") != null){
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString())-1;
	}
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
					out.print("<td align='center' class='staff-calendar-table-body'><a href='#' style='color:black;'>"+day[month][i][j]+"</a></td>");
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