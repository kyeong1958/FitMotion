<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Main3Modal.css">

<style type="text/css">
body{
   padding:0%;
}
</style>
 <!-- 확인용 버튼 -->
<!--  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#OI-modal">
  Open modal
</button>
 -->
<!--===========================[[ 직급명칭 등록 모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="OI-modal">
  <div class="modal-dialog" >
    <div class="modal-content" id="OI-content">

      <!-- Modal Header -->
      <div class="modal-header" id="OI-header">
        <h2 class="modal-title" id="OI-title">직급 추가하기</h2>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="OI-body">
               <fieldset>
               <form id="F_rank">
                  <p >
                     <label  class="label" style="margin-right: 25px;">
                        <span style="color: #FF5722; font-size: 20px;">*</span>직급 명칭
                     </label>
                     <input type="text" style="width:48rem;" name="rank_name">
                  </p>
               </form>
            </fieldset>
          
            </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="OI-footer">
            <button  type="button" class="btn green" onclick="rakIns()" data-dismiss="modal">저장</button>
         <button  type="button" class="btn gray" data-dismiss="modal">닫기</button>
      </div>

    </div>
  </div>
</div>


<!--=============================[[ 직급명칭 등로 모달 끝]]==================================  -->
<!--===============================[[임직원 등록 창 모달 시작 ]]====================================  -->
<div class="modal" id="sfInsert">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="section" id="trsection">
   <fieldset id="trfieldset">
      <form id="add_coach_form">
         <h2>기본 정보</h2>
         <hr id="trhr">
         <!-- <div id="trrow1" class="row">
            <div id="trphoto" class="col-sm-12 photo" style="margin-left:0; text-align:left;">
               <p id="trpic" class="pic">
                  <img src="/images/person.png" id="trprofileImg">
               </p>
               <p id="trimg">정면, 상반신 사진을 등록해주세요.</p>
               <div id="trfilefake" class="file_fake">
                  <input type="hidden" name="imgUrl" id="imgUrl" value="" readonly="readonly">
                  <label id="trbtndark" for="imgFile" class="btn dark" style="margin-left:0;">찾기</label>
                  <input class="trimgfile" id="imgFile" name="imgFile" type="file" accept="image/*" style="display:none;">
               </div>
            </div>
         </div> -->
         <input type="hidden" name="staff_id">
         <p>
            <label id="trlabel1" >이름</label>
            <input type="text" id="coachName" name="staff_name" style="width:20rem;">
         </p>

         <p data-tab="basic">
            <label id="trlabel2" for="gender">성별</label>
            <input type="radio" id="sex-M" name="staff_gender" value="남성" checked="">
            <label id="trlabel3">남성</label>
            <input type="radio" id="sex-M" name="staff_gender" value="여성" >
            <label id="trlabel4" >여성</label>
         </p>

         <p data-tab="basic">
            <label id="trlabel5" >휴대폰</label>
            <input type="text" id="mobileNo" placeholder="010-1234-5678" name="staff_hp"  style="width:20rem;">
         </p>

   

         <p data-tab="basic">
            <label id="trlabel7">생년월일</label>
            <input style="text-align:left;" id="birthday" type="text" name="staff_birth" class="calendar hasDatepicker" >
         </p>

      
         <!-- <p style="display:none;">
            <label id="trlabel" for="employeeTypeCode">직원분류</label>
            <select name="employeeTypeCode" id="employeeTypeCode" disabled="disabled" style="width:20rem;"><option value="-1">기본 관리자</option><option value="00">대표 관리자</option><option value="01">대표자</option><option value="02">팀장</option><option value="03">매니저</option><option value="04">일반</option></select>
         </p> -->

         <p>
            <label id="trlabel8" >강사 소개</label>
            <textarea class="trprofilebox" id="profile" name="staff_introduce"  style="width: 500px;"></textarea>
         </p>

         <p data-tab="extra">
            <label id="trlabel9" for="breakTime">입사일</label>
            <input class="trbreaktime" name="pi_join_day" id="breakTime" type="number" style="width:20rem;">
         </p>

         <h2 style="margin-top:5rem;">인사 정보</h2>
         <hr id="trhr">
         <fieldset id="trsigninfo1" class="sign_info" style="background-color:transparent;">
            <div id="trrow2" class="row">
               <div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
                  <p><label id="trlabel10">직급</label></p>
                  <select class="trposition" name="rank_num" id="position" style="min-width:20rem;">
                     <option value="1">대표</option>
                     <option value="2">매니저</option>
                     <option value="3">강사</option>
                     <option value="4">계약직</option>
                     <option value="5">아르바이트 </option>
                     
                  </select>
               </div>
               <div id="trcolsm4" class="col-sm-4" style="margin-left:0;"></div>
            </div>
         </fieldset>

         <h3 style="margin-top:2rem;">급여정보 설정</h3>
         <fieldset id="trsigninfo2" class="sign_info" style="background-color:transparent;">
            <div class="row">
               <div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
                  <p><label id="trlabel12" >기본급/월</label></p>
                  <input class="trbasepay" type="text"  id="basePay" name="pi_base_pay" style="min-width:20rem;">
                  <span>원</span>
               </div>
               <div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
                  <p><label id="trlabel13" >개인레슨 수당 설정</label></p>
                  <input class="trlessonpay" name="pi_private_pay" type="text" id="persona" style="min-width:20rem;">
                  <span>%</span>
               </div>
               <div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
                  <p><label id="trlabel14"  >그룹수업 수당 설정</label></p>
                  <input class="trgrlessonpay" type="text" name="pi_group_pay"  id="group" style="min-width:20rem;">
                  <span>%</span>
               </div>
            </div>
         </fieldset>
         <div id="trbutton" class="button_area">
            <button data-dismiss="modal" id="trbtndark" type="button" class="btn dark" onclick="staffInser()">등록</button>
            <button data-dismiss="modal" id="trbtnred" type="button" class="btn red" >취소</button>
            <!-- <button id="trbtndark2" type="button" class="btn dark" data-role="submit" style="">등록 후 권한 설정</button> -->
         </div>

      </form>
   </fieldset>
   </div>
    </div>
  </div>
</div>
      





<!--===============================[[임직원 등록 창 모달 끝 ]]====================================  -->



      