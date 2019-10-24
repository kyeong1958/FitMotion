<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="tab_area tab_add">
    <div class="section">
        <div class="fl">
			<ul>
				<li>
					<button type="button" class=" active tabBtn" value="ALL">전체 회원
						<span>348</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="nonPaymentMember">미결제 회원
						<span>7</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="AVAILABLE">이용 회원
						<span>154</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="EXPIRED">만료 회원
						<span>184</span></button>
				</li>
				<li>
					<button type="button" data-expire-gubun="3" class=" tabBtn" value="EXPIRED_3" data-gubun="3">만료 3일 전
						<span>0</span></button>
				</li>
				<li>
					<button type="button" data-expire-gubun="7" class=" tabBtn" value="EXPIRED_15" data-gubun="7">만료 15일 전
						<span>0</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="ReceivablesMember">미납 회원
						<span>16</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="refunds">환불
						<span>21</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" value="StopMember">중지 회원
						<span>1</span></button>
				</li>
			</ul>
        </div>
        <div class="fr">
            
            <select class="select_month">
            <option value="201909">2019년 09월</option><option value="201908">2019년 08월</option><option value="201907">2019년 07월</option><option value="201906">2019년 06월</option><option value="201905">2019년 05월</option><option value="201904">2019년 04월</option><option value="201903">2019년 03월</option><option value="201902">2019년 02월</option><option value="201901">2019년 01월</option><option value="201812">2018년 12월</option><option value="201811">2018년 11월</option><option value="201810">2018년 10월</option></select>
                
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
            <ul>
                <li><button type="button" class=" tabBtn" value="NEW">신규 결제 <span>24</span></button></li>
                <li><button type="button" class=" tabBtn" value="RENEW">재 결제 <span>16</span></button></li>
                <li><button type="button" class=" tabBtn" value="ReceivablesMemberMonth">미납 회원 <span><i>4</i></span></button></li>
                <!-- li><button type="button" class=" tabBtn" value="nonPaymentMemberMonth">미결제 회원 <span></span></button></li-->
                <li><button type="button" class=" tabBtn" value="refundsMonth">환불 <span><i>1</i></span></button></li>
            </ul>
        </div>
    </div>
</div>


