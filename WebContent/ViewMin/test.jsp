<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="/CSS/calendarmodal.css" %> --%>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   <link rel="calmo" href="/CSS/calendarmodal.css">
 <!--   <link href="/CSS/calendarmodal.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript">
	function calendar(){
		$.ajax({
			method:'get'
		   ,url:"calendar.jsp"
		   ,success:function(data){
			   $("#test").html(data);
		   }
		});
		$("#test").modal({
			backdrop:false
		
		});
	
	}

</script>
</head>
<body>

<span id="content" style="border:'1px' "><img id="calimg" src="../images/calendar-7.png" witdh="30px" height="30px" onClick="calendar()"></img></span>
<div id="test">

</div>
</body>
</html>