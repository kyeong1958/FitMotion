<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="border:none; width:30px;height:10px;" class="cal">
         <div class="fc-button-group">
            <button type="button1" class="month" href="a/calender.jsp">month</button>
            <button type="button1" class="week"  href="a/ma.jsp">week</button>
            <button type="button1" class="day"   href="a/cc.jsp">day</button>
         </div>
<%
   Date date = new Date();
   SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-mm-dd");
   String strdate = simpleDate.format(date);
   Calendar cal = Calendar.getInstance();
%>

<table align="center" border="1" width="800" style="height: 800px"><caption><font size="30" color="green">
<%=cal.get(Calendar.YEAR)%>-<%=cal.get(Calendar.MONTH)+1%>-<%=cal.get(Calendar.DATE)%></font>
</caption>
<tr>   
   <td align='center'width='150' height='30'>시간</td>
   <td></td>
   <td></td>
   <td></td>   
</tr>
<tr>
   <td></td>
   <td></td>
   <td></td>
   <td></td>
</tr>
</table>

</div>
</body>
</html>