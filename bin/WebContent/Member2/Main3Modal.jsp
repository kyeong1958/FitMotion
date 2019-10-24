<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<%@ include file="/Member2/Main3Modalcss.jsp"%>
 <!-- 확인용 버튼 -->
<!--  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#OI-modal">
  Open modal
</button>
 -->
<!--===========================[[ 직급명칭 등록 모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="OI-modal">
  <div class="modal-dialog" >
    <div class="modal-content" id="OI-content">

      <!-- Modal Header -->
      <div class="modal-header" id="OI-header">
        <h2 class="modal-title" id="OI-title">직급 추가하기</h2>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="OI-body">
      			<fieldset>
					<form>
						<p >
							<label  class="label" style="margin-right: 25px;">
								<span style="color: #FF5722; font-size: 20px;">*</span>직급 명칭
							</label>
							<input type="text" id="Savetitler" name="title"  style="width:48rem;">
						</p>
					</form>
				</fieldset>
		    
		      </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="OI-footer">
				<button  type="button" class="btn green" onclick="Save()">저장</button>
      	<button  type="button" class="btn gray" data-dismiss="modal">닫기</button>
      </div>

    </div>
  </div>
</div>


<!--=============================[[ 직급명칭 등로 모달 끝]]==================================  -->

		