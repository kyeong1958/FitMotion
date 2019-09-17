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
<body>
    <div style="border:none; width:30px;height:10px;" class="cal">
         <div class="fc-button-group">
            <button type="button1" class="month" href="#">month</button>
            <button type="button1" class="week"  href="#">week</button>
            <button type="button1" class="day"   href="#">day</button>
         </div>
<%
   Calendar cal = Calendar.getInstance();   
   DecimalFormat df = new DecimalFormat("00");
   String week[] = {"일","월","화","수","목","금","토"};
   int iday[][][] = new int[12][6][7];
   SimpleDateFormat sdf = new SimpleDateFormat("dd");
   cal.setFirstDayOfWeek(Calendar.SUNDAY);
   ArrayList<String> day = new ArrayList<String>();
   
   int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
   cal.add(Calendar.DAY_OF_MONTH, (-(dayOfWeek - 1)));

   for ( int j = 0; j < 7; j++ ) {      
      day.add(sdf.format(cal.getTime()));
      cal.add(Calendar.DAY_OF_MONTH, 1);
   }
   Iterator<String> it = day.iterator();
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
<table align="center" border="1" width="700"><caption><font size="30" color="green"><%=month+1 %></font></caption>
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
            out.print("<td align='center'width='150' height='30'>"+str+week[i]+"</td>");
         }
      }
      out.print("</tr>");
      %> 
      <tr>
         <td>9시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>10시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>11시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>12시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>1시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>2시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>3시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>4시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>5시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>6시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>7시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>8시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>9시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td>10시</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
      </tr>
      
</table>
<%
      }
   }
%>
</div>
</body>
</html>