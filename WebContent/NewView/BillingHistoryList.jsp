<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회원결제내역 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원결제내역</title>
<%@ include file="/NewView/BillingHistoryListModal.jsp"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryList.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryList.css">
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
            <!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="management">회원 목록</a>
        <a >홍준선(테스트) 회원</a>
        <a >결제 내역 목록</a>
    </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--============================[[select부분 시작 ]]=================================  -->
	<div class="section" id="BHLsection">
    <!-- 리스트 검색 -->
    <div class="search_bar">
        <fieldset>
            <legend>검색</legend>
            <form >
                <select>
                    <option value="">상품 종류</option>
                    <option value="APPOINTMENT">개인레슨 이용권</option>
                    <option value="CLASS">그룹수업 이용권</option>
                    <option value="STUDIO">장소 이용권</option>
                    <option value="OPTION">옵션 이용권</option>
                </select>
                <select >
                    <option value="">이용상태</option>
                    <option value="USING">이용중</option>
                    <option value="PAUSE">이용중지</option>
                    <option value="EXPIRED">이용종료</option>
                    <option value="RECEIVABLES">미납금</option>
                    <option value="REFUND">환불</option>
                </select>
                <select>
                    <option value="">결제 담당자</option>
                    
                        <option value="5849">강민호 강사</option>
                    
                        <option value="4435">기본 관리자</option>
                    
                        <option value="6592">김경순 강사 (테스트)</option>
                    
                        <option value="6862">달라스짐 강사 (테스트)</option>
                    
                        <option value="6866">리커버리 강사 (테스트)</option>
                    
                        <option value="5886">박하은</option>
                    
                </select>
                <span class="search_box">
					<input type="text" >
					<button type="button" class="search"></button>
       		</span>
        		</form>
        			</fieldset>
    </div>
    <!-- // 리스트 검색 -->
<!--============================[[select부분 끝 ]] ========================================== -->

 <!--=============================[[카드 부분 시작 ]]====================================================  -->
 		<div class="grid_list" id="BHLgrid" >
                <ul>
                    <!-- Loop -->
                    <!-- 상품 별 디자인 클래스가 다르게 적용되어 있습니다. -->
                    
                        <li>
                            <div class="service_itm" >
                                <p>
                                    <span>서비스</span>
                                    <i>개인레슨 10회 + 그룹레슨 48회</i>
                                    <strong class="cost">
                                                1,200,000 원
                                    </strong>
                                </p>
                            </div>
                            <div class="card_point_txt">
                                        <p class="use_service">이용중</p>
                            </div>

                            <div class="service_detail" >
                                <div class="use_service">
                                            <div class="passInfo">
                                                <input class="passName" type="hidden" value="개인레슨">
                                                <input class="seqPartnerProductUsage" type="hidden" value="451622">
                                                <input class="seqPartnerPayment" type="hidden" value="477963">
                                                <input class="seqPartnerProduct" type="hidden" value="21787">
                                                <input class="seqPartnerProductPass" type="hidden" value="25513">
                                                <input class="seqPartnerPaymentPass" type="hidden" value="448793">
                                                
                                                <input class="useNumberType" type="hidden" value="I">
                                                <input class="useNumber" type="hidden" value="10">
                                                <input class="usedNumber" type="hidden" value="0">
                                                <input class="useStartDt" type="hidden" value="2019-08-28">
                                                <input class="useEndDt" type="hidden" value="2020-01-06">
                                                <input class="originUseEndDt" type="hidden" value="2020-01-06">
                                                <input class="limitNumber" type="hidden" value="10회">
                                                <input class="passUseNumber" type="hidden" value="10">
                                                <input class="passState" type="hidden" value="R">
                                                <input class="seqMember" type="hidden" value="716053">
                                                <input class="name" type="hidden" value="이혜원 회원 (테스트)">
                                            </div>
                                            
                                            <p class="pr_pt ">
                                                <span>개인레슨</span>
                                                <i>2019-08-28 - 2020-01-06</i>
                                                <span class="day_data">
                                                    
                                                        
                                                        
                                                            <span>이용횟수 <strong class="c_red">0회</strong></span>
                                                            
                                                                
                                                                
                                                                    
                                                                
                                                            
                                                            <span>남은횟수 <strong class="c_green">10회</strong></span>
                                                        
                                                    
												</span>
                                                <strong class="use_tool">
                                                    
														<!-- 
															<a >
                                                                이용권 기간 수정
                                                            </a>
														 -->
                                                    
                                                </strong>                                                                                    
                                            </p>
                                        
       
                                </div>

                                <div class="use_itm">
                                    <p>
                                        <span>상품금액</span>
                                        <i>1,200,000 원</i>
                                    </p>
                                    <p>
                                        <span>결제금액</span>
                                        <i>          
                                                    1,200,000 원 
                                        </i>
                                    </p>          
                                        <p>
                                            <span>결제담당</span>
                                            <i>기본 관리자</i>
                                        </p>
                                        <p>
                                            <span>결제일자</span>
                                            <i>2019-08-28</i>
                                        </p>
                                </div>

                                <div class="service_price btn_add">
                                    <p>
                                    <span class="memo pos_add">메모
                                        <!-- <span class="tooltip_box">
                                            <span class="txt_box">
                                                    190828 여름 할인 이벤트
                                            </span>
                                        </span> -->
                                    </span>
									<span class="fr btn_line_add">
													<a class="btn red"  data-toggle="modal" data-target="#ST-Modal">중지</a>
													<a class="btn red"  data-toggle="modal" data-target="#YD-Modal" > 양도</a>
                                                    <a type="button" class="btn red">환불</a>
                                    </span>
                                    </p>
                                </div>
                            </div>
                        </li>
                    
                </ul>
             <!--    <form id="paymentFrom" method="post" action="/manager/member/editPaymentReceivables">
                    <input type="hidden" name="seqMember">
                    <input type="hidden" name="seqPartnerProduct">
                    <input type="hidden" name="seqPartnerPayment">
                </form> -->
            </div>
 
 
 
 
 
   
 <!--=============================[[카드 부분 끝 ]]====================================================  -->  
        
         

      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>

 
</body>
</html>


