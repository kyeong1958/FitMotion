<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar, java.text.DecimalFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정관리[calendarUI.jsp]</title>
</head>
<body>
    <div style="border:none; width:30px;height:10px; float: left;width: 33%" class="cal">
         <div class="button-group">
            <button type="button1" class="month" href="a/calender.jsp">month</button>
            <button type="button1" class="week"  href="a/ma.jsp">week</button>
            <button type="button1" class="day"   href="a/cc.jsp">day</button>
         </div>
<%
   Calendar cal = Calendar.getInstance();
   int day[][][] = new int[12][6][7];
   DecimalFormat df = new DecimalFormat("00");
   String week[] = {"일","월","화","수","목","금","토"};
   //이번 달 정보 가져오기
   Calendar currCal = Calendar.getInstance();
   String cmonth = df.format(currCal.get(Calendar.MONTH)+1);
   int icmonth = Integer.parseInt(cmonth)-1;
   //out.print("이번달 : "+cmonth);
   for(int month=0;month<12;month++){
      if(month==icmonth){
         //이번달 마지막 날짜 저장하기
         cal.set(Calendar.MONTH,month);
         int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
         for(int i=1;i<=maxDay;i++){
            cal.set(Calendar.DATE,i);
            day[cal.get(Calendar.MONTH)]
                  [cal.get(Calendar.WEEK_OF_MONTH)-1]
                        [cal.get(Calendar.DAY_OF_WEEK)-1]=i;      
         }
      }
   }
   for(int month=0;month<12;month++){
      if(month==icmonth){
%>
<table align="center" border="1" width="1200"><caption><font size="30" color="green"><%=month+1 %></font></caption>
<tr>   
<%      
      for(int i=0;i<week.length;i++){
         out.print("<td align='center'width='170' height='30'>"+week[i]+"</td>");
      }
      out.print("</tr>");
         for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
         out.print("<tr>");
         for(int j=0;j<7;j++){
            if(day[month][i][j]!=0){
               out.print("<td align='right'width='170' height='90' valign='top'>"+day[month][i][j]+"</td>");
            }else{
               out.print("<td>&nbsp;</td>");               
            }
            
         }////////// end of inner for[주간일자]
         out.print("</tr>");
      }////////////// end of  outter for[월별일자]   
      %>
</table>
<%
      }/////////////////end of if[이번달 정보만 출력하기]
   }
%>
</div>
</body>
</html>





