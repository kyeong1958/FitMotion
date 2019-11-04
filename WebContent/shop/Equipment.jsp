<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD

<%@ include file="/NewCSS/Equipment.css"%>

<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
    padding-right: 0px;
    padding-left: 0px;
}

</style>
</head>
<script type="text/javascript">

$(function () {
    $(".tab_area #tabul li button").click(function () {
        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
         $(this).addClass("active").css("color", "#22B2FB",
        								 "border-bottom","1px solid #fff");
    });
})

	function eqINS(){
	    alert("클릭?");
	    var formData = $("#eq_insert").serialize();
	    //alert("등록버튼 눌림?");
	     $.ajax({
	       method:"POST"
	       ,data:formData
	       ,url:"/shop/eqINS.fm"
	       ,success:function(data){
	          alert("성공");
	          $("#EqCard").html(data);
	       }
	    }); 
	}
	 function eqDel(){
	      alert("삭제버튼눌림");
	      var se_num = null;
	      se_num = $("#eq_checkbox").val();
	      alert(se_num);
	           $.ajax({
	            method:"POST"
	            ,url:"/shop/eqDEL.fm?se_num="+se_num
	            ,success:function(data){
	               $("#EqCard").html(data);
	            }
	         });  
	       } 
	  /* function eqDel(){
	      var se_num = null;
	      var size = $("#eq_checkbox").filter('checked').size();
	      alert(size);
	     if($("#eq_checkbox").attr("checked")){
	    	  alert("if")
			se_num = $("#eq_checkbox").val();	    	 
		      alert(se_num);
	     }
	      alert("삭제버튼눌림");
	           $.ajax({
	            method:"POST"
	            ,url:"/shop/eqDEL.fm?se_num="+se_num
	            ,success:function(data){
	               $("#EqCard").html(data);
	            }
	         });  
	       }  */
	       function clickeq(se_operating_mode){
	    		 alert(se_operating_mode);
	    		 var formData = $("#eq_insert").serialize();
	    			//alert("등록버튼 눌림?");
	    			 $.ajax({
	    				method:"POST"
	    				,data:formData
	    				,url:"/shop/eqdetSEL.fm?se_operating_mode="+se_operating_mode
	    				,success:function(data){
	    			//		alert("성공");
	    					$("#EqCard").html(data);
	    				}
	    			}); 
	    	 }
	    	 
	    	 
	    	 
	    	 
	    		
	    		function allgoods(){
	    			alert("눌림ㅅ그?");
	    			 $.ajax({
	    					method:"POST"
	    					,url:"/shop/eqSEL.fm"
	    					,success:function(data){
	    						//alert("성공");
	    						$("#EqCard").html(data);
	    					}
	    				});  

	    		}
	    	 
	      
</script>
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a href="#" id="management">기구 관리</a>
    </div>
       <div class="homefr" style="padding-right:10px;">
              <a class="btn dark" id="MIns-B" data-toggle="modal" data-target="#eq_modal">기구등록</a>
       </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--========================================[[메뉴바시작]]==================================  -->      
      <div class="tab_area tab_add">
    <div class="section" id="sec">
        <div class="Menufl">
         <ul id="tabul">
            <li>
               <button type="button" class=" tabBtn" onclick="allgoods()">전체
                  <span>10</span>
               </button>
            </li>
            <li>
               <button type="button" class=" tabBtn" id="available" value="사용가능" onclick="clickeq($('#available').val())">사용가능
                  <span>6</span>
               </button>
            </li>
            <li>
               <button type="button" class=" active tabBtn" id="unavailable" value="사용불가" onclick="clickeq($('#unavailable').val())">사용불가            
                  <span>6</span>
               </button>
            </li>
            
            
            
         </ul>
        </div>
   </div>
</div>


<!--========================================[[메뉴바끝]]==================================  -->   

