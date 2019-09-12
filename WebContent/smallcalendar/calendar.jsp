<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script type="text/javascript">
	//콤보박스 년도 받아올 변수
 	var kyear;
	//콤보박스 월 받아올 변수
	var kmonth;
	//다음버튼눌렀을 때
	function nextmonth(){
		kyear = $("#kyear").val();
		kmonth = $("#kmonth").val();
		var kkmonth = parseInt(kmonth);
		if(kkmonth<11){
			kkmonth += 1;
		}else{
			kyear =  parseInt(kyear);
			kyear += 1;
			kkmonth = 0;
		}
		$.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//이전버튼눌렀을때
	function premonth(){
		kyear = $("#kyear").val();
		kmonth = $("#kmonth").val();
		var kkmonth = parseInt(kmonth);
		if(kkmonth>0){
			kkmonth -= 1;
		}else{
			kyear =  parseInt(kyear);
			kyear -= 1;
			kkmonth = 11;
		}
		$.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//콤보박스로 년도 변경할 시 이동
	  $("#kyear").change(function(){
		 kyear = $(this).val();
		 kmonth = $("#kmonth").val();
		 $.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
		 }); 
		 
	 }) 
	//콤보박스로 월 변경할 시 이동
	  $("#kmonth").change(function(){
		 kyear = $("#kyear").val();
		 kmonth = $(this).val();
		 $.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
		 }); 
	 })
</script>
<!--=================== [[콤보박스나 이전,다음눌렀을 시 ajax타는 부분 시작]] ============================= -->
<span id="new">
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
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString());
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
<div id="ui-datepicker-div"
               class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
               style="position: absolute; top: 276px; left: 707.578px; z-index: 1; display: block;">
               <div align="center"
                  class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
                  <a href="javascript:premonth()" class="ui-datepicker-prev ui-corner-all" data-handler="prev"
                     data-event="click" title="이전" >
                     <span class="ui-icon ui-icon-circle-triangle-w" style="margin-right:20px" >이전</span></a> 
                  <span class="ui-datepicker-title" align="center">
                     <select id="kyear" class="ui-datepicker-year" data-handler="selectYear"
                        data-event="change">
<%
	for(int i=fyear-10;i<fyear+10;i++){
		if(i != icyear){
%>
                        <option value="<%= i%>"><%= i%></option>
<%
		}else if(i == icyear){
%>

						<option value="<%= i%>" selected="selected"><%= i%></option>
<%			
		}
	}
%>
                     </select>
                      <select id="kmonth" class="ui-datepicker-month" data-handler="selectMonth"
                        data-event="change">
<%
	for(int i=0;i<12;i++){
		if(i != icmonth){
		
%>
                        <option value="<%= i%>"><%= i+1%></option>
<%
		}else if(i == icmonth){
%>			
                        <option value="<%= i%>" selected="selected"><%= i+1%></option>

<%			
		}
	}
%> 
						</select>
                  </span>
                  
                  <a href="javascript:nextmonth()" class="ui-datepicker-next ui-corner-all" data-handler="next"
                     data-event="click" title="다음"> <span
                     class="ui-icon ui-icon-circle-triangle-e"  style="margin-left:20px">다음</span></a>
               </div>
<table class="ui-datepicker-calendar" border="1" align="center"><%-- <caption><font size="30" color="green"><%=month+1 %></font></caption> --%><tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td class='ui-datepicker-week-end' width='40' align='center'>"+week[i]+"</td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
					out.print("<td class='ui-datepicker-week-end' align='center'><a href='#'>"+day[month][i][j]+"</a></td>");
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
</span>
<!--=================== [[콤보박스나 이전,다음눌렀을 시 ajax타는 부분 끝]] ============================= -->