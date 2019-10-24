<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function (){
		alert("$('.pdiv').length:"+$('.pdiv div').length);//3
		for(var i=0;i<$('.pdiv div').length;i++){
			alert($('#cdiv'+(i)).attr("id"));
		}
	});
	function a(pno){
		alert("pno : "+pno);
	}
</script>
<div class="pdiv">
	<div id="cdiv0"><a href="javascript:a(0)">aaa</a></div>
	<div id="cdiv1"><a href="javascript:a(1)">bbb</a></div>
	<div id="cdiv2"><a href="javascript:a(2)">ccc</a></div>
</div>
</body>
</html>