<!--==================================[[검색 조회 부분 시작 ]]====================================================  -->
         
         <div class="section" style="padding: 35px 66px">
         
         <div class="search_bar search_add">
        <fieldset id="S_fieldset">
            <legend>검색</legend>
            <form id="frmMemberSearch">
                <p>
               
                  <select  class="selectBox" >
                   
                        <option value="recentReg">최근 등록 순</option>
                        <option value="name">이름 순(가나다)</option>
            
                    </select> 
              
              
                 
                    <select  class="selectBox" >
                        <option value="">작동여부</option>
                        
                            <option value="19906">고장</option>
                        
                            <option value="17025">작동</option>
                        
               
                  
                    </select>
                    <select  class="selectBox" >
                        <option value="">수리횟수</option>
       
                        
                            <option value="1157">1회</option>
                        
                            <option value="737">5회이하</option>
                        
                            <option value="1156">10회이하</option>
                        
                            <option value="1232">10회이상</option>
 
                    </select>
                    
                    
                 
                    <select class="selectBox" >
                        <option value="">등록한 직원</option>
                        
                            <option value="5849">강민호 강사</option>
                        
                            <option value="4435">기본 관리자</option>
                        
                            <option value="6592">김경순 강사 (테스트)</option>
                        
                            <option value="6866">리커버리 강사 (테스트)</option>
                        
                            <option value="5886">박하은</option>
                        
                            <option value="6413">서민혜 매니저 (독핏)</option>
                    
                        
                       </select> 
                     </p>
                  </form>
         
         
      
        </fieldset>
    </div>
    
    
 <!-- ===========================================[[버튼 부분  여기서 부터 카드 부분 붙히기]]===============================================================  -->
   
   <!--=========================================[[버튼 부붙 시작 ]]======================  -->
   <div class="select_option" id="selectoption">
        
     
        
        <div class="B_fr">
            <input type="checkbox" id="fr_checkAll" />
            <label class="all">전체 선택</label>   
               <a  class="btn red small" onClick="eqDel()">기구 삭제</a>
         
            <!-- 2017-12-22 ktpark -->
            <!-- <a href="#" class="btn purple small" id="btnAddMemberCall">연락 예정회원으로 추가</a>
           <a href="#" class="btn green small" id="btnMemberDown">회원 데이터 다운로드</a> -->
        </div>
    </div>
   <!--=========================================[[버튼 부붙 끝 ]]======================  -->   
 <!--===================================[[ 등록된 카드 시작 ]]=========================================== -->
	<div id="EqCard">
		 <!-- 기구관리  Ajax태운곳 -- EqCard.jsp -->
	</div>	
=======
<link rel="stylesheet" type="text/css" href="../NewCSS/Equipment.css">

<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
    padding-right: 0px;
    padding-left: 0px;
}

</style>
</head>
<script>
	$(document).ready(function(){
		  $.ajax({
              method:"POST"
              ,url:"/shop/eqSEL.fm"
              ,success:function(data){
                 //alert("성공");
                 $("#EqCard").html(data);
              }
           }); 

	});
</script>
<script type="text/javascript">

$(function () {
    $(".tab_area #tabul li button").click(function () {
        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
         $(this).addClass("active").css("color", "#22B2FB",
                                 "border-bottom","1px solid #fff");
    });
})

   function eqINS(){
       var formData = $("#eq_insert").serialize();
       //alert("등록버튼 눌림?");
        $.ajax({
          method:"POST"
          ,data:formData
          ,url:"/shop/eqINS.fm"
          ,success:function(data){
             $("#EqCard").html(data);
          }
       }); 
   }
    function eqDel(){
         var se_num = null;
         se_num = $("#eq_checkbox").val();
              $.ajax({
               method:"POST"
               ,url:"/shop/eqDEL.fm?se_num="+se_num
               ,success:function(data){
                  $("#EqCard").html(data);
               }
            });  
          } 
     /* function eqDel(){
         var se_num = null;
         var size = $("#eq_checkbox").filter('checked').size();
         alert(size);
        if($("#eq_checkbox").attr("checked")){
            alert("if")
         se_num = $("#eq_checkbox").val();           
            alert(se_num);
        }
         alert("삭제버튼눌림");
              $.ajax({
               method:"POST"
               ,url:"/shop/eqDEL.fm?se_num="+se_num
               ,success:function(data){
                  $("#EqCard").html(data);
               }
            });  
          }  */
          function clickeq(se_operating_mode){
              var formData = $("#eq_insert").serialize();
                //alert("등록버튼 눌림?");
                 $.ajax({
                   method:"POST"
                   ,data:formData
                   ,url:"/shop/eqdetSEL.fm?se_operating_mode="+se_operating_mode
                   ,success:function(data){
                //      alert("성공");
                      $("#EqCard").html(data);
                   }
                }); 
           }
             function allgoods(){
                 $.ajax({
                      method:"POST"
                      ,url:"/shop/eqSEL.fm"
                      ,success:function(data){
                         //alert("성공");
                         $("#EqCard").html(data);
                      }
                   });  

             }
           
         
</script>
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a href="#" id="management">기구 관리</a>
    </div>
       <div class="homefr" style="padding-right:10px;">
              <a class="btn dark" id="MIns-B" data-toggle="modal" data-target="#eq_modal">기구등록</a>
       </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--========================================[[메뉴바시작]]==================================  -->      
      <div class="tab_area tab_add">
    <div class="section" id="sec">
        <div class="Menufl">
         <ul id="tabul">
            <li>
               <button type="button" class=" tabBtn" onclick="allgoods()">전체
                  <span>10</span>
               </button>
            </li>
            <li>
               <button type="button" class=" tabBtn" id="available" value="사용가능" onclick="clickeq($('#available').val())">사용가능
                  <span>6</span>
               </button>
            </li>
            <li>
               <button type="button" class=" active tabBtn" id="unavailable" value="사용불가" onclick="clickeq($('#unavailable').val())">사용불가            
                  <span>6</span>
               </button>
            </li>
            
            
            
         </ul>
        </div>
   </div>
</div>


<!--========================================[[메뉴바끝]]==================================  -->   

