<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<style>
.checks {position: relative;}
.checks input[type="radio"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
.checks input[type="radio"] + label {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;

}
.checks input[type="radio"]:checked + label:before {
  background: #E9ECEE;
  border-color: #adb8c0;
}




.checks input[type="radio"] + label:before {
  content: '';
  position: absolute;
  left: 0;
  top: -4px;
  width: 21px;
  height: 21px;
  text-align: center;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius: 100%;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}

 .checks input[type="radio"]:checked + label:after {
  content: '';
  position: absolute;
  top: 1px;
  left: 5px;
  width: 13px;
  height: 13px;
  background: #99a1a7;
  border-radius: 100%;
  box-shadow: inset 0px 0px 10px rgba(0,0,0,0.3);
}



</style>
<body>


<div class="checks">
         <input type="radio" id="ex_rd" name="ex_rds"> 
           <label for="ex_rd">라디오버튼</label> 
         </div>


</body>
</html>