<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/Member2/PromotionAddcss.jsp"%>

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
      alert(id);
      $(id).css("background-color","white");
      $(id+"> a").css("color","#42485A");
      $(".sidemenu")
   }
   function menu(menu){/* menu=# */
      alert("menu click"+menu);
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
//처음 사이드바 안보이게함
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
            <div class="row sidemenu" id="allsalesmanagement">
            <a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
            <div class="row sidemenu" id="allsalesmanagement">
            <a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
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
            <div class="row sidemenu" id="allsalesmanagement">
            <a style="color:white" onClick="sidemenu()">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">
var count = 1;
   //콤마넣는함수
   function comma(str) {
       str = String(str);
       return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
   }
   
   //콤마제거함수
  function removeComma(str){
      n = parseInt(str.replace(/,/g,""));
      return n;
   }
   
////콤마를 먼저 제거후 콤마삽입한후 더하기 
 var minus;
function call(){
 var removecomma = null; 
    minus = removeComma( $("#proprice").val()) 
                      - 
          removeComma($("#price_discount1_0").val());
    
         for(var i = 1; i <= count; i++ ){
              if($("#prolist"+i+" #proprice_").val() ===''){
                 $("#prolist"+i+" #proprice_").val("0")
              }   
              
            removecomma += Number(removeComma($("#prolist"+i+" #proprice_").val()));
         }  
            document.getElementById("proprice").value = comma(removecomma);
            
            //판매정가에 찍힌값 총액에 찍히게하기
            if($("#proprice").val()){
               document.getElementById("price_discount2_0").value  =
                  $("#proprice").val();
            }
         //판매정가 - 할인가 = 총액   
             if($("#price_discount1_0").val()){
                document.getElementById("price_discount2_0").value =
                   comma(minus);
            }
   }  
      
/* 이용권 추가하기 누르면 한개더 뜸 */
   $(document).ready(function(){
      var test = $(".procontbox").parent().html();       
      var probtngreen = $('#probtngreen')[0];
         probtngreen.addEventListener('click',function(){
            count ++;
          $(".proaddbox").append("<div id="+"prolist"+count+" class=no>"+ test + "</div>");
          
      })
   });
   
   
   
   
   
   
   $(function () {

		/*     $(".search_bar .search_add").hide();
		    $(".search_bar .search_add").show(); */

		    $("#prolist2").click(function () {
		        $("#prolist2").removeClass("active").css("color", "#333");
		         $(this).addClass("active").css("display", "none");
		  
					

		    });
		});
   
   
   
   
   function a(){
	   //alert("너먹히니"+$('.proaddbox').length);//응
	   //var z = $('#prolist'+(i)).attr("id");
		alert("$('.proaddbox').length:"+$('.no').length);
		for(var x=1;x<=$('.no').length;x++){
			var z = $('#prolist'+(x)).attr("id");
			alert("z : "+z);
		}
		     
   }

</script>
      
<!--=========================[[ 홈바 시작 ]]========================== -->
   <div class="bar_area">
      <div class="homefl" >
         <a id="home">홈</a> 
         <a id="management">프로모션상품 관리</a>
      </div>
   </div>
<!--========================== [[홈바 끝 ]] ========================== -->
<!--================================================[[패키지상품에 포함된 이용설정 시작  ]]=========================================  -->
   <div class="service_make">
         <div id="prosection" class="section">
            <div id="procolumn" class="column">
                  <h3 id="proh3">패키지 상품에 포함되는 이용권 옵션 설정</h3>
                  <!-- 여기부터 설정부분 -->
                     <div class="proaddbox">
                      <div id="prolist1" class="no">
                          <div id="procontbox" class="procontbox">
                           <div class="cont_box" style="max-width: none; position: relative; margin: 15px 0;">
                                 <h3 id="procontboxh3">이용권</h3>
                                    <button id="proclose" class="close" onclick="a()">닫기
                                     <!--  <img id="proimg" src="/images/cancel.png" alt="닫기"> -->
                                   </button>
                                    <div class="cont_body" style="padding: 10px;">
                                       <div class="reservation_set" style="margin-left: 25px;">
                                          <form>
                                           <fieldset id="profieldset">
                                              <legend id="prolegend">이용권</legend>
                                               <p id="prop1">
                                                  <span id="prolabel1">이용권 종류 선택</span> 
                                                     <select id="proselect1" title="이용권 종류 선택">
                                                        <option value="">선택해주세요</option>
                                                        <option value="APPOINTMENT">개인레슨</option>
                                                        <option value="CLASS">그룹수업</option>
                                                        <option value="PLACE">장소</option>
                                                        <option value="OPTION">옵션</option>
                                                      </select>
                                                     <span id="prolabel2">이용권 선택</span> 
                                                      <select id="proselect2" title="이용권 선택">
                                                         <option value="">선택해주세요</option>
                                                       </select>
                                               </p>
                                               <p id="prop2">
                                                  <span id="prolabel3">기간 및 횟수</span> 
                                                  <span id="prowd250"class="wd_250"> 
                                                     <input id="prouseperiod" type="number"    class="wd_100" title="기간" placeholder="예) 6"> 
                                                     <select id="proselect3" title="기간 유형" style="min-width: 70px;">
                                                        <option value="M">개월</option>
                                                        <option value="D">일</option>
                                                     </select>
                                                  </span>
                                                </p>   
                                                <p id="prop3">
                                                      <label id="prolabel7" for="price_2">이용권의 가격 </label> 
                                                      <input  id="proprice_" type="text"class="wd_150" placeholder="0" onkeyup="call()"> 
                                                   <span>원</span>
                                                </p>
                                             </fieldset>
                                          </form>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                            </div>
                          </div> 
<!--=============================================[[이용권 버튼부분 시작 ]]=========================================================   -->                     
        <div id="probtnarea" class="button_area">
           <button id="probtngreen" type="button" class="btn green"  >이용권 추가하기</button>
        </div>
<!--=============================================[[이용권 버튼부분 끝]]=========================================================   -->                     
    </div>
   <!--================================================[[패키지상품에 포함된 이용설정 끝 ]]=========================================  -->
<!--==============================[[패키지 이름과 가격 설정 시작]]============================================================================  -->
     <div id="procontbox2" class="cont_box">
        <div>
        
           <h3 id="proh3_2">패키지 상품 이름과 가격 설정</h3>
           <button class="close" style="position: absolute; top: 18px; right: 20px;">
              <img alt="닫기">
           </button>
           <div id="procontbody2" class="cont_body">
              <div class="reservation_set">
                 <form>
                    <fieldset id="prodieldset2">
                       <legend id="prolegend2">패키지 상품 이름과 가격 설정</legend>
                          <p id="prop4">
                             <span id="prolabel8">패키지 상품 이름</span> 
                             <input id="proproductname" type="text" title="패키지 상품 이름" placeholder="예) 퍼스널 트레이닝">
                          </p>
                       <p>
                          <span id="prolabel9">상품 분류 선택</span> 
                             <select id="proselect4">
                                <option value="2466">필라테스 그룹</option>
                                <option value="2467">필라테스 개인</option>
                                <option value="2930">요가</option>
                             </select>
                             </p>
                       <div>
                          <label id="prolabel17" for="price">판매정가</label> 
                          <input id="proprice" type="text" class="wd_150" placeholder="0" readonly> 
                             <span>원</span>

                          <div style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
                          </div>
                       </div>
                       <div>
                          <label for="price_discount1_0" style="margin-right: 78px;">할인가</label> 
                          <input id="price_discount1_0" type="text" class="wd_150" style="text-align: center;"  onkeyup="call()"> 
                          <span>원</span>
                           <div style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;">
                          </div>
                       </div>
                       <div>
                          <label for="price_discount2_0" style="margin-right: 61px;">결제 총액</label> 
                             <input id="price_discount2_0" type="text" class="wd_150" style="text-align: center;" readonly> 
                          <span>원</span>
                          <div style="padding-left: 120px; line-height: 1.5; margin: 5px 0 10px;"></div>
                       </div>
                    </fieldset>
                 </form>
              </div>
           </div>
        </div>
     </div>
<!--==============================[[패키지 이름과 가격 설정 끝]]============================================================================  -->
     </div>
        <div id="proBut" class="button_area">
           <button class="btn gray">목록</button>
           <button type="button" class="btn blue">저장</button>
        </div>
     </div>
<!--===================================[[[전체]]================================================  -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
  </div>
</div>
</body>
</html>