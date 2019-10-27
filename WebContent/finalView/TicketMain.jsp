<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ================================= [[ 이용권 및 상품관리 ]] =================================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/NewCSS/TicketMain.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">
 
$(function () {
 $(".tab_area  #MC-ul li button").click(function () {
           $(".tab_area #MC-ul li button").removeClass("active").css("color", "#333");
           //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
            $(this).addClass("active").css("color", "#22B2FB",
                                    "border-bottom","1px solid #fff");
 });
 
});
 </script>




<!-- ----------------------------상단바 부분 ----------------------------------------->

<div class="bar_area">
   <div class="fl">
     	<a class="bar_menu" href="#">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">이용권 및 상품 관리</a>

   </div>
</div>
<!-- ----------------------------상단바 부분 ----------------------------------------->

<!-- ----------------------------상단바 메뉴탭부분---------------------------- -->    
<div class="tab_area">
   <div class="section">
      <ul id="MC-ul">
         <li>
            <button type="button" class="active">이용권 상품</button>
         </li>
         <li>
            <button type="button" data-action="href-product-public">프로모션 상품</button>
         </li>
      </ul>
   </div>
</div>  
<!-- ----------------------------상단바 메뉴탭부분---------------------------- -->      
<!-- /* -----------------------------검색어 메뉴부분 -----------------------------*/-->
<div class="product_tab">
   <div class="search_bar" style="margin: 0;">
      <fieldset>
         <legend>검색</legend>
         <form name="searchFrm">
            <label>
               <select name="orderByPrice" title="정렬">
                  <option value="DESC">가격 높은순</option>
                  <option value="ASC">가격 낮은순</option>
               </select>
            </label>
            <span class="search_box">
               <label>
                  <input type="text" name="keyword" title="검색어">
               </label>
               <button type="button" data-action="search" class="search">검색</button>
            </span>
         </form>
      </fieldset>
   </div>
<!-- /* -----------------------------메인 분류 카테고리 부분 -----------------------------*/-->

   <div class="section" style="margin-top: 0; padding-top: 15px;">
      <div class="column width_left_add" style="height: 680px; padding: 10px; width: calc((70% - 21px) / 3); ">
         <div class="product-category">
            <ul>
               <li class="btn blue" data-action="display" data-value="tickets">이용권 분류</li>
               <li class="btn gray" data-action="display" data-value="productGroups">카테고리 분류</li>
            </ul>
         </div>
         <div data-display-container="tickets" style="margin-top: 10px; height: 95%; overflow: hidden; overflow-y: auto;">
            <ul style="list-style: none">
               
                  <li>
                     <a href="/tickets/types/form" class="pr_btn btn dark" style="height: inherit; text-align: center; padding: 5px;">이용권 등록</a>
                  </li>
               
            </ul>
            <ul data-template="tickets" style="list-style: none">
  
       
                  <li style="margin-top: 10px">
                     <span class="pr_btn btn text-border gray c_gray" ">
                        락카
                    
                     </span>
                  </li>
                  <li style="margin-top: 10px">
                     <span class="pr_btn btn text-border gray c_gray" >
                        환불
                       
                     </span>
                  </li>
             
               </ul>
         </div>
         <div  style="margin-top: 10px; height: 95%; overflow: hidden; overflow-y: auto; display: none;">
            <ul >
               <li>
                  <span class="pr_btn btn dark"  style="height: inherit; text-align: center; padding: 5px;">카테고리 분류 추가</span>
               </li>
            </ul>
          
         </div>
      </div>
<!-- /* -----------------------------메인 분류 카테고리 부분 -----------------------------*/-->

<!-- /* -----------------------------메인 리스트 부분 -----------------------------*/-->
      <div class="column col_span width_right_add" style="width: calc(((115% - 15px) / 3) * 2);">
         <div class="grid_list over_view">
            <ul data-template="products">
            <li class="text-border /*purple c_purple*/">
               <div class="service_itm">
                  <p>
                     <span class="purple c_purple">개인레슨
                        <em class="fr">
                           최근수정일 : 2019-09-23
                        </em>
                     </span>
                     <i>1:1 개인레슨 (기구필라테스) 48회</i>
                  </p>
               </div>
               <div class="service_detail text-border /*purple c_purple*/" style="margin: 0 -1px; width: calc(100% + 2px); border-top: none !important;">
                  <div class="service_price">
                     <p>30,000,000원</p>
                     <p style="display: block;">
                        <a  class="btn blue">결제하기</a>
                     </p>
                  </div>
               </div>
            </li>
            <li class="text-border /*purple c_purple*/">
               <div class="service_itm">
                  <p>
                     <span class="purple c_purple">개인레슨
                        <em class="fr">
                           최근수정일 : 2019-09-23
                        </em>
                     </span>
                     <i>1:1 개인레슨 (헬스 PT) 48회</i>
                  </p>
               </div>
               <div class="service_detail text-border /*purple c_purple*/" style="margin: 0 -1px; width: calc(100% + 2px); border-top: none !important;">
                  <div class="service_price">
                     <p>1,800,000원</p>
                     <p style="display: block;">
                        <a  class="btn blue">결제하기</a>
                     </p>
                  </div>
               </div>
            </li>

       
             </ul>
            </div>
          </div>
         </div>
         </div>