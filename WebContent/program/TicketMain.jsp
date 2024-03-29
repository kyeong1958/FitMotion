<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ================================= [[ 이용권 및 상품관리 ]] =================================================== -->

<%@ include file="/NewCSS/TicketMain.jsp"%>

<!-- 주노랑 이관 완료  -->
<style type="text/css">
body{
   padding:0%;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
		    method : "POST",
		    url : "/program/taSEL.fm",
		    success : function(data) {
		       $("#tasel").html(data);
		       $.ajax({
		          method : "POST",
		          url : "/program/prornk.fm",
		          success : function(data) {
		             $("#pro_rank").html(data);
		          }
		       });
		    }
		 });
	});
</script>
<script type="text/javascript">
	function mempage(url){
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#ticketmain").html(data);
		   }
		});
	}
	
	function promotion(){
		$.ajax({
			methid:'get'
			,url:"/program/proSEL.fm"
			,success:function(data){
				$("#tasel").html(data);
			}
		});
	}

	function tieck(){
		$.ajax({
			methid:'get'
			,url:"/program/taSEL.fm"
			,success:function(data){
				$("#tasel").html(data);
			}
		});
	}
	


 </script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->

<div id="ticketmain" >
<!-- ----------------------------상단바 부분 ----------------------------------------->

<div class="bar_area">
   <div class="fl">
     	<a class="bar_menu" href="#">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">이용권 및 상품 관리</a>
   </div>
</div>
<!-- ----------------------------상단바 부분 ----------------------------------------->

<!-- /* -----------------------------검색어 메뉴부분 -----------------------------*/-->
<div class="product_tab">
   <div class="search_bar" style="margin: 0;">
      <fieldset>
         <legend>검색</legend>
         <form name="searchFrm">
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
               <li class="btn blue" onclick="tieck()">이용권 분류</li>
               <li class="btn gray"  onclick="promotion()">프로모션 분류</li>
            </ul>
         </div>
         <div data-display-container="tickets" style="margin-top: 10px; height: 95%; overflow: hidden; overflow-y: auto;">
            <ul style="list-style: none">
                  <li>
                     <a  class="pr_btn btn dark"  onClick="mempage('../program/PromotionAdd.jsp')" style="height: inherit; text-align: center; padding: 5px;">상품 등록</a>
                  </li>
            </ul>
            <div id="pro_rank">
     
            </div>
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
        	<div id="tasel">
           
			  </div>
            </div>
          </div>
          <!--  -->
     	</div>
     </div>
<!--==================================================================================================  -->         
  </div>       
         
