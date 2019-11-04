<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 주노랑 이관 완료  -->
<!-- ============================ [[ 직원관리상세 ]] ======================================== -->


<link rel="stylesheet" type="text/css" href="../NewCSS/staffManagement.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Main3Modal.css">
<%--  <%
	Map<String,Object> sfDTList = (Map<String,Object>)request.getAttribute("sfDTList");
	List<Map<String,Object>> list = (List<Map<String,Object>>)sfDTList.get("key");
	 Map<String,Object> rMap = list.iterator().next();
		int size=0;
		if(list!=null && list.size()>0){
		}
%>  --%>


 <%


			 Map<String,Object> rMap = new HashMap<>();
			if(request.getAttribute("sfDTList") != null){
			Map<String,Object> sfDTList = (Map<String,Object>)request.getAttribute("sfDTList");
			List<Map<String,Object>> list = (List<Map<String,Object>>)sfDTList.get("key");
			 rMap = list.get(0);
			}	
			

%> 


<style type="text/css">
	body{
	   padding:0%;
	}
</style>
<script type="text/javascript">
	function staffpage(url){
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#section").html(data);
		   }
		});
	}
	$(function () {
		    $(".staff-management-tab").click(function () {
			   	     $(".staff-management-tab").css("background-color","#F0F0F2");
			         $(".staff-management-tab").css("color", "#42485A");
			         $("#staff_menu").children('img').attr("src","../images/piechart.png");
			         $("#staff_schedule_check").children('img').attr("src","../images/calendar.png");
			    /*      $("#staff_information").children('img').attr("src","../images/person.png"); */
		    	if($(this).attr('id') == "staff_menu"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/piechart_white.png");
		    	}
		    	else if($(this).attr('id') == "staff_schedule_check"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/calendar_white.png");
			         staffpage('./staffManagement-schedule.jsp');
		    	}
		    	/* else if($(this).attr('id') == "staff_information"){
			         $(this).css("background-color","#42485A");
			         $(this).css("color", "#BABBC2");
			         $(this).children('img').attr("src","../images/person_white.png");;
		    	} */
		    });
	});
	function sfUPD(staff_id,staff_name,staff_hp,staff_gender,staff_introduce,staff_birth
					,pi_base_pay,pi_join_day,rank_num,pi_private_pay,pi_group_pay	
	){
		$("#sfupdate").modal();
		$("#mstaff_id").val(staff_id);
		$("#coachName").val(staff_name);
		$("#mobileNo").val(staff_hp);
		$("#sex-M").val(staff_gender);
		$("#profile").val(staff_introduce);
		$("#birthday").val(staff_birth);
		$("#basePay").val(pi_base_pay);
		$("#breakTime").val(pi_join_day);
		$("#position").val(rank_num);
		$("#persona").val(pi_private_pay);
		$("#group").val(pi_group_pay);
	}
	function staffupd(){
	//	alert("수정버튼 ");
		var formData = $("#add_coach_form2").serialize();
		 $.ajax({
			method:"POST"
			,data:formData
			,url:"/staff/SFUPD.fm"
			,success:function(data){ 
			//	alert(data);
				$("#stupdate").html(data);
			}
		}); 
	}
	function staffSche(staff_id){
		$.ajax({
			url:"/schedule/staffSche.fm?staff_id="+staff_id
			,success:function(data){
				$("#section").html(data);
			}
		});
	}
