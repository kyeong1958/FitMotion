<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- ============================ [[ 강사목록 ]] ======================================== -->
<!-- 주노랑 이관 완료  -->

<link rel="stylesheet" type="text/css" href="../NewCSS/Owner.css">



<style type="text/css">
body{
   padding:0%;
}

	#section .col-lg-4 .mem_card {
    width: 32%;
    margin-right: 16px;
}
</style>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
    <!--===============================[[스크립트 ]]===========================================  -->
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
            method:"POST"
              ,url:"/staff/SFSEL.fm"
              ,success:function(data){
                 $("#staff_card").html(data); 
                       $.ajax({
                          method:"POST"
                            ,url:"/staff/RankSEL.fm"
                            ,success:function(data){
                               //alert("성공");
                               $("#rankNameAdd").html(data);
                            }
                       }); 
              }//end of 전체조회 
        });
	});
</script>    
      <script type="text/javascript">
      function staffkeyword(){
    	  $.ajax({
       		  method:"POST"
				,url:"/staff/SFSEL.fm?keyword="+$("#keyword").val()
				,success:function(data){
					$("#staff_card").html(data);
     			}
       	  	});
	      }
       
  /* 임직원 등록   */    
       function staffInser(){
    	//  alert("눌림?");
    		var formData = $("#add_coach_form").serialize();
    	  $.ajax({
    		  method:"POST"
  				,data:formData
  				,url:"/staff/SFINS.fm"
  				,success:function(data){
  					$("#staff_card").html(data);
  				}
    	 	 });
         }
       /* 직급 등록  */
       function rakIns(){
    	   var formData = $("#F_rank").serialize();
    	  $.ajax({
    		  method:"POST"
  				,data:formData
  				,url:"/staff/RNNAMEINS.fm"
  				,success:function(data){
  					$("#rankNameAdd").html(data);
  				}
    	  });
       }
       
/* ======================================================2019-10-30 추가 ====================================================================== */
	/*  상세조회  */
	function staffdetele(staff_id){
    	   var formData = $("#f_sfdetail").serialize();
    	  $.ajax({
    		  method:"POST"
  				,data:formData
  				,url:"/staff/SFDTL.fm?staff_id="+staff_id
  				,success:function(data){
  					$("#staffList").html(data);
  					//오늘케줄- 프로그램
  				  $.ajax({
  		    		  method:"POST"
  		  				,url:"/staff/Todayschedule.fm?staff_id="+staff_id
  		  				,success:function(data){
  		  					$("#today").html(data);
  		  					//오늘스케줄 - 티켓
  		  				  $.ajax({
  		  		    		  method:"POST"
  		  		  				,url:"/staff/TodayTick.fm?staff_id="+staff_id
  		  		  				,success:function(data){
  		  		  					$("#today").html(data);
  		  					//그룹레슨--프로그램
	  		  				  $.ajax({
	  		  		    		  method:"POST"
	  		  		  				,url:"/staff/Groupclass.fm?staff_id="+staff_id
	  		  		  				,success:function(data){
	  		  		  					$("#group").html(data);
  		  						//그룸레슨 - 프로모션
		  		  				  $.ajax({
		  		  		    		  method:"POST"
		  		  		  				,url:"/staff/Groupproclass.fm?staff_id="+staff_id
		  		  		  				,success:function(data){
		  		  		  					$("#group").html(data);
  		  					//개인레슨 - 프로그램 
		  		  				  $.ajax({
		  		  		    		  method:"POST"
		  		  		  				,url:"/staff/soloclass.fm?staff_id="+staff_id
		  		  		  				,success:function(data){
		  		  		  					$("#solo").html(data);
  			  		  								}
  			  		    	 					 });
	  			  		  						}
	  			  		    	  			});
		  			  		  				}
		  			  		    	 	 });
		  			  		  			}
		  			  		    	  });
				  		  			}
				  		    	  });
					  			}
					    	  });
							}
	
	
	
	
	
		//직급 조건 검색 
		   function rankdet(rank_name){
		      alert("클릭클릭"+rank_name);
		       $.ajax({
		         method:"POST"
		         ,url:"/staff/rankdetSEL.fm?rank_name="+rank_name
		         ,success:function(data){
		            //alert("성공");
		            $("#staff_card").html(data);
		                      $.ajax({
		                         method:"POST"
		                           ,url:"/staff/RankSEL.fm"
		                           ,success:function(data){
		                              //alert("성공");
		                              $("#rankNameAdd").html(data);
		                           }
		                      }); 
					         }
					      });   
					   } 
/* ======================================================2019-10-30 추가 ====================================================================== */
      </script>
<div id="staffList">
      <!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
         <a class="bar_menu" href="#">홈</a>
      <img src="../images/location_arrow.png">
      <a class="bar_menu" href="#">직원관리</a>

       <div class="homefr" style="padding-right:10px;">
           <a href="#" class="btn dark" id="MIns-B" onclick="sfupd()" data-toggle="modal" data-target="#sfInsert">임직원등록</a>
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
            </ul>
         </div>
	<div id="rankNameAdd">
       
	</div>
   <!-- =============================[[추가하기 부분 시작  ]]========================================== -->

          <div data-category="position" style="">
            <div style="margin-top:1rem;">
               <button type="button" id="buttonadd"class="btn btn-block blue" data-toggle="modal" data-target="#OI-modal">
                  <li id="addspan">+</li>
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
                  <input type="text" name="keyword" id="keyword">
                  <button type="button"  class="search" onclick="staffkeyword()">검색</button>
               </form>
            </span>
         </fieldset> 
<!--=========================[[임직원 목록 시작]]================================  -->
       
       <div style="margin-top:2rem;">
       
            <div class="grid_list">
            	<div id="staff_card">
         123
            	</div>
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