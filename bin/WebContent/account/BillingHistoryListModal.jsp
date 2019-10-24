<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 회원결제내역모달 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/BillingHistoryListModal.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
<!-- 확인용 버튼 -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ST-Modal">
  Open modal
</button>

 -->
<!--===========================[[ 양도 모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="YD-Modal">
  <div class="modal-dialog" >
    <div class="modal-content" id="YD-content">

      <!-- Modal Header -->
      <div class="modal-header" id="YD-header">
        <h2 class="modal-title" id="YD-title">양도할 회원 검색</h2>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="YD-body">
      		 <div class="search">
                    <fieldset >
                        <p class="btn_plus">
                        	<label style="width: 120px;">회원검색</label>
                             <span>
                                <select  id="YD-search" style="width:100px;">
                                    <option value="">양도 담당자</option>
                                    
                                        <option value="5849">강민호 강사</option>
                                    
                                        <option value="4435">기본 관리자</option>
                                    
                                        <option value="6592">김경순 강사 (테스트)</option>
                                    
                                        <option value="6862">달라스짐 강사 (테스트)</option>
                                    
                                        <option value="6866">리커버리 강사 (테스트)</option>
                                    
                                        <option value="5886">박하은</option>
                                    
                                        <option value="6413">서민혜 매니저 (독핏)</option>
                                    
                                        <option value="6837">이서인 강사 (테스트)</option>
                                    
                                        <option value="6575">이석 강사 (테스트)</option>
                                    
                                        <option value="4444">이석훈</option>
                                    
                                        <option value="6593">이혜원 강사 (테스트)</option>
                                    
                                        <option value="6864">조이바디랩 강사 (테스트)</option>
                                    
                                        <option value="5919">추성훈</option>
                                    
                                        <option value="5421">테스트</option>
                                    
                                        <option value="4436">홍준선 강사</option>
                                    
                                </select>
                            </span>
                            <span>
                                <input  placeholder="이름 또는 휴대전화번호" type="text"  style="width:170px;">
                            </span>
                        </p>
                        <button type="button" class="btn dark block_btn" >검색</button>
                    </fieldset>
                </div>
                
                <div class="pop_caution">
			                결제내역(회원권)에 포함된 모든 이용권을 다른 회원에게 양도 할 수 있습니다.
			                양수회원은 현재 남은 기간과 횟수가 동일하게 이용권이 생성 되며,
			                양도하는 회원은 더 이상 해당 이용권을 이용할 수 없습니다.
			                양도 내역은 바디코디 이용내역에서 확인 할 수 있습니다.
            </div>
                
		      
	 </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="YD-footer">
            <button type="button" class="btn red align_right" >수수료 없이 양도</button>
			<button type="button" class="btn gray" data-dismiss="modal" >취소</button>
      </div>

    </div>
  </div>
</div>


<!--=============================[[양도 모달 끝]]==================================  -->
<!--=============================[[중지 모달 시작]]==================================  -->
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
