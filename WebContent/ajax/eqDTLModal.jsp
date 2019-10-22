<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		


%>
<script  type="text/javascript">
		function eqUpd(){
			var formData = $("#f_eqDtl").serialize();
			alert("수정완료버튼");
			location.href="/both/eqUPD.fm";
			/*
			$.ajax({
				method:"POST"
				,data:formData
				,url:"/both/eqUPD.fm"
				,success:function(data){
					//$('#myModal').modal("hide"); 
				    //$("#myModal").modal({backdrop: false});
					$("#eqbox").html(data);
					
				}
			});
		*/
		}

</script>


<style>
	.modal-body .form-group label{
		    font-size: 22px;
   		 	font-weight: 900;
    		margin-right: 69px;
    		margin-bottom: 12px;
			
	}
	
	.modal-body .form-group label input[type=text]{
    		border: none;
   			border-bottom: 1px solid purple;
			
	
	}
	   
	 .modal-body .form-group .operation .valid{
	     width: 75%;
   		 height: 38px;
   		 margin-bottom: 17px;
	 }  
	 
	.modal-body .form-group{
	
		   margin-left: 35px;
	}
	
	.modal-content {
		    width: 430px;
	}

</style>
    
    
    


	
	
	
	
							
			<!-- The Modal -->
			  <div class="modal fade" id="myModal">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title">수정</h4>
			          <button type="button" class="close" data-dismiss="modal">×</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			        	<form class="form-group" id="f_eqDtl">
			        		<input type="hidden" id="mse_code" name="se_code" >
									<div>
										<label>기구명 
										<input type="text" id="mse_name" name="se_name" value="">
										</label>
									</div>
									
									<div>
								        <label>작동여부</label>
								        	<span class="operation">
												<select class="valid" aria-invalid="false" id="mse_operating_mode" name="se_operating_mode" onchange="mode_Select()">
													<option value="operate" selected>작동</option>
													<option value="broken">고장</option>
												</select>
											</span>
								   	 </div>
								   	 
								    <div>
								       	 <label>가격
								       		 <input type="text" id="mse_buy_price" name="se_buy_price" value="" >
								   		 </label>
								    </div>
								    <div>
								     	<label>수리횟수
								        	<input type="text"  id="mse_repair_count" name="se_repair_count" value="">
								     	</label>
								    <div>
								        <label>고장내역
								        	<input type="text"  id="mse_repair_detail" name="se_repair_detail" value="">
								        </lable>
								    </div>
								    
								    <div>
								        <label>구매일
								        	<input type="text" id="mse_buy_date" name="se_buy_date" value="">
								        </label>
									</div>
								    
								    
						</form>
			        </div>
			        <!-- Modal footer -->
			        <div class="modal-footer">
			          <button type="button" class="btn btn-danger" onclick="eqUpd()" >수정완료</button>
			          <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
			        </div>
			        
			      </div>
			    </div>
			  </div>								









 