<!--==================================[[검색 조회 부분 시작 ]]====================================================  -->
         
         <div class="section" style="padding: 35px 66px">
         
         <div class="search_bar search_add">
        <fieldset id="S_fieldset">
            <legend>검색</legend>
            <form id="frmMemberSearch">
                <p>
               
                  <select  class="selectBox" >
                   
                        <option value="recentReg">최근 등록 순</option>
                        <option value="name">이름 순(가나다)</option>
            
                    </select> 
              
              
                 
                    <select  class="selectBox" >
                        <option value="">작동여부</option>
                        
                            <option value="19906">고장</option>
                        
                            <option value="17025">작동</option>
                        
               
                  
                    </select>
                    <select  class="selectBox" >
                        <option value="">수리횟수</option>
       
                        
                            <option value="1157">1회</option>
                        
                            <option value="737">5회이하</option>
                        
                            <option value="1156">10회이하</option>
                        
                            <option value="1232">10회이상</option>
 
                    </select>
                    
                    
                 
                    <select class="selectBox" >
                        <option value="">등록한 직원</option>
                        
                            <option value="5849">강민호 강사</option>
                        
                            <option value="4435">기본 관리자</option>
                        
                            <option value="6592">김경순 강사 (테스트)</option>
                        
                            <option value="6866">리커버리 강사 (테스트)</option>
                        
                            <option value="5886">박하은</option>
                        
                            <option value="6413">서민혜 매니저 (독핏)</option>
                    
                        
                       </select> 
                     </p>
                  </form>
         
         
      
        </fieldset>
    </div>
    
    
 <!-- ===========================================[[버튼 부분  여기서 부터 카드 부분 붙히기]]===============================================================  -->
   
   <!--=========================================[[버튼 부붙 시작 ]]======================  -->
   <div class="select_option" id="selectoption">
        
     
        
        <div class="B_fr">
            <input type="checkbox" id="fr_checkAll" />
            <label class="all">전체 선택</label>   
               <a  class="btn red small" onClick="eqDel()">기구 삭제</a>
         
            <!-- 2017-12-22 ktpark -->
            <!-- <a href="#" class="btn purple small" id="btnAddMemberCall">연락 예정회원으로 추가</a>
           <a href="#" class="btn green small" id="btnMemberDown">회원 데이터 다운로드</a> -->
        </div>
    </div>
   <!--=========================================[[버튼 부붙 끝 ]]======================  -->   
 <!--===================================[[ 등록된 카드 시작 ]]=========================================== -->
   <div id="EqCard">
       <!-- 기구관리  Ajax태운곳 -- EqCard.jsp -->
   </div>   
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion




 <!--====================================[[ 등록된 카드 끝]]=============================  -->
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>

           
           
            <!-- The Modal -->
            <div class="modal" id="eq_modal">
              <div class="modal-dialog">
                <div class="modal-content" id="MI-content">
            
                  <!-- Modal Header -->
                  <div class="modal-header" id="MI-header">
                    <h2 class="modal-title" id="MI-title">기구 등록</h2>
                    
                  </div>
            
                  <!-- Modal body -->
                  <div class="modal-body" id="MI-body">
                         <fieldset>
                  
                     <form id="eq_insert">
                        <p>
                           <label for="name" style="margin-left: 12px;margin-right: 11%;">
                              <span style="color: #FF5722;">*</span>기구명
                           </label>
                           <input type="text" name="se_name" placeholder="이름 입력" style="margin-right: 25px;">
                        </p>
                         <p>
                           <label style="margin-left: 12px; margin-right: 16%">작동여부</label>
                           <input type="text" name="se_operating_mode" class="calendar hasDatepicker">
                        </p> 
                     <p class="birth">
                           <span class="label" style="margin-right: 91px;">구매일</span>
                           <input  type="text" name="se_buy_date" class="calendar hasDatepicker">
                        </p>
                     <p class="birth">
                           <span class="label" style="margin-right: 16%;">가격</span>
                           <input  type="text" name="se_buy_price" class="calendar hasDatepicker">
                        </p>
                     <p class="birth">
                           <span class="label" style="margin-right: 16%;">고장내역</span>
                           <input  type="text" name="se_repair_datail" class="calendar hasDatepicker">
                        </p>
                     <p class="birth">
                           <span class="label" style="margin-right: 16%;">수리횟수</span>
                           <input  type="text" name="se_repairs" class="calendar hasDatepicker">
                        </p>
                     </form>
                  </fieldset>
                  </div>
            
                  <!-- Modal footer -->
                  <div class="modal-footer" id="MI-footer">         
                        <div class="pop_btn" data-function-group="regist" style="display: block;">
                        <button data-dismiss="modal" type="button" class="btn blue" onclick="eqINS()">등록 </button>
                        <button data-dismiss="modal"  type="button" class="btn gray">닫기</button>
                     </div>
            
                  </div>
            
                </div>
              </div>
            </div>
         
</body>
</html>