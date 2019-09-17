<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- ================== [[ 메인화면 ]] ================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
</style>

<title>FitMotion</title>
<%@ include file="/CSS/JEasyUICommon.jsp"%>
<%@ include file="/CSS/maincss.jsp"%>
<%@ include file="/CSS/Searchheader.jsp"%>
<%@ include file="/CSS/datepicker.jsp"%>


</head>
<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">
	function fontcolorchange(){

	}
	function ajax(url){
		
		alert("ajax==> "+url);
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#changedisplay").html(data);
		   }
		});
	}
</script>

<!--============================ [[ script ]] ==============================================  -->
<body>


<!--////////////////////////////////////nav//////////////////////////////////  -->
   <%@ include file="./nav.jsp" %>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   
   
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
   <div class="container-fluid">
      <div class="col-sm-2" >&nbsp;</div>
      <div class="col-sm-8" >
         <div class="col-sm-2">
            <div class="row" id="label">GYMOION</div>
                <div class="container" id="container" >
               <ul class="list" >
                  <a id="menubar">매출관리</a>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="#" onclick="">전체 매출 </a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="#" onclick="">직원별 매출 </a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="#" onclick="">종목별 매출 </a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="#" onclick="">고객별 매출 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menubar">헬스장관리 </a>
                 	 <li id="menusideli" >
                  		<a id="menuside" href="javascript:ajax('SProgram.jsp')">프로그램 </a></li>
                 	 <li id="menusideli" >
                 		 <a id="menuside" href="#" onclick="">프로모션 </a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="javascript:ajax('Equipment.jsp')" onClick="fontcolorchange()">기구관리 </a></li>
                 	 <li id="menusideli">
                		  <a id="menuside" href="javascript:ajax('Goods.jsp')">비품관리 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menubar">직원관리</a>
                  	<li id="menusideli" >
                 		 <a id="menuside" href="javascript:ajax('Staff.jsp')">직원등록/목록</a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="#" onclick="">근무일지</a></li>
                 	 <li id="menusideli">
                 		 <a id="menuside" href="javascript:ajax('StaffSalary.jsp')">직원급여 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menubar">회원관리</a>
                 	 <li id="menusideli">
                  		<a id="menuside" href="javascript:ajax('Member.jsp')">회원등록/목록 </a></li>
                 	 <li id="menusideli">
                  		<a id="menuside" href="javascript:ajax('MemberBuy.jsp')">구매등록</a></li>
               </ul>
            </div>
         </div>
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
         
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         
         <div class="col-sm-10" style="border: 1px solid;">
         
         <div id="changedisplay">
         	
         </div>
      </div>
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         

      <div class="col-sm-2">&nbsp;</div>
   </div>

</body>
</html>