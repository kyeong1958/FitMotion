<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 달력 */
element.style {
    position: absolute;
    top: 276px;
    left: 707.578px;
    z-index: 1;
    display: block;
}
.ui-widget.ui-widget-content {
    border: 1px solid #c5c5c5;
}
.ui-corner-all, .ui-corner-bottom, .ui-corner-right, .ui-corner-br {
    border-bottom-right-radius: 3px;
}
.ui-widget-content {
    border: 1px solid #dddddd;
    background: #ffffff;
    color: #333333;
}
.ui-datepicker {
    width: 17em;
    padding: .2em .2em 0;
    display: none;
}
.ui-helper-clearfix:before, .ui-helper-clearfix:after {
    content: "";
    display: table;
    border-collapse: collapse;
}
.ui-helper-clearfix:after {
    clear: both;
}
.ui-datepicker .ui-datepicker-header {
    position: relative;
    padding: .30em 0;
}
.ui-helper-clearfix:before, .ui-helper-clearfix:after {
    content: "";
    display: table;
    border-collapse: collapse;
}
/* 달력 */

</style>

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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