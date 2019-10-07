<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회원결제내역 ]] ======================================== -->

<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryList.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryList.css">
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
<%@ include file="./BillingHistoryListModal.jsp"%>