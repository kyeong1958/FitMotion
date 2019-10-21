<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar, java.text.DecimalFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주간달력</title>
</head>
<style>
.{
   magin:20px;}
   
</style>
<body>
    <div style="border:none; width:30px;height:10px; float: left;width: 33%" class="cal" >
         <div class="button-group">
            <button type="button1" class="month" href="#">month</button>
            <button type="button1" class="week"  href="#">week</button>
            <button type="button1" class="day"   href="#">day</button>
         </div>
<%
   Calendar cal = Calendar.getInstance();   
   DecimalFormat df = new DecimalFormat("00");
   String week[] = {"일","월","화","수","목","금","토"};
   int iday[][][] = new int[12][6][7];
   int time [] = {9,10,11,12,13,14,15,16,17,18,19,20,21,22};
   //이번주 구하기
   SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");
   cal.setFirstDayOfWeek(Calendar.SUNDAY);
   ArrayList<String> day = new ArrayList<String>();
   
   int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
   cal.add(Calendar.DAY_OF_MONTH, (-(dayOfWeek - 1)));

   for ( int j = 0; j < 7; j++ ) {      
      day.add(sdf.format(cal.getTime()));
      cal.add(Calendar.DAY_OF_MONTH, 1);
   }
   Iterator<String> it = day.iterator();
   //월구하기
   String cmonth = df.format(cal.get(Calendar.MONTH)+1);
   int icmonth = Integer.parseInt(cmonth)-1;
   //out.print("이번달 : "+cmonth);
   for(int month=0;month<12;month++){
      if(month==icmonth){
         //이번달 마지막 날짜 저장하기
         cal.set(Calendar.MONTH,month);
         int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
         for(int i=1;i<=maxDay;i++){
            cal.set(Calendar.DATE,i);
            iday[cal.get(Calendar.MONTH)]
                  [cal.get(Calendar.WEEK_OF_MONTH)-1]
                        [cal.get(Calendar.DAY_OF_WEEK)-1]=i;      
         }
      }
   }
   for(int month=0;month<12;month++){
      if(month==icmonth){

%>

<!-- 해당월   -->
<table align="center" border="1" width="900" style="height: 900px">   
<caption><font size="30" color="green">
    <a <%=month%>>◀</a>
    <%=month+1%>월
    <a href="<%=month+2%>">▶</a>
</font></caption>
    
<tr>   
<td align='center'width='150' height='30'>시간</td>
<%      
      
      
      /* while(it.hasNext()){
         String str = it.next();
         out.print(str);
      } */
      for(int i=0;i<week.length;i++){
         if(it.hasNext()){
            String str = it.next();
            out.print("<td align='center'width='150' height='30'>"+str+"&nbsp"+week[i]+"</td>");
         }
      }
      out.print("</tr>");
      %> 
       <%      for(int i=0;i<time.length;i++){
         out.print("<tr><td>"+time[i]+"시</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
      }
   
%>
      
</table>
<%
      }
   }
%>
</div>
</body>
</html>