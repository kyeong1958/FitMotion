<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script language = "javascript" type="text/javascript">
      function FILESaddRow()   //FILES ROW 추가 스크립트
      {
       var Row = FILES.insertRow();
       Row.onmouseover=function()
       { 
        FILES.clickedRowIndex=this.rowIndex
       };
       
       
       var Cell = Row.insertCell();
       Cell.align = "center";
       Cell.innerHTML = "<input type=text name=ADD_FILE maxlength=100 size=100>&nbsp;&nbsp;<input type=button value=삭제 onclick=FILESdelRow()>";
      }
      function FILESdelRow() //FILES ROW 삭제 스크립트
      {
       FILES.deleteRow(FILES.clickedRowIndex);
      }
     </script>
     
     <table border="1" width="80%" cellpadding="5" cellspacing="0" id="FILES">            
      <tr>       
       <td align="center"><input type="text" name="ADD_FILE" maxlength="100" size="100">&nbsp;&nbsp;<input type="reset" value="삭제"></td>    
      </tr>   
     </table>
     <input type="button" value="추가" onclick="javascript:FILESaddRow();">


</body>
</html>