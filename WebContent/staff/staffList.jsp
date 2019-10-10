<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- ============================ [[ 강사목록 ]] ======================================== -->

<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Owner.css">
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
			   $("#staffList").html(data);
		   }
		});
	}
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
    <!--===============================[[스크립트 ]]===========================================  -->
    
      <script type="text/javascript">
      $(document).ready(function(){
    		
    		$('ul.tabs li').click(function(){
    			var tab_id = $(this).attr('data-tab');

    			$('ul.tabs li').removeClass('current');
    			$('.tab-content').removeClass('current');

    			$(this).addClass('current');
    			$("#"+tab_id).addClass('current');
    		})

    	})
      </script>
<div id="staffList">
      <!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
   		<a class="bar_menu" href="#">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">직원관리</a>

		 <div class="homefr" style="padding-right:10px;">
		  	<a href="#" class="btn dark" id="MIns-B" data-toggle="modal" data-target="#MIns">임직원등록</a>
		 </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--========================== [[메뉴부분 시작]]============================  --> 
<div class="section" id="content-area">
	<div style="display:flex;">

		<div style="flex:0 0 auto; min-width:25rem;">

			<div class="tab_area" style="background-color:transparent;">
				<ul >
					<li>
						<button type="button" class="tabBtn active" data-target="position">직급</button>
					</li>
					<li>
						<button type="button" class="tabBtn" data-target="team">빼도됨</button>
					</li>
				</ul>
			</div>




			<ul class="bb" data-category="position" style="">
			<li data-seq="956" draggable="true">
		<button type="button" class="btn btn-block gray">
			<span class="btn-label">565</span>
		</button>
	</li>
	
	<li data-seq="954" draggable="true">
		<button type="button" class="btn btn-block gray">
			<span class="btn-label">FC</span>
		</button>
		
		
	</li>
	
	</ul>

	<!-- =============================[[추가하기 부분 시작  ]]========================================== -->

			 <div data-category="position" style="">
				<div style="margin-top:1rem;">
					<button type="button" id="buttonadd"class="btn btn-block blue" data-toggle="modal" data-target="#OI-modal">
						<li  id="addspan">+</li>
						<span >추가하기</span>
					</button>
				</div>
			</div> 
	</div>
	<!-- =============================[[추가하기 부분  끝]]========================================== -->

			
<!--========================[[검색부분 시작]]==================================  -->


	 <div style="flex: 1 1 auto; margin-left:2rem;">

			<fieldset>
				<legend id="legend">검색</legend>
				<span class="search_box">
					<form name="searchFrm">
						<input type="text" name="keyword">
						<button type="button" class="search">검색</button>
					</form>
				</span>
			</fieldset> 
<!--=========================[[임직원 목록 시작]]================================  -->
		 
		 <div style="margin-top:2rem;">
		 
				<div class="grid_list">
					<ul> 
								<%
									for(int i=0; i<20; i++){
		
								%>	 			
					
						<li>	
						<p class="pic">
							<img src="../images/smile.png">
						</p>				
							<div class="name_tag">
								<p>강사</p>
								<p>웅순쌤 (필라테스강사)</p>
							</div>
					
							<div class="function_btn">
								<a class="btn red small delete" >삭제하기</a>
								<a  class="btn blue small view" onClick="staffpage('../staff/staffManagementDetail.jsp')" >상세보기</a>
							</div>
						</li>	
				<%
						}
				%>
				</ul>
			
				</div>
			
			</div>
<!--=========================[[임직원 목록 끝]]================================  -->
		</div> 
<!--========================[[검색부분 끝]]==================================  -->
	</div>
</div>
<!--========================== [[메뉴부분 끝]]============================  -->   
<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>

<%@ include file="/staff/staffListModal.jsp"%>