</script>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원관리</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">직원상세</a>
		<div class="homefr" style="padding-right:10px;">
           <a href="#" class="btn dark" id="MIns-B" data-toggle="modal" onclick="sfUPD('<%=rMap.get("STAFF_ID") %>',
           '<%=rMap.get("STAFF_NAME") %>','<%=rMap.get("STAFF_HP") %>','<%=rMap.get("STAFF_GENDER") %>','<%=rMap.get("STAFF_INTRODUCE") %>'
           ,'<%=rMap.get("STAFF_BIRTH") %>','<%=rMap.get("PI_BASE_PAY") %>','<%=rMap.get("PI_JOIN_DAY") %>',
           '<%=rMap.get("RANK_NUM") %>','<%=rMap.get("PI_PRIVATE_PAY") %>','<%=rMap.get("PI_GROUP_PAY") %>')" >정보수정</a>
       </div>
		</div>
	<!-- ================================= [[ 개인정보 ]] =================================================== -->
		<div class="row profile">
			<div class="row">
				<div class="col-lg-4" style="width: 32%;margin-right: 16px;">
					<div class="profile-top memname">
						<%=rMap.get("STAFF_NAME") %>
					</div>
					<div class="profile-bottom">
						 <span><%=rMap.get("RANK_NAME") %></span>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/gender2.png" style="width: 6%;">
						<%=rMap.get("STAFF_GENDER") %>
					</div>
					<div class="profile-bottom">
						<img src="../images/cake.png" style="width: 6%;">
						<%=rMap.get("STAFF_BIRTH") %>
					</div>			
				</div>
				<div class="col-lg-4">
					<div class="profile-top">
						<img src="../images/phone.png" style="width: 6%;">
						<%=rMap.get("STAFF_HP") %>
					</div>
					<div class="profile-bottom">
						<img src="../images/work.png" style="width: 6%;">
						<span><%=rMap.get("PI_JOIN_DAY") %></span>
					</div>			
				</div> 
			</div>
			<div class="row" style="margin-top: 20px;">
				<a  class="staff-management-tab" id="staff_menu" style="border-right:1px solid #BABBC2;">
					<img src="../images/piechart.png" class="staff-management-tab-a">강사 정보
				</a>
				<a  class="staff-management-tab" id="staff_schedule_check" onClick="staffSche('<%=rMap.get("STAFF_ID") %>')">
					<img src="../images/calendar.png" class="staff-management-tab-a">스케줄 확인
				</a>
				<!-- <a class="staff-management-tab" id="staff_information" onClick="staffpage('./staffInfo.jsp')">
					<img src="../images/person.png" class="staff-management-tab-a">인사 정보
				</a> -->
			</div>
		</div>
		<div class="section" id="section">
<!--[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[2019-10-30추가 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]  -->
	<!-- ================================= [[ 개인레슨  ]] =================================================== -->
			<div class="col-lg-4 memcard" style="width: 32%;margin-right: 16px;">
				<div id="solo">
				<!-- 개인레슨AJAX  -->
				</div>
			</div>
	<!-- ================================= [[ 개인레슨  ]] =================================================== -->
	<!-- ================================= [[ 그룹레슨 ]] =================================================== -->
			<div class="col-lg-4 memcard" style="width: 32%;margin-right: 16px;">
				<div id="group">
				<!-- 그룹레슨 AJAX -->
				</div>
			</div>
	<!-- ================================= [[ 그룹레슨 ]] =================================================== -->			
	<!-- ================================= [[ 오늘스케줄 ]] =================================================== -->			
			<div class="col-lg-4 memcard" style="width: 32%;margin-right: 16px;">
				<div id="today">
				<!-- 오늘스케줄 Ajax -->
				</div>
			</div>
	<!-- ================================= [[ 오늘스케줄 ]] =================================================== -->
<!--[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[2019-10-30추가 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]  -->
		</div>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->

	
	
	<!--===================================[[임직원 모달창 업데이트 부분 시작 ]]====================================================  -->
<div class="modal" id="sfupdate">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="section" id="trsection">
   <fieldset id="trfieldset">
      <form id="add_coach_form2">
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
         <input type="hidden" name="staff_id" id="mstaff_id">
         <p>
            <label id="trlabel1" >이름</label>
            <input type="text" id="coachName" name="staff_name" style="width:20rem;">
         </p>

         <p data-tab="basic">
            <label id="trlabel2" for="gender">성별</label>
            <input type="radio" id="sex-M" name="staff_gender"  checked="">
            <label id="trlabel3">남성</label>
            <input type="radio" id="sex-M" name="staff_gender" >
            <label id="trlabel4" >여성</label>
         </p>

         <p data-tab="basic">
            <label id="trlabel5" >휴대폰</label>
            <input type="text" id="mobileNo"  placeholder="010-1234-5678" name="staff_hp"  style="width:20rem;">
         	
         </p>

   

         <p data-tab="basic">
            <label id="trlabel7">생년월일</label>
            <input style="text-align:left;" id="birthday" type="text" name="staff_birth"  class="calendar hasDatepicker" >
       		
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
            <input class="trbreaktime" name="pi_join_day" id="breakTime" type="text" style="width:20rem;">
       
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
            <button data-dismiss="modal" id="trbtndark" type="button" class="btn dark" onclick="staffupd()">수정</button>
            <button data-dismiss="modal" id="trbtnred" type="button" class="btn red" >취소</button>
            <!-- <button id="trbtndark2" type="button" class="btn dark" data-role="submit" style="">등록 후 권한 설정</button> -->
         </div>

      </form>
   </fieldset>
   </div>
    </div>
  </div>
</div>
      




<!--===================================[[임직원 모달창 업데이트 부분 끝 ]]====================================================  -->



	
	
	
	
	
	
	