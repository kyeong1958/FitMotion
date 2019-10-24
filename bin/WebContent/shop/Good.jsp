<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="/NewCSS/Goods.css"%>


<link rel="stylesheet" type="text/css" href="../NewCSS/GoodsModal.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">


<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
	padding:0%;

}
</style>

<script type="text/javascript">

		$(function () {
		    $(".tab_area #tabul li button").click(function () {
		        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
		         $(this).addClass("active").css("color", "#22B2FB",
		        								 "border-bottom","1px solid #fff");
		    });
		})


 function gdDel(){
		alert("삭제버튼눌림");
		var go_num = null;
		go_num = $("#checkbox_id").val();
		alert(go_num);
			  $.ajax({
				method:"POST"
				,url:"/shop/GoodDEL.fm?go_num="+go_num
				,success:function(data){
					$("#gdSel").html(data);
				}
			});  
		 }


 function gdIns(){
  		alert("클릭?");
  		var formData = $("#gd_insert").serialize();
 		//alert("등록버튼 눌림?");
 		 $.ajax({
 			method:"POST"
 			,data:formData
 			,url:"/shop/GoodINS.fm"
 			,success:function(data){
 				alert("성공");
 				$("#gdSel").html(data);
 			}
 		}); 
 }
 
 
 function gdUpd(go_num,purchase_date,go_name,go_type,purchase_price,go_stock){
	 
	 $("#mgo_num").val(go_num);
	 $("#mpurchase_date").val(purchase_date);
	 $("#mgo_name").val(go_name);
	 $("#mgo_type").val(go_type);
	 $("#mpurchase_price").val(purchase_price);
	 $("#mgo_stock").val(go_stock);
	 
 }
 
</script>






<!-- ================================= [[ 화면전환 ]] =================================================== -->



<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a href="#" id="management">기구 관리</a>
    </div>
       <div class="homefr" style="padding-right:10px;">
              <a class="btn dark" id="MIns-B"   data-toggle="modal" data-target="#gd_modal">비품등록</a>
       </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--========================================[[메뉴바시작]]==================================  -->      
      <div class="tab_area tab_add">
    <div class="section" id="sec">
        <div class="Menufl">
         <ul id="tabul">
            <li>
               <button type="button" class=" tabBtn" value="ALL" rel="0" href="#">전체
                  <span>10</span>
               </button>
            </li>
            <li>
               <button type="button" class=" tabBtn" value="nonPaymentMember"  rel="1" href="#">사무용품
                  <span>6</span>
               </button>
            </li>
            <li>
               <button type="button" class=" active tabBtn" value="AVAILABLE"  rel="2" href="#">헬스장용품          
                  <span>6</span>
               </button>
            </li>
            <li>
               <button type="button" class=" tabBtn" value="EXPIRED"  rel="0" href="#">소모품
                  <span>184</span></button>
            </li>
            
            
            
         </ul>
        </div>
   </div>
</div>


<!--========================================[[메뉴바끝]]==================================  -->   

<!--==================================[[검색 조회 부분 시작 ]]====================================================  -->
         
         <div class="section" style="padding: 35px 66px">
         
         
        <!--  <div class="search_bar search_add">
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
    
     -->
 <!-- ===========================================[[버튼 부분  여기서 부터 카드 부분 붙히기]]===============================================================  -->
   
   <!--=========================================[[버튼 부붙 시작 ]]======================  -->
   <div class="select_option" id="selectoption">
        
     
        
        <div class="B_fr">
            <input type="checkbox" id="checkall" >
            <label class="all">전체 선택</label>   
               <a  class="btn red small" onclick="gdDel()">비품 삭제</a>
        </div>
    </div>
   <!--=========================================[[버튼 부붙 끝 ]]======================  -->   
 <!--===================================[[ 등록된 카드 시작 ]]=========================================== -->

			<div id="gdSel">
	              <!-- 비품관리  Ajax태운곳 -- GoodAjax.jsp -->
			</div>


 <!--====================================[[ 등록된 카드 끝]]=============================  -->
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>


<!--=======================[[등록 모달창 ]]=============================================  -->



				<!-- The Modal -->
				<div class="modal" id="gd_modal">
				  <div class="modal-dialog">
				    <div class="modal-content" id="MI-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header" id="MI-header">
				        <h2 class="modal-title" id="MI-title">비품 등록</h2>
				        
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body" id="MI-body">
				       		<fieldset>
						
							<form id="gd_insert">
								<p>
									<label for="name" style="margin-left: 12px;margin-right: 11%;">
										<span style="color: #FF5722;">*</span>비품이름
									</label>
									<input type="text" name="go_name" id="mgo_name" placeholder="이름 입력" style="margin-right: 25px;">
								</p>
								 <p>
									<label style="margin-left: 12px; margin-right: 16%">종류</label>
									<input type="text" name="go_type" id="mgo_type" class="calendar hasDatepicker">
								</p> 
							<p class="birth">
									<span class="label" style="margin-right: 91px;">등록일</span>
									<input  type="text" name="purchase_date" id="mpurchase_date" class="calendar hasDatepicker">
								</p>
							<p class="birth">
									<span class="label" style="margin-right: 16%;">가격</span>
									<input  type="text" name="purchase_price" id="mpurchase_price" class="calendar hasDatepicker">
								</p>
							<p class="birth">
									<span class="label" style="margin-right: 16%;">재고</span>
									<input  type="text" name="go_stock" id="mgo_stock" class="calendar hasDatepicker">
								</p>
							</form>
						</fieldset>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer" id="MI-footer">	      
						      <div class="pop_btn" data-function-group="regist" style="display: block;">
								<button data-dismiss="modal" type="button" class="btn blue" onclick="gdIns()">등록 </button>
								<button data-dismiss="modal"  type="button" class="btn gray">닫기</button>
							</div>
				
				      </div>
				
				    </div>
				  </div>
				</div>
