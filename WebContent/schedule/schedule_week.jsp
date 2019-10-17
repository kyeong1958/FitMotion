<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DecimalFormat"%>
<%
	String result = (String)request.getAttribute("result");
	if("예약불가".equals(result)){
		out.print(result);
	}
	if(request.getAttribute("scheduleList") != null){
		
	List<Map<String,Object>> scheduleList = (List<Map<String,Object>>)request.getAttribute("scheduleList");
	int size = 0;
	if(scheduleList != null){
		size = scheduleList.size();
	}
	for(int i=0;i<size;i++){
		Map<String,Object> scheduleMap = scheduleList.get(i);
		String date[] = scheduleMap.get("APPLI_DATE").toString().split("/");
	}
%>
<%
	Calendar cal = Calendar.getInstance();
	Calendar cal2 = Calendar.getInstance();
	String day[][][] = new String[6][8][24];
	String hour[][][] = new String[6][8][24];
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
					/* 	cal.set(Calendar.DAY_OF_WEEK,Calendar.SUNDAY);
						startday = cal.get(Calendar.DAY_OF_MONTH);
						cal.set(Calendar.DAY_OF_WEEK,Calendar.SATURDAY);
						endday = cal.get(Calendar.DAY_OF_MONTH); */
						//out.print(tweek + " 주:" + startday+"~"+endday+"<br>");
						if(tweek == icweek){
							int cnt = 0;
							for(int i=1;i<week.length+1;i++){
								cal.set(Calendar.DAY_OF_WEEK,i);
								String tday = df.format(cal.get(Calendar.DAY_OF_MONTH));
								int today = Integer.parseInt(tday);
								weekday[cnt] = today;
								cnt++;
								for(int t=8;t<24;t++){
									day[tweek][i][t] = tday;
									hour[tweek][i][t] = df.format(t);
							}}}}}}}}
	
%>
<!-- ============================ [[ 주간달력날짜추출 ]] ======================================== -->
<div style="padding:0px 30px">
<%
	for(int month=0;month<12;month++){
		if(month==icmonth){
			for(int i=1;i<cal.getMaximum(Calendar.WEEK_OF_MONTH);i++){
				if(i==icweek){
%>
<table class="weeklycalendar">
<tr>
<%
			out.print("<td width='50' style='border:1px solid #BABBC2'>&nbsp;</td>");
			for(int j=0;j<week.length;j++){
				out.print("<td width='200' height='35' align='center' style='border:1px solid #BABBC2'><font size='3px' color='#454544'>"+week[j]+" , "+weekday[j]+"일</font></td>");
			}
			out.print("</tr>");
			
			for(int time=8;time<24;time++){
			out.print("<tr>");
					int cnt = 0;
					for(int j=0;j<8;j++){
								if(j==0){
									out.print("<td height='30' width='20' rowspan='2' class='scheduletd' align='center' style='border:1px solid #BABBC2'>");
									out.print("<font weight='600' size='3px'>"+time+"</font></td>");
								}
								else {
									for(int sche=0;sche<size;sche++){
										Map<String,Object> scheduleMap = scheduleList.get(sche);
										String date[] = scheduleMap.get("APPLI_DATE").toString().split("/");
										String starttime[] = scheduleMap.get("APPLI_START_TIME").toString().split(":");
										String endtime[] = scheduleMap.get("APPLI_END_TIME").toString().split(":");
										if(Integer.parseInt(starttime[1]) < 30){
											if(day[i][j][time].equals(date[2]) && df.format(time).equals(starttime[0])){
												out.print("여기");
												cnt++;%>
												<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73;' ondblClick="scheduleModal()"
													onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'" rowspan="2">
													<div style="border:1px solid #BABBC2;border-radius:5px;background-color: green;width: 100%;height: 100%;">
														<div><%=scheduleMap.get("MEM_NAME")%></div>
													    <div><%=scheduleMap.get("APPLI_START_TIME") %></div>
													    <div><%=scheduleMap.get("APPLI_END_TIME") %></div>
													</div>
												</td>	
										<%	}
										}
									}
									if(cnt == 0){
										%>
										<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73' ondblClick="scheduleModal()"
										onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'"></td>
								<%
									}
									if(j==8){
											out.print("</tr>");
											j = 1;
											out.print("<tr>");
										for(int sche=0;sche<size;sche++){
											Map<String,Object> scheduleMap = scheduleList.get(sche);
											String date[] = scheduleMap.get("APPLI_DATE").toString().split("/");
											String starttime[] = scheduleMap.get("APPLI_START_TIME").toString().split(":");
											String endtime[] = scheduleMap.get("APPLI_END_TIME").toString().split(":");
										if (cnt == 0){
											if(Integer.parseInt(starttime[1]) >= 30){
												if(day[i][j+1][time].equals(date[2]) && df.format(time).equals(starttime[0])){
													if(cnt == 0){
												}
										%>
										 	<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73;' ondblClick="scheduleModal()"
												onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'">
												<div style="border:1px solid #BABBC2;border-radius:5px;background-color: green;width: 100%;height: 100%;text-align:'center'">
													<div><%=scheduleMap.get("MEM_NAME")%></div>
												    <div><%=scheduleMap.get("APPLI_START_TIME") %></div>
												    <div><%=scheduleMap.get("APPLI_END_TIME") %></div>
												</div>
											</td>
										<%			}
												}
											}
											
										}
										if(cnt == 0){
											%>
											<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73' ondblClick="scheduleModal()"
											onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'"></td>
									<%
										}
									}	
								}/////// else if 
										out.print("</tr>");			
							}//////for - j
						}////for - time	
					
%>
</table>
</div>

<%
}}}}}
%>