<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ include file="/common/JEasyUICommon.jsp"%>
<title>기구관리</title>
</head>
<%@ include file="/CSS/maincss.jsp"%>
<%@ include file="/CSS/Goodscss.jsp"%>
<style>



/* 기구등록 css */
.card-plus-wrap .tit-area span {
   float: left;
   display: block;
   font-size: 17px;
   line-height: 22px;
   width: 70px;
}
.cardWide-wrap {
    width: 100%;
    margin-right: 35px;
    padding-right: 45px;
    margin-top: 50px;
    margin-left: 0px;
    padding-left: 52px;
}
.cardWide-wrap .info-area ul li {
 
    padding: 0 40px;

}
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
               <ul class="list">
                  <a id="menu">매출관리</a>
                  <li><a href="#" onclick="">전체 매출 </a></li>
                  <li><a href="#" onclick="">직원별 매출 </a></li>
                  <li><a href="#" onclick="">종목별 매출 </a></li>
                  <li><a href="#" onclick="">고객별 매출 </a></li>
               </ul>
               <ul class="list">
                  <a id="menu">헬스장관리</a>
                  <li><a href="#" onclick="">프로그램 </a></li>
                  <li><a href="#" onclick="">프로모션 </a></li>
                  <li><a href="#" onclick="">기구관리 </a></li>
                  <li><a href="#" onclick="">비품관리 </a></li>
               </ul>
               <ul class="list">
                  <a id="menu">직원관리</a>
                  <li><a href="#" onclick="">직원등록/목록</a></li>
                  <li><a href="#" onclick="">근무일지</a></li>
                  <li><a href="#" onclick="">직원급여 </a></li>
               </ul>
               <ul class="list">
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
                        <div class="page-top-menu-wrap">
                           <div class="left">
                              <div class="page-title">기구관리</div>
                           <!-- 검색창 -->
                                 <div class="right" style="float: right">
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
                      	 </div>
                       <!-- 타이틀 검색어 여기까지 고정  page-title = 이름 바궈주기  -->
                        <form>
               <div class="card-plus-wrap"
                  style="height: 198px; padding-left: 35px;">
                  <div class="tit-area">
                     <i>+</i><span>기구<br><span>등록관리</span>
                     </span>
                  </div>
                  <div class="input-wrap">
                     <ul>
                        <li class="name">
                        <input type="text" placeholder="기구명"
                           id="name" name="name">
                          </li>
                        
                        <li class="cusnumber" style="float: unset;">
                        <span class="tit">가격</span> 
                        <input type="text" style="width: 157px;"  placeholder="0000"
                           class="cusnum-item valid" required="" aria-required="true"
                           aria-invalid="false">
                           </li>
                        <br>
                        <li class="manager">
                        	<span class="tit">작동여부</span>
                         	  <div class="frm_select">
                             	 <select  class="valid" aria-invalid="false">
                                 <option>작동</option>
                                 <option selected="">고장</option>
                              </select>
                           </div>
                           </li>
                        <li class="repair">
                        	<span class="tit">수리횟수</span>
                         	  <input type="text" style="width: 20px;"  placeholder="1"
                           class="cusnum-item valid" required="" aria-required="true"
                           aria-invalid="false">
                           </li>
                        <li class="repair">
                        	<span class="tit" style="margin-left: 34px;">고장내역</span>
                         	  <input type="text" style="width: 148px; 
                           class="cusnum-item valid" required="" aria-required="true"
                           aria-invalid="false">
                           </li>
                        <br>
                        <li class="birthday">
                        <span class="tit">구매일</span>
                         <input type="hidden" id="birth" name="birth"> 
                         <input style="margin-right: 10px; width: 100px;" type="text" id="birthYear" placeholder="1900" class="brith-item year valid" maxlength="4" aria-invalid="false">
                            <input style="margin-right: 10px; width: 76px;" type="text" id="birthMonth" placeholder="01" class="brith-item month valid"  maxlength="2" aria-invalid="false"> 
                           <input type="text" id="birthDay" style="width: 76px;" placeholder="01" class="brith-item day" maxlength="2">
                           </li>
                        <div class="btn-area">
                           <button type="button"
                              style="float: right; margin-right: 279px; margin-top: -151px; height: 112px;">등록</button>
                        </div>
                     </ul>
                  </div>

               </div>
            </form>
<!--////////////////////////////////////////등록창 끝////////////////////////////////////////////////////  -->         
            <div class="period-wrap">
                  <div class="fl">
                     <div class="ui checkbox font-size-16" style="margin-top: 7px">
                           <input type="checkbox" id="checkbox-all"
                              onchange="onChangeCheckboxAll();">
                               <label for="checkbox-all"><span><span></span></span>전체선택</label>
                     </div>
                  </div>
             <div class="btn-group" style="float: right;">
						  <button type="button" >번호</button>
						  <button type="button" >등록일</button>
						  <div class="btn-group">
						    <button type="button" class="dropdown-toggle" data-toggle="dropdown">
						       	정렬
						    </button>
						    <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">내림차순</a>
						      <a class="dropdown-item" href="#">올림차순</a>
						    </div>
						  </div>
						</div>                  
						                  
            </div>
            <!-- =================================화면단 중간     ================================ -->
            <!-- 화면 바끼는 부분  -->
            <div class="card-wide-wrap">
               <ul id="custList">
                  <!-- 고객상세 -->
                  <li class="card-wide-list" style="cursor: auto;">
                     <div class="cardWide-wrap">
                        <div class="tit-area">
                           <div class="ui checkbox fl" style="margin-top: 1px">
                              <input type="checkbox"> <label for="checkbox-cust1"><span><span></span></span></label>
                           </div>
                           <div class="num-area" style="cursor: pointer;">1</div>
                           
                        </div>
                        <div class="date-area" style="cursor: pointer;"
                           onclick="goCustDetail(1);">
                           <ul>
                              <li><span class="tit">등록일</span> <span class="subjact">2019.09.04</span>
                              </li>
                           </ul>
                        </div>
                        <div class="info-area" style="cursor: pointer;margin-left: 49px;"
                           onclick="goCustDetail(1);">
                              <ul>
                                 <li class="first" id="divn">
                                       <dt>기구이름</dt>
                                       <dd>
                                             <span class="subject"> 런닝머신 </span>
                                       </dd>
                                 </li>
                                 <li class="second">
                                       <dt>작동여부</dt>
                                       <dd>
                                    <span class="subject">고장</span>
                                       </dd>
                                 </li>
                                 <li class="second">
                                    <dt>가격</dt>
                                       <dd>
                                    <span class="subject">100만원</span>
                                       </dd>
                                 </li>
                                 <li class="second">
                                    <dt>수리횟수</dt>
                                       <dd>
                                    <span class="subject">0</span>
                                       </dd>
                                 </li>
                                 <li class="second">
                                    <dt>고장내역</dt>
                                       <dd>
                                    <span class="subject">런닝머신고무가벗겨짐</span>
                                       </dd>
                                 </li>
                       
                              </ul>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
                       
                       
                       
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                       <!--  -->
                    </div>
<!--//////////////////////////div////////////////////////////////////  -->
         </div>
      </div>
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         

      <div class="col-sm-2">&nbsp;</div>
   </div>

</body>
</html>