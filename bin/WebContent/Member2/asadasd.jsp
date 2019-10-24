<!doctype html>
<html lang="en">
 <head>
 <%@ include file="/common/JEasyUICommon.jsp"%>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>

 </head>
 <body>
	<form>
		<input type="text" onkeyup="documentgetElementById('aaa').innerHTML=this.value"/>
		
	
	</form>
	<input type="text" id="aaa"></input>
 </body>
</html>