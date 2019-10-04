<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/SalesStatistics.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">
$(function () {

    $(".homenav .fr ul li a").click(function () {
        $(".homenav .fr ul li a").removeClass("active").css("color", "#333");
         $(this).addClass("active").css("color", "#fff",
        								 "background-color","#22B2FB");
        $(".search_bar .search_add").hide();
  

    });
});

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
					<li><a  class="n_04 active" >매출통계</a></li>
					<li><a  class="n_05" >회원통계</a></li>
					<li><a  class="n_01" >개인레슨 통계</a></li>
					<li><a class="n_03" >그룹수업 통계</a></li>
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
						<span class="select">
							<select>
								
							  		<option value="2016">2016 년</option>
								
							  		<option value="2017">2017 년</option>
								
							  		<option value="2018">2018 년</option>
								
							  		<option value="2019">2019 년</option>
								
							</select>
						</span>
	
						<span class="select">
							<select >
								
									<option value="1">1 월</option>
								
									<option value="2">2 월</option>
								
									<option value="3">3 월</option>
								
									<option value="4">4 월</option>
								
									<option value="5">5 월</option>
								
									<option value="6">6 월</option>
								
									<option value="7">7 월</option>
								
									<option value="8">8 월</option>
								
									<option value="9">9 월</option>
								
									<option value="10">10 월</option>
								
									<option value="11">11 월</option>
								
									<option value="12">12 월</option>
								
							</select>
						</span>
	
						<a class="prev" >이전 (월)</a>
						<a class="next" >다음 (월)</a>
					</div>
				</form>
			</div>
		</div>
	 
 
 
 <!--==========================[[날짜 부분 끝 ]]==========================================  -->     
 <!--==================================[[첫번째 그래프 박스 큰것 시작 ]]==========================  -->
 	<div class="chart_section" id="SS-section">
 		<div class="section">
 			<div class="chart_area">
 			
 			<!-- 회원 일반 현황  시작  -->
 					<div class="itm" style="width:100%">
          <h3>회원 일반 현황</h3>
          
          <!-- 그래프 넣을 자리  -->
          
          <!-- 여기안에게 넣어주세요 수근 씨  -->
          
          <!-- 그래프 넣을 자리  -->
        </div>
        
 			<!-- 회원 일반 현황  끝-->		
        <!-- 이용회원 연령비율 시작   -->
        
        
        
        
        <!-- 이용회원 연령비율 끝   -->
        <div class="itm">
          <h3>이용회원 연령비율</h3>
          <!-- 그래프 영역 -->
          
          
          
          
          
          <!-- // 그래프 영역 -->
        </div>
        
        
        <!-- 누적회원 연령비율 시작   -->
        <div class="itm">
          <h3>누적회원 연령비율</h3>
          <!-- 그래프 영역 -->
          
          
          
          
          
          <!-- // 그래프 영역 -->
        </div>
        
        <!-- 누적회원 연령비율 끝   -->
        
        
        <!--전체 감싸는 div  -->
 			</div>
 		</div>
 	</div>
 <!--==================================[[첫번째 그래프 박스 큰것 끝 ]]==========================  -->
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
