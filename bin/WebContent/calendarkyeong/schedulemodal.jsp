<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> -->
<%@ include file="/CSS/JEasyUICommon.jsp"%>
<%@ include file="/CSS/datepicker.jsp"%>

<script type="text/javascript">
	$.fn.datebox.defaults.formatter = function(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
	}
	//날짜 포멧을 적용
	$.fn.datebox.defaults.parser = function(s){
		var t = Date.parse(s);
		if (!isNaN(t)){
			return new Date(t);
		} else {
			return new Date();
		}
	}

/* 	$( function() {
	    $( "#datepicker1").datepicker({
	    	dateFormat:'yy-mm-dd'
	    	,changeMonth: true
	     	,changeYear: true
	    	,showButtonPanel: true
	    });
	    $( "#datepicker2").datepicker({
	    	dateFormat:'yy-mm-dd'
	    	,changeMonth: true
	     	,changeYear: true
	    	,showButtonPanel: true
	    });
 	 });
    $(function() {
        $('.timepicker').timepicker();
    }); */
</script>
<!-- </head>
<body> -->
<div>일정이름<input class="easyui-textbox"></div> 
<div style="margin-top:15px;">
날짜
<input id="startday" class="easyui-datebox"/>
<input id="endday" class="easyui-datebox"/>
</div>

<!-- <div>날짜
<div>
<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;"  id="datepicker1">
<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;"  id="datepicker2">
</div>
<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;" id="time1" class='timepicker'>
<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;" id="time2" class='timepicker'>
</div> 
<div>설명<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;"/></div>

 -->


















<!-- </body>
</html> -->