<div class="section" id="memberListSection" style="padding:35px 66px">

    <!-- 리스트 검색 -->
    <div class="search_bar search_add">

        <fieldset>
            <legend>검색</legend>
            <form id="frmMemberSearch">
                <p>



                    <input type="hidden" name="selectMonth" value="201909">
                    <input type="hidden" name="memberPayment" value="ALL">
                    <input type="hidden" name="expireGubun" value="">
                    <select name="orderby" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="payment">최근 결제 순</option>
						
                        <option value="recentReg">최근 등록 순</option>
                        <option value="name">이름 순(가나다)</option>
                        <option value="age">나이 순</option>
                    </select>
                    <select name="memberAges" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">연령대</option>
                        <option value="10">10대</option>
                        <option value="20">20대</option>
                        <option value="30">30대</option>
                        <option value="40">40대</option>
                        <option value="50">50대</option>
                        <option value="60">60대</option>
                        <option value="70">70대 이상</option>
                    </select>
                    <select name="memberGender" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">성별</option>
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                    <select name="seqPartnerProduct" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">상품 목록</option>
                        
                            <option value="19906">0000</option>
                        
                            <option value="17025">10:1 그룹레슨 (플라잉요가) 12회</option>
                        
                            <option value="17027">10:1 그룹레슨 (플라잉요가) 36회</option>
                        
                            <option value="17029">10:1 그룹레슨 (플라잉요가) 72회</option>
                        
                            <option value="18973">1:1 TEST 20회 3개월</option>
                        
                            <option value="20117">1:1 TEST 무제한 1개월</option>
                        
                            <option value="17020">1:1 개인레슨 (기구필라테스) 10회 2개월</option>
                        
                            <option value="17018">1:1 개인레슨 (기구필라테스) 24회</option>
                        
                            <option value="17019">1:1 개인레슨 (기구필라테스) 48회</option>
                        
                            <option value="17021">1:1 개인레슨 (헬스 PT) 16회</option>
                        
                            <option value="17022">1:1 개인레슨 (헬스 PT) 24회</option>
                        
                            <option value="17023">1:1 개인레슨 (헬스 PT) 48회</option>
                        
                            <option value="17024">1:1 개인레슨 (헬스 PT) 8회</option>
                        
                            <option value="18487">1:1 개인레슨 (헬스 PT) 무제한 3개월</option>
                        
                            <option value="23223">4:1 그룹레슨 (기구필라테스) 무제한 1개월</option>
                        
                            <option value="17026">4:1 그룹레슨 24회 (3개월)</option>
                        
                            <option value="17028">4:1 그룹레슨 48회 (6개월)</option>
                        
                            <option value="17030">4:1 그룹레슨 8회 (1개월) </option>
                        
                            <option value="18422">5:1 그룹수업 무제한 3개월</option>
                        
                            <option value="23226">GX  3개월</option>
                        
                            <option value="22939">MGA 1:1 개인레슨(20분) 30회 6개월</option>
                        
                            <option value="20791">W 1개월 10회</option>
                        
                            <option value="20792">Wpilates 그룹 10회 1개월</option>
                        
                            <option value="20794">Wpilates 이용권 20회 2개월</option>
                        
                            <option value="20793">Wpilates 이용권 30회 3개월</option>
                        
                            <option value="23331">개인(추가+3회) 1개월</option>
                        
                            <option value="21787">개인레슨 10회 + 그룹레슨 48회</option>
                        
                            <option value="21702">개인레슨 36회 3개월</option>
                        
                            <option value="17017">개인레슨 무제한 3개월</option>
                        
                            <option value="23330">개인레슨(테스트) 10회 1개월</option>
                        
                            <option value="23185">골프 무제한 5개월</option>
                        
                            <option value="21594">골프 무제한 6개월</option>
                        
                            <option value="23184">골프 연습장 무제한 6개월</option>
                        
                            <option value="17031">그룹레슨 (GX) 12개월</option>
                        
                            <option value="17032">그룹레슨 (GX) 1개월</option>
                        
                            <option value="17033">그룹레슨 (GX) 3개월</option>
                        
                            <option value="17034">그룹레슨 (GX) 6개월</option>
                        
                            <option value="17035">그룹레슨 (스피닝) 12개월</option>
                        
                            <option value="17036">그룹레슨 (스피닝) 1개월</option>
                        
                            <option value="17037">그룹레슨 (스피닝) 3개월</option>
                        
                            <option value="17038">그룹레슨 (스피닝) 6개월</option>
                        
                            <option value="17039">그룹레슨 (요가) 12개월</option>
                        
                            <option value="17040">그룹레슨 (요가) 1개월</option>
                        
                            <option value="19820">그룹레슨 (요가) 20회 1개월</option>
                        
                            <option value="17041">그룹레슨 (요가) 3개월</option>
                        
                            <option value="17042">그룹레슨 (요가) 6개월</option>
                        
                            <option value="21703">그룹레슨 38회 3개월</option>
                        
                            <option value="18481">대관 무제한 6개월</option>
                        
                            <option value="20920">더블유필라테스 10회 1개월</option>
                        
                            <option value="20921">더블유필라테스 20회 2개월</option>
                        
                            <option value="20922">더블유필라테스 30회 3개월</option>
                        
                            <option value="18613">듀엣 10회 2개월</option>
                        
                            <option value="17043">락카 12개월</option>
                        
                            <option value="22265">락카 1회 1개월</option>
                        
                            <option value="24958">락카 무제한 1개월</option>
                        
                            <option value="19611">무용수업 1개월</option>
                        
                            <option value="21593">스피닝 무제한 3개월</option>
                        
                            <option value="20252">요가 50회 3개월</option>
                        
                            <option value="17047">운동복 12개월</option>
                        
                            <option value="19911">테스트 10만원</option>
                        
                            <option value="23014">패키지 1 (4 +4)</option>
                        
                            <option value="23015">패키지 2 (8 +8)</option>
                        
                            <option value="19908">패키지 레슨 (개인 20 + 그룹 20)</option>
                        
                            <option value="20652">필라테스 10회 이용권 10회 45일</option>
                        
                            <option value="21454">헬스 회원권 10회 2개월</option>
                        
                            <option value="17051">헬스 회원권 12개월</option>
                        
                            <option value="17052">헬스 회원권 1개월</option>
                        
                            <option value="17053">헬스 회원권 3개월</option>
                        
                            <option value="17054">헬스 회원권 6개월</option>
                        
                            <option value="21544">헬스 회원권 무제한 1개월</option>
                        
                            <option value="21543">헬스 회원권 무제한 1개월</option>
                        
                            <option value="24305">헬스 회원권 무제한 3개월</option>
                        
                    </select>
                    <select name="seqService" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">서비스 목록</option>
                        
                            <option value="1157">10:1 그룹레슨 (플라잉요가)</option>
                        
                            <option value="737">1:1 개인레슨 (헬스 PT)</option>
                        
                            <option value="1156">4:1 그룹레슨 (기구필라테스)</option>
                        
                            <option value="1232">5:1 그룹수업</option>
                        
                            <option value="1544">GX 3개월</option>
                        
                            <option value="996">MGA 1:1 개인레슨(20분)</option>
                        
                            <option value="995">MGA 1:1 개인레슨(20분)</option>
                        
                            <option value="1394">Wpilates 이용권</option>
                        
                            <option value="736">개인레슨</option>
                        
                            <option value="814">개인레슨</option>
                        
                            <option value="1435">골프</option>
                        
                            <option value="339">골프 연습장</option>
                        
                            <option value="1263">그룹 TEST</option>
                        
                            <option value="1301">그룹레슨</option>
                        
                            <option value="241">그룹레슨 (GX)</option>
                        
                            <option value="240">그룹레슨 (스피닝)</option>
                        
                            <option value="239">그룹레슨 (요가)</option>
                        
                            <option value="800">대관</option>
                        
                            <option value="1403">더블유필라테스</option>
                        
                            <option value="802">듀엣</option>
                        
                            <option value="200">락카</option>
                        
                            <option value="222">락카</option>
                        
                            <option value="170">락카</option>
                        
                            <option value="1310">무용수업</option>
                        
                            <option value="1434">스피닝</option>
                        
                            <option value="171">운동복</option>
                        
                            <option value="1003">테스트 개인 레슨권</option>
                        
                            <option value="305">필라테스 10회 이용권</option>
                        
                            <option value="238">헬스 회원권</option>
                        
                            <option value="299">환불</option>
                        
                            <option value="202">환불</option>
                        
                    </select>
                    <select name="locker" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">라커 사용여부</option>
                        <option value="lockerExp3">라커 만료3일전</option>
                        <option value="lockerExp7">라커 만료7일전</option>
                        <option value="lockerExp">라커 사용만료</option>
                    </select>
                    <select name="seqGroup" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">회원그룹</option>
                        
                            <option value="368">테스트</option>
                        
                    </select>
                    <select name="seqPartnerCoach" class="selectBox" onchange="memberInfo.btnSearch();">
                        <option value="">담당강사</option>
                        
                            <option value="6862"> 필라테스어홀릭 강사 (테스트)</option>
                        
                            <option value="5849">강민호 강사</option>
                        
                            <option value="4435">기본 관리자</option>
                        
                            <option value="6592">김경순 강사 (테스트)</option>
                        
                            <option value="6866">리커버리 강사 (테스트)</option>
                        
                            <option value="5886">박하은</option>
                        
                            <option value="6413">서민혜 매니저 (독핏)</option>
                        
                            <option value="6919">신다용 강사 (테스트)</option>
                        
                            <option value="6837">이서인 강사 (테스트)</option>
                        
                            <option value="6575">이석 강사 (테스트)</option>
                        
                            <option value="4444">이석훈</option>
                        
                            <option value="6593">이혜원 강사 (테스트)</option>
                        
                            <option value="5919">추성훈</option>
                        
                            <option value="5421">테스트</option>
                        
                            <option value="6864">피치발레 강사 (테스트)</option>
                        
                            <option value="4436">홍준선 강사</option>
                        
                    </select>
                    <span class="search_box" style="width:370px;">
                        <input type="text" name="memberSearchWord" onkeydown="if (event.keyCode == 13) {memberInfo.btnSearch(); return false;}" placeholder="이름, 전화번호, 이메일, 메모" style="width: 185px; float: left;">
						<button id="btnSearch" type="button" class="search"></button>
						&nbsp;&nbsp;
                    </span>
            </p></form>
			
			
			
        </fieldset>
    </div>
    <!-- // 리스트 검색 -->
    <div class="select_option">
        
        <div class="fl">
            <h4>348명의 회원 중 0명이 선택되었습니다.</h4>
        </div>
        
        <div class="fr">
            <input type="checkbox" id="btnSelectAll"><label for="btnSelectAll">전체 선택</label>
			
				<a href="#" class="btn blue small" id="openPopupSendSMS">SMS 보내기</a>
			
            <a href="#" class="btn blue small" id="openPopupSendExtension">일괄 기간연장</a>
            <a href="#" class="btn blue small" id="btnAddMemberGroup">그룹 추가</a>
            <a href="#" class="btn blue small" id="btnAddMemberMission">미션 부여</a>
			
            	<a href="#" class="btn red small" id="btnDeleteMember">회원 삭제</a>
			
            <!-- 2017-12-22 ktpark -->
            <!-- <a href="#" class="btn purple small" id="btnAddMemberCall">연락 예정회원으로 추가</a>
        	<a href="#" class="btn green small" id="btnMemberDown">회원 데이터 다운로드</a> -->
        </div>
    </div>

  
  
      <!-- 회원 리스트 -->
      <div class="grid_list">
          <ul>
              <!-- Loop -->
              
              
                  
                      
                      
                      
                  
                  
              
              
                  
                      
                  
                  
              
              <li>
                  <div class="profile">
                      <p class="pic"><img src="/img/pic/male.jpg"></p>
                      <p class="name">바디코디테스트1</p>
                      <p class="info">1세 / 남 / 010-1234-1111</p>
                  </div>
                  <div class="card_itm">
                      <p class="unit">

						
							
							
							
								<label>최근 결제 상품</label>
								<!-- 2017-12-22 ktpark -->
								
							
						

                          
                              <span class="letter_crap wd_add">헬스 회원권 6개월</span>

								
	                              
	                                  
	                                  
	                                  <i class="expired">만료일 : 2020-03-29</i>
	                                  
	                              
								
								
								
								
                          
                          
                      </p>
                      
                  </div>
                  <div class="function_btn">
                      <input type="checkbox" class="checkBox" id="member_1" value="730374" data-sms-agree="Y" onclick="memberInfo.memberCheck();"><label for="member_1">회원 선택</label>
                      <input type="checkbox" class="hidden" id="mobile_1" value="010-1234-1111">
                      <input type="checkbox" class="hidden" id="name_1" value="바디코디테스트1">
                      <input type="checkbox" class="hidden" id="age_1" value="1">
                      <input type="checkbox" class="hidden" id="membershipNo_1" value="11115">
					  
						  <a href="/manager/member/memberSelectProduct/730374" class="btn green small cart">상품판매</a>
					  
                      <a href="/manager/member/memberInfo/730374" class="btn blue small view">상세보기</a>
                  </div>
              </li>
              
              
                  
                      
                      
                      
                  
                  
              
              
                  
              
              <!-- //Loop  -->
          </ul>
      </div>
      <!-- //회원 리스트 -->
  	
	
	
</div>

</body>
</html>