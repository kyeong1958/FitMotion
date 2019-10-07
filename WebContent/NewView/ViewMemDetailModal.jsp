<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/ViewMemDetailModal.css">
<!-- 확인용 버튼 -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#CH-Modal">
  Open modal
</button>


<!--===========================[[ 기간및 회수수정 모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="CH-Modal">
  <div class="modal-dialog" >
    <div class="modal-content" id="CH-content">

      <!-- Modal Header -->
      <div class="modal-header" id="CH-header">
        <h2 class="modal-title" id="CH-title">기간 및 횟수 수정</h2>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="CH-body">
      		<form>
      		<div class="up">
	      		<em class="c_red" style="display:inline-block">
					이용권 별 이용기간과 전체 이용 가능한 횟수를 수정할 수 있습니다.<br>
					이용권 기간과 횟수를 수정 시 이에 대한 가격을 설정 후 결제가 가능합니다.<br>
					단 기존의 상품을 추가 구매하는 경우에서 상품판매에서 현재 이용중인 동일한 이용권을 연장할 수 있습니다.
				</em>
			</div >
      	
      		<div class="tickets">
						<table>
							<tbody>
								<tr>
									<th style="width:30%;text-align:left"></th>
									<th style="width:30%;text-align:left"></th>
								</tr>
								<!-- ticket list -->
								<tr>
									<td>
										<!-- 현재 이용권 -->
										<ul class="now" style="height:258px; margin-left: 12px; ">
											<li><h4>현재 이용권</h4></li>
											<li><span>기간</span><span class="c_gray beforeDate">2019-09-25 ~ 2020-02-02</span></li>
											<li data-grid="limitNumber"><span>전체횟수</span>
											<span class="c_green beforeLimitNumber">10회</span></li>
											<li data-grid="useNumber"><span>남은횟수</span>
											<span class="c_green beforeUseNumber">7회</span></li>
										</ul>
										<!-- // 현재 이용권 -->
										<div class="calculation">
											<span class="next"></span>
										</div>
									</td>
									<td>
										<!-- 변경 후 이용권 -->
										<ul class="after" style="margin-right: 16px;">
											<li><h4>변경 후 이용권</h4></li>
											<!-- 2017-09-15 수정 -->
											<li>
												<span>기간</span>
												<span style="margin-left:5px;">
													<span class="date_set">
														<input type="text" class="calendar hasDatepicker" style="text-align:left;" readonly="readonly">
														<span>-</span>
														<input type="text" class="calendar hasDatepicker" style="text-align:left;" readonly="readonly" >
													</span>
												</span>
												<span style="margin:3px 0 0 68px;display:inline-block;height:24px;">
													<input type="checkbox" class="New_ck02">
													<label for="dete">이용일수 유지</label>
												</span>
											</li>
											<!-- // 2017-09-15 수정 -->
											<li data-grid="limitNumber">
												<span>전체횟수</span>
												<span>
													<input  type="number" style="width:80px; border-radius: 5px;"><em>회</em>
												</span>
											</li>
											<li data-grid="useNumber">
												<span>남은횟수</span>
												<span>
													<input  type="number" style="width:80px; border-radius: 5px;"><em>회</em>
												</span>
											</li>
										</ul>
										<!-- //변경 후 이용권 -->
									</td>
								</tr>
							<!-- // ticket list -->
							</tbody>
						</table>
					</div>
      		</form>
		      
	 </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="CH-footer">
			<button  class="btn_New blue ml_20" >수정</button> 
	         <button  class="btn_New gray" data-dismiss="modal">취소</button>
      </div>

    </div>
  </div>
</div>


<!--=============================[[기간및 회수수정 모달 끝]]==================================  -->

