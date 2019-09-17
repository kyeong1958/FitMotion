<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="../common/JEasyUICommon.jsp"%>
<title>비품관리</title>
</head>


<%@ include file="../CSS/maincss.jsp"%>

<%@ include file="../CSS/Goodscss.jsp"%>
<style>
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
</style>
<body>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   <div class="row-i">
      <div class="col-sm-2">&nbsp;</div>
      <div class="col-sm-8">
         <ul class="nav" style="display: flex; float: right;">
              <li class="nav-item">
                <a class="nav-link" href="#">마이페이지</a>
              </li>
              <li class="nav-item">
               <a class="nav-link" href="#">로그인</a>
          </li>
      </ul>
      
      </div>
      
      <div class="col-sm-2">&nbsp;</div>
      
   </div>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   
   

   
   
   
   
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
   <div class="container-fluid">
      <div class="col-sm-2" >&nbsp;</div>
      <div class="col-sm-8" >
         <div class="col-sm-2">
            <div class="row" id="label"></div>
                <div class="container" >
               <ul class="list" >
                  <a id="menu">매출관리</a>
                  <li><a href="#" onclick="">전체 매출 </a></li>
                  <li><a href="#" onclick="">직원별 매출 </a></li>
                  <li><a href="#" onclick="">종목별 매출 </a></li>
                  <li><a href="#" onclick="">고객별 매출 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menu">헬스장관리</a>
                  <li><a href="#" onclick="">프로그램 </a></li>
                  <li><a href="#" onclick="">프로모션 </a></li>
                  <li><a href="#" onclick="">기구관리 </a></li>
                  <li><a href="#" onclick="">비품관리 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menu">직원관리</a>
                  <li><a href="#" onclick="">직원등록/목록</a></li>
                  <li><a href="#" onclick="">근무일지</a></li>
                  <li><a href="#" onclick="">직원급여 </a></li>
               </ul>
               <ul  class="list" >
                  <a id="menu">회원관리</a>
                  <li><a href="#" onclick="">회원등록/목록 </a></li>
                  <li><a href="#" onclick="">구매등록</a></li>
               </ul>
            </div>
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
            
            
            
            
         
         
         
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         
         </div>
         <div class="col-sm-10" style="border: 1px solid;">
               <div class="page manage-sales">
                           <!-- 검색창 -->
                        <div class="page-top-menu-wrap">
                           <div class="left">
                              <div class="page-title">비품관리</div>
                      			 </div>
                              
                                 <div class="right" style="float: right; padding-right: 16px;">
                             <div class="ui search form">
                               <input id="searchTxt" name="searchTxt" placeholder="검색어를 입력하세요" style="width: 300px">
                               <a class="action" href="#" >
                                   <i class="fa fa-search" aria-hidden="true"></i>
                                   </a>
                               <div id="search-result" class="search-result hidden"></div>
                               <input type="hidden" id="custno" name="custno" value="0">
                             </div>
                           </div>
                           </div>
                       <!-- 타이틀이름이랑검색어부분  끝-->
                       
                     
                  
            <!-- =================================화면단 중간     ================================ -->
            <!-- 화면 바끼는 부분  -->
      
       
         
         
         
         
<!--//////////////////////////div////////////////////////////////////  -->
         </div>
      </div>
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         

      <div class="col-sm-2">&nbsp;</div>
   </div>

</body>
</html>