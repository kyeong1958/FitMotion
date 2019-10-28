<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../common/JEasyUICommon.jsp"%>
 
<script  type="text/javascript">
	function eqDTL(se_code,se_name,se_operating_mode,se_buy_price,se_repair_count,se_repair_detail,se_buy_date){
		//alert("모달창열리나보기"+se_name+se_code);
		
		$("#myModal").modal();
		
		$("#mse_code").val(se_code);
		$("#mse_name").val(se_name);
		$("#mse_operating_mode").val(se_operating_mode);
		$("#mse_buy_price").val(se_buy_price);
		$("#mse_repair_count").val(se_repair_count);
		$("#mse_repair_detail").val(se_repair_detail);
		$("#mse_buy_date").val(se_buy_date);
		
	}
	
	function eqUpd(){	
		$('#myModal').modal("hide"); 
		var formData = $("#f_eqDtl").serialize();
		//alert("수정완료버튼");
		$.ajax({
			method:"POST"
			,data:formData
			,url:"/both/eqUPD.fm"
			,success:function(data){
				$("#eqbox").html(data);
			},
			error:function(e){
				console.log(e);
			}
		});
		
	}
	
	function eqCh(se_code){
//	alert("체크박스눌림 ");
		
	 $("#checkbox_id").val(se_code);
	 	/* var test = $('input:checkbox[id="checkbox_id"]').val(); */
//	alert(se_code);
	
	}
	
</script>



   <%																	
				List<Map<String,Object>> eqSelList = (List<Map<String,Object>>)request.getAttribute("eqSelList");
				int size=0;
				if(eqSelList!=null){
				size = eqSelList.size();
					}
				

				/* 등록한 날짜  */
				 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy년  MM월  dd일");
				 String today = formatter.format(new java.util.Date());
				
   
   
   
   %> 
   
		
							<%
							for(int i=0; i<size; i++){
									Map<String,Object> rMap = eqSelList.get(i);
							%>	
							
							
							
							
	
							<div class="row" id="meminfo" >
						<div class="row">
							<div class="row meminfo-top">
								<div class="col-sm-3 col-lg-3">
									<input type="checkbox"  onclick="eqCh('<%=rMap.get("SE_CODE")%>')" id="checkbox_id" name="check"/>
									
									<span><%=rMap.get("RNO") %></span>
									
	
								</div>
								<div class="col-sm-5 col-lg-5"></div>
								<div class="col-sm-4 col-lg-4">
									<div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">구매일</div>
									<div class="col-sm-7 col-lg-7" ><%=rMap.get("SE_BUY_DATE") %></div>
								</div>
							</div>
							<div class="row meminfo-second">
											<table class="meminfo-table" onclick="eqDTL('<%=rMap.get("SE_CODE") %>','<%=rMap.get("SE_NAME") %>','<%=rMap.get("SE_OPERATING_MODE") %>'
											,'<%=rMap.get("SE_BUY_PRICE") %>','<%=rMap.get("SE_REPAIR_COUNT") %>','<%=rMap.get("SE_REPAIR_DETAIL") %>'
											,'<%=rMap.get("SE_BUY_DATE") %>')">
									<tr>
										<td class="meminfo-table-header" style="width:15%">기구명</td>
										<td class="meminfo-table-header" style="width:10%">작동여부</td>
										<td class="meminfo-table-header" style="width:20%">가격</td>
										<td class="meminfo-table-header" style="width:10%">수리횟수</td>
										<td class="meminfo-table-header" style="width:25%">고장내역</td>
									</tr>

						
		
									<tr>
										<td class="meminfo-table-body"><%=rMap.get("SE_NAME") %></td>
										<td class="meminfo-table-body"> <%=rMap.get("SE_OPERATING_MODE") %> </td>
										<td class="meminfo-table-body"> <%=rMap.get("SE_BUY_PRICE") %> </td>
										<td class="meminfo-table-body">	<%=rMap.get("SE_REPAIR_COUNT") %> </td>
										<td class="meminfo-table-body"> <%=rMap.get("SE_REPAIR_DETAIL") %> </td>
									</tr>
						</table>
							</div>
						</div>
					</div>
								<%
							}
								%>
								
								
		
			
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
