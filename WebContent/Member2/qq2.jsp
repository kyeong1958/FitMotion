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
	var cnt = 1;
	$(document).ready(function (){
		alert("$('.pdiv').length:"+$('.pdiv div').length);
		for(var i=0;i<$('.pdiv div').length;i++){
			alert($('#cdiv'+(i)).attr("id"));
		}
	});
	function a(cno){
		alert("cno : "+cno);
	}
	function add(){
		cnt = cnt + 1;
		//var test = $(".cdiv").parent().html();
		$(".cdiv").append("<div id=cnt"+cnt+"><a href=javascript:a('"+cnt+"')>aaa</a>"+"</div>");
	}
</script>
<div class="pdiv">
	<div class="cdiv">
		<div id="cdiv1">
			<a href="javascript:a(1)">aaa</a></div>
	 </div>
</div>
<input type="button" value="추가" onClick="add()">
</body>
</html>