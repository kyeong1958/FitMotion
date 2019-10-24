<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/NewCSS/BillingHistoryList.css">
    <!-- ============================ [[ 회원결제내역 ]] ======================================== -->


<style type="text/css">

body{
   padding:0%;
}


                  
                 




</style>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
            <!--=========================[[ 홈바 시작 ]]========================== -->
   		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">내역관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회원결제내역</a>
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
               
             <!--    <form id="paymentFrom" method="post" action="/manager/member/editPaymentReceivables">
                    <input type="hidden" name="seqMember">
                    <input type="hidden" name="seqPartnerProduct">
                    <input type="hidden" name="seqPartnerPayment">
                </form> -->
            </div>
 
 <!--=============================[[카드 부분 끝 ]]====================================================  -->  
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
<%@ include file="./BillingHistoryListModal.jsp"%>