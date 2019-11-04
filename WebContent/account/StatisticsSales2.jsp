<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/NewCSS/StatisticscssSales.jsp"%> 
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script>
var $j = jQuery.noConflict();
</script> -->

<!-- <script>
    $.ssupagination = $.pagination;
    delete $.pagination;
</script> -->
<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->

<div id="mainboard2">

<form id="form">
<%
   String year = "";
   String month ="";
   if(year == ""){
      year = "2019";
      month = "10";
   }
   if(request.getAttribute("year") != null){   
      year = (String)request.getAttribute("year");
         month = (String)request.getAttribute("month");
   }
%>

<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->
<c:set var="alls" value="${requestScope.allsales}" />
<c:set var="year" value="<%=year %>" />
<c:set var="month" value="<%=month %>" />
<!-- ================================= [[ 화면전환 ]] =================================================== -->
 <script type="text/javascript">
 
  $(document).ready(function() {
      $.ajax({
         method : 'get',
         url : '/account/allsales.fm?date='+'201911',
         success : function(data) {
            $("#mainboard2").html(data);
         }
      });
   }); 

//콤보박스 년도 받아올 변수
var kyear;
//콤보박스 월 받아올 변수
var kmonth;
//다음버튼눌렀을 때
function nextmonth(){
   
   kyear = ${year};
   kmonth = ${month};
   var kkmonth = parseInt(kmonth);
   if(kkmonth<11){
      kkmonth += 1;
   }else{
      kyear =  parseInt(kyear);
      kyear += 1;
      kkmonth = 0;
   }
   var date = kyear +""+ kkmonth
   var formData = $("#form").serialize();
   $.ajax({
       method:'get'
        ,data:formData
       ,url:'/account/allsales.fm?date='+date
       ,success:function(data){
          $("#mainboard2").html(data);
       }
    });
}

//이전버튼눌렀을때
function premonth(){
   kyear = ${year};
   
   kmonth = ${month};
   var kkmonth = parseInt(kmonth);
   var kkyear = parseInt(kyear);
   if(kkmonth>2){
      kkmonth -= 1;
   }else{
      kkyear -= 1;
      kkmonth = 12;
   }
   var date = "";
   if(kkmonth < 10){
      date = kkyear +"0"+ kkmonth      
   }else
      date = kkyear +""+ kkmonth   
   $.ajax({
       method:'get'
       ,url:'/account/allsales.fm?date='+date
       ,success:function(data){
          $("#mainboard2").html(data);
       }
    });
}

function ajax(url) {

   $.ajax({
      method : 'get',
      url : url,
      success : function(data) {
         $("#mainboard2").html(data);
      }
   });
}
</script>

<!--=========================[[ 홈바 시작 ]]=============================================== -->
<div class="bar_area" id="SS-bar">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a  id="management">리포트와 통계</a>
        <a >매출 통계</a>
    </div>      
    <!-- 메뉴바 누르는 부분 시작  -->
      <div class="homenav fr">
         <div class="homenav fr">
            <ul>
               <li><a class="n_04 active" href="javascript:ajax('../account/StatisticsSales2.jsp')">매출통계</a></li>
               <li><a class="n_05" href="javascript:ajax('../account/StatisticsMember2.jsp')">회원통계</a></li>      
               <li><a class="n_01" href="javascript:ajax('../account/StatisticsPrivateProg2.jsp')">개인레슨 통계</a></li>
               <li><a class="n_03" href="javascript:ajax('../account/StatisticsPublicProg2.jsp')">그룹수업 통계</a></li>
            </ul>
         </div>
      </div>
    <!-- 메뉴바 누르는 부분 끝 -->
</div>

    
<!--========================== [[홈바 끝 ]] ============================================= -->

 <!--==========================[[날짜 부분 시작 ]]==========================================  -->     
       <div class="con_top" id="SS-top">
         <div class="section">
            <form>
                <div class="date_set">      
                  
                  <span id="kyear"> ${year} </span>
                  <span> / </span>
                  <span id="kmonth"> ${month} </span>
                  
                   
                  <a class="prev" href="javascript:premonth()" >
                  이전 (월)
                  </a>
                  <a class="next" href="javascript:nextmonth()">
                  다음 (월)
                  </a>
               </div> 
            </form>
         </div>
      </div>
  <!--==========================[[날짜 부분 끝 ]]==========================================  -->     
     </form>
         </div>
      