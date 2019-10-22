<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
	body{
		padding:0%;
	}
</style>
<%
	if(request.getAttribute("result") != null){
		String result = (String)request.getAttribute("result");
		if("예약불가".equals(result)){
			out.print(result);
		}
	}
	if(request.getAttribute("scheduleList") != null){
	List<Map<String,Object>> scheduleList = (List<Map<String,Object>>)request.getAttribute("scheduleList");
	int size = 0;
	int toyear = 0;
	int tomonth = 0;
	int toweek = 0;
	if(scheduleList != null){
		size = scheduleList.size();
	}
	Calendar cal2 = Calendar.getInstance();
	for(int i=0;i<size;i++){
		Map<String,Object> scheduleMap = scheduleList.get(i);
		if(scheduleMap.get("year") != null){
			size -= 1;
			toyear = Integer.parseInt(scheduleMap.get("year").toString());
			tomonth = Integer.parseInt(scheduleMap.get("month").toString());
			toweek = Integer.parseInt(scheduleMap.get("week").toString());
			String move = scheduleMap.get("move").toString();
			if("prev".equals(move)){
				if(toweek > 1){
					toweek -= 1;
				}else{
					if(tomonth >1){
					tomonth -= 1;
					cal2.set(Calendar.MONTH,tomonth-1);
					toweek = cal2.getActualMaximum(Calendar.WEEK_OF_MONTH);
					}else{
						toyear -= 1;
						tomonth = 12;
						cal2.set(Calendar.MONTH,tomonth-1);
						toweek = cal2.getActualMaximum(Calendar.WEEK_OF_MONTH);
					}
				}
			}
			else if("next".equals(move)){
				if(toweek < cal2.getActualMaximum(Calendar.WEEK_OF_MONTH)){
					toweek += 1;
				}else{
					toweek = 1;
					if(tomonth <12){
						tomonth += 1;
					}else{
						tomonth = 1;
						toyear += 1;
					}
					
				}
			}
			out.print(toyear+", "+tomonth+", "+toweek);
		}
	}

	Calendar cal = Calendar.getInstance();
	String day[][][] = new String[6][8][24];
	String hour[][][] = new String[6][8][24];
	DecimalFormat df = new DecimalFormat("00");
	String week[] = {"일","월","화","수","목","금","토"};
	int[] weekday = new int[week.length];
	//이번 달 정보 가져오기
	Calendar currCal = Calendar.getInstance();
	String cyear = df.format(currCal.get(Calendar.YEAR));
	int icyear = Integer.parseInt(cyear);
	if(toyear != 0){
		icyear = toyear;
	}
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	if(tomonth != 0){
		icmonth = tomonth-1;
	}
	int icweek = currCal.get(Calendar.WEEK_OF_MONTH);
	if(toweek != 0){
		icweek = toweek;
	}
	int year = currCal.get(Calendar.YEAR);
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
								for(int t=8;t<24;t++){
									day[tweek][i][t] = tday;
									hour[tweek][i][t] = df.format(t);
							}}}}}}}
	
%>

<!-- ============================ [[ 주간달력날짜추출 ]] ======================================== -->
<!-- ============================ [[ HEADER ]] ======================================== -->
<div class="calendar-header"  style="height: 74px;">
	<span style="margin-right: 31%;">
		<a class="staff-prev-next" style="margin-right: 15px;" href="javascript:prev('<%=icyear%>','<%=icmonth+1%>','<%=icweek%>')"><img src="../images/previous.png"></a>
			<span id="kyear"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=icyear%></font></span>
	        <span><font size="5px" color="#454544">.</font></span>
	        <span id="kmonth"><font size="5px" style="vertical-align: bottom;" color="#454544"><%=icmonth+1%></font></span>
		<a class="staff-prev-next" style="margin-left:15px"href="javascript:next('<%=icyear%>','<%=icmonth+1%>','<%=icweek%>')"><img src="../images/next.png"></a>
	</span>
	<span><input class="easyui-datebox"></span>
	<select class="schedule-combobox" style="text-align-last: center;width:9%">
		<option>강사명</option>
		<option>이경애</option>
		<option>이경애</option>
		<option>이경애</option>
		<option>이경애</option>
	</select>
