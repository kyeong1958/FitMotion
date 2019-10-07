<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ================================= [[ 이용권 및 상품관리 ]] =================================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/NewCSS/TicketMain.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
    padding-right: 0px;
    padding-left: 0px;
}
.nav{
   height: 60px;
    font-size: 18px;
   background-color:#42485A;
   color: white;
}
.side{
   padding-left:0%;
}
#sidebar{
   background-color: #42485A;
   font-size: 18px;
   color:white;
    padding: 0%;
    height: 100%;
    width: 100%;
    position: fixed;
    z-index: 1;
    width: 235px;
    position: fixed;
    z-index: 1;
    text-align: center;
    vertical-align: middle;
}
.row {
    margin-right: 0px;
    margin-left: 0px;
}
#gym_name{
   height: 80px;
}
#login_name{
   height: 50px;
}
.sidelabelbottom{
   height: 30px;
    margin-bottom: 15%;
}

.sidemenu{
   height:50px;
}
.sidemenutitle {
   height:50px;
   background-color: white;
   color:#42485A;
    padding: 5%;
}
.nav .bar{
   height:100%;
   padding: 1%;
    text-align: center;
}
#mainboard{
    margin-left: 235px;
    padding: 0%;
}
</style>
</head>
<script type="text/javascript">
   function sidemenu(id){
      alert(this.val());
      $(id).css("background-color","white");
      $(id+"> a").css("color","#42485A");
      $(".sidemenu")
   }
   function menu(menu){/* menu=# */
      alert("menu click");
      if('.sales' == menu){
         $('.sales').show();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","white");
         $(".menutitle-sales > span").css("color","#42485A");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.member' == menu){
         $('.sales').hide();
         $('.member').show();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","white");
         $(".menutitle-member > span").css("color","#42485A");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.analysis' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').show();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","white");
         $(".menutitle-analysis > span").css("color","#42485A");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.service' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').show();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","white");
         $(".menutitle-service > span").css("color","#42485A");
      }
   }
</script>
<body>
<script type="text/javascript">
   $(document).ready(function(){
      $(".sales").hide();
      $(".member").hide();
      $(".analysis").hide();
      $(".service").hide();
   });
</script>
<div class="container-fluid">
   <div class="row nav">
      <div class="col-sm-2"style="border:1px soild">
         <div class="col-sm-9"><img src="../images/logo.png"/></div>
      </div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">매출관리</span></div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">헬스장관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">직원관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">회원관리</span></div>
      <div class="col-sm-1 bar menutitle-service"><span onClick="menu('.service')">고객센터</span></div>
      <div class="col-sm-4"></div>
   </div>
      <div class="col-lg-1" id="sidebar">
         <div class="row">
            <div class="row" id="gym_name">지점명</div>
            <div class="row" id="login_name">이름</div>
            <div class="row sidelabelbottom">
               <div class="col-lg-6">로그아웃</div>
               <div class="col-lg-6">MyPage</div>
            </div>
         </div>
         <div class="row sales">
      <!--       <div class="row sidemenutitle" id="salesmanagement">매출관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
         </div>
         <div class="row member">
      <!--       <div class="row sidemenutitle" id="salesmanagement">회원관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
   
      <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
         </div>
         <div class="row analysis">
         <!--    <div class="row sidemenutitle" id="analysis">통계분석</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
         </div>
         <div class="row service">
         <!--    <div class="row sidemenutitle" id="analysis">고객센터</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
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
      <a href="/home/">홈</a>
      <a href="/tickets/">이용권 및 상품 관리</a>
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
      </div>
   </div>
 </body>
 </html>
 
             