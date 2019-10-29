<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회원결제내역모달 ]] ======================================== -->
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryListModal.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/MemberSearch.css">




<style type="text/css">

body{
	padding:0%;
}
</style>

<script>
	function progive(){
		var formData = $("#f_give").serialize();
		 $.ajax({
			method:"POST"
			,data:formData
			,url:"/account/progive.fm"
			,success:function(data){
				$("#BHLgrid").html(data);
			}
		}); 
   	}


</script>
 
 
 
<!--===========================[[ 양도 모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="YD-Modal">
  <div class="modal-dialog" >
    <div class="modal-content" id="YD-content">

      <!-- Modal Header -->
      <div class="modal-header" id="YD-header">
        <h2 class="modal-title" id="YD-title">양도할 회원 검색</h2>
      </div>
		<form id="f_give">
		<input type="hidden" id="mticp_num" name="tcip_num">
      <!-- Modal body -->
      <div class="modal-body" id="YD-body">
      		 <div class="search">
                    <fieldset >
                        <p class="btn_plus">
                             <span>
                                <select  id="selectpro2" style="height: 39px;border-radius: 5px;">
                                </select>
                            </span>
                            <span>
                                <input  placeholder="이름 또는 휴대전화번호" type="text" id="sm_memname"  style="width: 272px;">
                                <input  placeholder="이름 또는 휴대전화번호" type="hidden" id="sm_mem_num" name="mem_num"  style="width: 272px;">
                            </span>
                        </p>
                        <button type="button" class="btn_cancle search_mem" style="margin-left:10px" data-toggle="modal" data-target="#search_member" >검색</button>
                    </fieldset>
                </div>
                
                <div class="pop_caution">
			                결제내역(회원권)에 포함된 모든 이용권을 다른 회원에게 양도 할 수 있습니다.
			                양수회원은 현재 남은 기간과 횟수가 동일하게 이용권이 생성 되며,
			                양도하는 회원은 더 이상 해당 이용권을 이용할 수 없습니다.
			                양도 내역은 바디코디 이용내역에서 확인 할 수 있습니다.
            </div>
                
		      
	 </div>

		</form>
      <!-- Modal footer -->
      <div class="modal-footer" id="YD-footer">
            <button type="button" class="btn red align_right" data-dismiss="modal" onclick="progive()" >양도</button>
			<button type="button" class="btn gray" data-dismiss="modal" >취소</button>
      </div>

    </div>
  </div>
</div>


<!--=============================[[양도 모달 끝]]==================================  -->
<!--==============================[[중지 모달 시작]]==================================  -->
		<!-- The Modal -->
		<div class="modal" id="ST-Modal">
		  <div class="modal-dialog" >
		    <div class="modal-content" id="ST-content">
		
		      <!-- Modal Header -->
		      <div class="modal-header" id="ST-header">
		        <h2 class="modal-title" id="ST-title">이용권 중지</h2>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body" id="ST-body">
				      		<fieldset>
									<p>
										<span class="label">중지기간</span>
										<span class="date_set">
											<input type="text" class="calendar hasDatepicker" style="text-align:left;" readonly="readonly">
														<span>-</span>
														<input type="text" class="calendar hasDatepicker" style="text-align:left;" readonly="readonly" >
										</span>
										<button class="btn blue" data-action="중지 추가">추가</button>
									</p>
					
									
							<p>
								<span class="c_red">이용권 중지시, 중지 기간내에 포함된 예약건은 모두 취소 처리됩니다.</span>
							</p>
							<p>
								<span class="label">중지 후 이용권 기간</span>
								</p><div class="stop_list">
									<ul>
								<li >
									<strong>락카</strong>
									<i>
										<label>변경전</label>
										<span>2019-09-26</span> ~
										<span>2019-10-26</span>
									</i>
									<i>
										<label>변경후</label>
										<span>2019-09-26</span> ~
										<span>2019-10-26</span>
									</i>
								</li>
							</ul>
								</div>
							<p></p>
				
									
						<div class="table_area mt_10" style="max-height: 210px; overflow-y: auto;">
							<table>
								<thead>
									<tr>
										<th>중지 일시</th>
										<th width="35%">상태</th>
									</tr>
								</thead>
								<tbody>
									
								</tbody>
							</table>
						</div>
				
				</fieldset>
						
				      
			 </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer" id="ST-footer">
		            <button type="button" class="btn green" >적용</button>
					<button type="button" class="btn gray" data-dismiss="modal" >취소</button>
		      </div>
		
		    </div>
		  </div>
		</div>
		
		
		
		

<!--=============================[[중지 모달 끝]]==================================  -->
	<!--===============================[[회원찾기 모달 창 ]]=======================================================  -->
													
													
	
	
	<script>
			function memberSearch(){
			//	alert("검색버튼 눌림?");
				var formData = $("#MemSearch").serialize();
			//	alert(formData);
				 $.ajax({
					method:"POST"
					,data:formData
					,url:"/member/BIMSEL.fm"
					,success:function(data){
						$("#memsearch").html(data);
						
						
					}
				}); 
				
				
			
			}
	
	</script>
<!--================================ [[ 회원검색 모달 시작 ]] ====================================== -->												
												
	<!--   The Modal -->												
	<div class="modal fade" id="search_member">												
		<div class="modal-dialog modal-sm-6">												
			<div class="modal-content">												
															
			<!-- Modal Header -->												
			<div class="modal-header">												
				<span class="modal-title">회원 검색</span>												
				<button type="button" class="close" data-dismiss="modal">&times;</button>												
			</div>												
															
			<!-- Modal body -->		
	
			<div class="modal-body" style="padding-left: 5%;height: 240px;">												
						<div style="padding:0 0 5px">									
							<label class="spend-box-right-column" style="text-align:center">회원명</label>								
							<span>								
								<input type="text" class="spending-text" id="d_memname" style="width:260px;">							
							</span>								
							<span>								
								<button type="button" id="memberSearch" onClick="memberSearch()" class="btn-schedule-memsearch" style="margin-left:10px;">검색</button>							
							</span>								
						</div>									
						<div class="search-mem-modal" id="memberSearchModalTable">	
							<form id="MemSearch">
							<div id="memsearch">
						<!-- 	<table id="tb_membersearch" class="table table-bordered  table-striped">
							  <thead class="thead-dark">
									<tr>						
										<th class="tableheader">회원명</th>					
										<th class="tableheader">생년월일</th>					
										<th class="tableheader">핸드폰번호</th>					
									</tr>	
							  </thead>   
							  <tbody id="imsi_change">
									
							  </tbody>
							</table>		 -->						
							</div>
							</form>								
						</div>									
			<!-- BODY -->												
				</div>		
		
														
			<!-- Modal footer -->												
				<div class="modal-footer">												
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>												
				</div>												
			</div>												
		</div>												
	</div>												
<!--  ================================ [[ 회원검색 모달 끝 ]] ====================================== -->												
												
												
												
	