</div>
<!-- ============================ [[ HEADER ]] ======================================== -->
<!-- ============================ [[ 달력 ]] ======================================== -->
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
			
			
			int reserv = 0;
			int res = 0;
			int dres = 0;
			for(int time=8;time<24;time++){
			out.print("<tr>");
					int cnt = 0;
					int reser = 0;
					int rowcount = 0;
					for(int j=0;j<8-reserv-res;j++){
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
									int att_num = Integer.parseInt(scheduleMap.get("ATT_NUM").toString());
									String color = null;
									//out.print(date[0]+" , "+icyear+" / "+date[1]+" , "+icmonth);
									if(date[0].equals(Integer.toString(icyear)) && date[1].equals(Integer.toString(icmonth+1))){
										if(day[i][j][time].equals(date[2]) && df.format(time).equals(starttime[0])){
											if(Integer.parseInt(starttime[1]) < 30){
												cnt++;
												reser++;
												int row = (Integer.parseInt(starttime[1]) / 15)+2;
												if(row > 2) {res++;}
												if(att_num == 1){ color = "#0080d4";}//출석
												else if(att_num == 2){color = "#d87708";}//지각
												else if(att_num == 3){color = "#b79403";}//취소
												else if(att_num == 4){color = "#7f0202";}//결석
												else if(att_num == 5){color = "#008000";}//예약
												%>
												<td class="dropdown" height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73;'
													onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'" rowspan="<%=row%>">
													<button class="dropdown-toggle" style="border:1px solid #BABBC2;border-radius:5px;background-color: <%=color %>;width: 100%;height: 90%;text-align: center;"
													 	 data-toggle="dropdown">
														<div style="color:white;"><%=scheduleMap.get("MEM_NAME")%> / 
														<%=scheduleMap.get("APPLI_START_TIME") %> ~ <%=scheduleMap.get("APPLI_END_TIME") %>
													<%-- 	<%= day[i][j+reserv][time] %>,<%=hour[i][j][time] %> --%>
														</div>
													</button>
														<ul class="dropdown-menu dropdown-menu-right" style="padding: 4%;">
														    <li class="dropdown-header" style="padding-bottom: 3%;border-bottom: 1px solid #7777778a;font-weight: 600;font-size: 18px;">출석 체크</li>
														    <li><a href="javascript:caUPD(<%=scheduleMap.get("APPLI_NUM") %>,'1')" style="margin-top: 7%;">출석</a></li>
														    <li><a href="javascript:caUPD(<%=scheduleMap.get("APPLI_NUM") %>,'2')">지각</a></li>
														    <li><a href="javascript:caUPD(<%=scheduleMap.get("APPLI_NUM") %>,'4')">결석</a></li>
														    <li><a href="javascript:caUPD(<%=scheduleMap.get("APPLI_NUM") %>,'3')">취소</a></li>
														    <li><a onClick="schedulechangeModal('<%=scheduleMap.get("MEM_NAME")%>'
														    							,'<%=scheduleMap.get("MEM_NUM")%>'
														    							,'<%=scheduleMap.get("APPLI_DATE")%>'
														    							,'<%=starttime[0]%>'
														    							,'<%=starttime[1]%>'
														    							,'<%=endtime[0]%>'
														    							,'<%=endtime[1]%>'
														    							,'<%=scheduleMap.get("PRO_PLACE")%>'
														    							,'<%=scheduleMap.get("APPLI_NUM")%>'
														    								)">
														          변경</a></li>
														</ul>
												</td>	
										<%		
											}
										}
									}
								}
								if(cnt == 0){
									%>
									<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73' ondblClick="scheduleModal()"
										onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'"></td>
							<%
								}
								cnt = 0;
							}
						}
											out.print("</tr>");
											out.print("<tr>");
						reserv=0;
					 int count = 0;
					for(int k=0;k<7-reser-dres;k++){
								for(int sche=0;sche<size;sche++){
									Map<String,Object> scheduleMap = scheduleList.get(sche);
									String date[] = scheduleMap.get("APPLI_DATE").toString().split("/");
									String starttime[] = scheduleMap.get("APPLI_START_TIME").toString().split(":");
									String endtime[] = scheduleMap.get("APPLI_END_TIME").toString().split(":");
									if(date[0].equals(Integer.toString(icyear)) && date[1].equals(Integer.toString(icmonth+1))){
										if(day[i][k+1][time].equals(date[2]) && df.format(time).equals(starttime[0])){
											if(Integer.parseInt(starttime[1]) >= 30){
												count++;
												reserv++;
												int row = ((Integer.parseInt(starttime[1])-30) / 15)+2;
												if(row > 2) {dres++;}
									%>
									 	<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73;' ondblClick="scheduleModal()"
											onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'" rowspan="<%= row%>">
											<div style="border:1px solid #BABBC2;border-radius:5px;background-color: green;width: 100%;height: 90%;text-align: center;">
												<div style="color:white;"><%=scheduleMap.get("MEM_NAME")%> / 
												<%=scheduleMap.get("APPLI_START_TIME") %> ~ <%=scheduleMap.get("APPLI_END_TIME") %>
												<%= day[i][k+reser][time] %>,<%=hour[i][k][time] %>
												</div>
											</div>
										</td>	
									<%		}
										}
									}
								}
								if(count == 0){
									%>
									<td height='30' style='border-right:1px solid #BABBC2;border-bottom:1px solid #aaaaaa73' ondblClick="scheduleModal()"
									onmouseover="this.style.background='#7dc9f961'" onmouseout="this.style.background='#fff'"></td>
							<%
								}
								count = 0;
							}/////// for 
										out.print("</tr>");	
					}
					
%>
</table>
</div>
<%
				}}}}}
%>