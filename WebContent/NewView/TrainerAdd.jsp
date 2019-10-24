<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ================================= [[ 이용권상세 ]] =================================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/TrainerAdd.css">
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
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="trainer">강사 목록</a>
        <a href="#">임직원 등록</a>
    </div>
      
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!-- ================================= [[ 화면전환 모달창 ]] =================================================== -->
      <!-- Button to Open the Modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  Open modal
</button>

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="section" id="trsection">
	<fieldset id="trfieldset">
		<form id="add_coach_form">
			<input type="hidden" name="seqPartnerCoach" value="0">
			<input type="hidden" name="seqPartner" value="401">
			<input type="hidden" name="useYn" value="Y">
			<input type="hidden" name="schedulerDisplayOrder" value="0">
			<input type="hidden" name="pwd" value="">
			<input type="hidden" name="pwdActive" value="N">

			<h2>기본 정보</h2>
			<hr id="trhr">
			<div id="trrow1" class="row">
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
			</div>
			<p>
				<label id="trlabel1" for="coachName">이름</label>
				<input type="text" id="coachName" name="coachName" style="width:20rem;">
			</p>

			<p data-tab="basic">
				<label id="trlabel2" for="gender">성별</label>
				<input type="radio" id="sex-M" name="sex" value="F" checked="">
				<label id="trlabel3" for="sex-M">남성</label>
				<input type="radio" id="sex-F" name="sex" value="F">
				<label id="trlabel4" for="sex-F">여성</label>
			</p>

			<p data-tab="basic">
				<label id="trlabel5" for="mobileNo">휴대폰</label>
				<input type="text" id="mobileNo" name="mobileNo" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678" autocomplete="tel-national" style="width:20rem;">
			</p>

			<p data-tab="basic">
				<label id="trlabel6" for="email">이메일</label>
				<input type="text" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" placeholder="username@email.com" autocomplete="email" style="width:20rem;">
			</p>

			<p data-tab="basic">
				<label id="trlabel7" for="birthday">생년월일</label>
				<input style="text-align:left;" id="birthday" name="birthday" type="text" class="calendar hasDatepicker" readonly="readonly">
			</p>

			<!-- <p style="display:none;">
				<label id="trlabel" for="employeeTypeCode">직원분류</label>
				<select name="employeeTypeCode" id="employeeTypeCode" disabled="disabled" style="width:20rem;"><option value="-1">기본 관리자</option><option value="00">대표 관리자</option><option value="01">대표자</option><option value="02">팀장</option><option value="03">매니저</option><option value="04">일반</option></select>
			</p> -->

			<p data-tab="extra">
				<label id="trlabel8" for="profile">강사 소개</label>
				<textarea class="trprofilebox" id="profile" name="profile" style="width: 500px;"></textarea>
			</p>

			<p data-tab="extra">
				<label id="trlabel9" for="breakTime">수업 준비 시간</label>
				<input class="trbreaktime" id="breakTime" name="breakTime" type="number" style="width:20rem;">
				<span>분</span>
			</p>

			<h2 style="margin-top:5rem;">인사 정보</h2>
			<hr id="trhr">
			<fieldset id="trsigninfo1" class="sign_info" style="background-color:transparent;">
				<div id="trrow2" class="row">
					<div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
						<p><label id="trlabel10" for="position">직급</label></p>
						<select class="trposition" name="position" id="position" style="min-width:20rem;"><option value="956">565</option><option value="954">FC</option><option value="516">강사</option><option value="331">기본직급</option><option value="513">대표</option><option value="514">매니저</option><option value="628">실장</option></select>
					</div>
					<div id="trcolsm4" class="col-sm-4" style="margin-left:0;"></div>
				</div>
			</fieldset>

			<h3 style="margin-top:2rem;">급여정보 설정</h3>
			<fieldset id="trsigninfo2" class="sign_info" style="background-color:transparent;">
				<div class="row">
					<div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
						<p><label id="trlabel12" for="basePay">기본급/월</label></p>
						<input class="trbasepay" type="number" name="basePay" id="basePay" style="min-width:20rem;">
						<span>원</span>
					</div>
					<div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
						<p><label id="trlabel13" for="personalCommissionRate">개인레슨 수당 설정</label></p>
						<input class="trlessonpay" type="number" name="personalCommissionRate" id="personalCommissionRate" style="min-width:20rem;">
						<span>%</span>
					</div>
					<div id="trcolsm4" class="col-sm-4" style="margin-left:0;">
						<p><label id="trlabel14" for="personalCommissionRate">그룹수업 수당 설정</label></p>
						<input class="trgrlessonpay" type="number" name="personalCommissionRate" id="personalCommissionRate" style="min-width:20rem;">
						<span>%</span>
					</div>
				</div>
			</fieldset>
			<div id="trbutton" class="button_area">
				<button id="trbtnred" type="button" class="btn red" data-function="cancel">취소</button>
				<button id="trbtndark" type="button" class="btn dark" data-function="apply" data-role="submit">등록</button>
				<button id="trbtndark2" type="button" class="btn dark" data-function="apply-then-setup-permission" data-role="submit" style="">등록 후 권한 설정</button>
			</div>

		</form>
	</fieldset>
</div>

    </div>
  </div>
</div>
      
      
      
      
      
      
<!-- ================================= [[ 화면전환 모달창 ]] =================================================== -->
      
      </div>
</div>
</body>
</html>