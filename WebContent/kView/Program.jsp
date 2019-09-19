<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="/common/JEasyUICommon.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="../kcss/insert.css">
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<!-- ============================== [[ Program ]] ================================== -->
<script type="text/javascript">
	function programINS() {
	    $('#programInsert').modal('show');
	}
	function ajax(url){
		
		alert("ajax==> "+url);
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#changedisplay").html(data);
		   }
		});
	}
</script>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->			
<div style="margin-top:20px">
	<div class="row checknbtn" style="margin-bottom:20px">
				<div class="col-sm-3 col-lg-3 allcheck">
					<input type="checkbox"/><span>&nbsp;전체선택</span>
				</div>
				<div class="col-sm-6 col-lg-6">&nbsp;</div>
				<div class="col-sm-3 col-lg-3">
					<div  class="btn3" style="text-align: -webkit-right">
						<button type="button" class="btn"  data-toggle="modal" data-target="#programInsert">등록</button>
						<button type="button" class="btn">삭제</button>
					</div>
				</div>
			</div>

<%
	for(int i=0;i<5;i++){
%>
<div class="row" id="meminfo" >
						<div class="row">
							<div class="row meminfo-top">
								<div class="col-sm-3 col-lg-3">
									<input type="checkbox"/>
									<span>번호넣는곳</span>
								</div>
								<div class="col-sm-5 col-lg-5"></div>
								<div class="col-sm-4 col-lg-4">
									<div class="col-sm-5 col-lg-5" style="border-right:1px solid #dddae0;text-align: center">등록일</div>
									<div class="col-sm-7 col-lg-7">등록날짜 넣는 곳</div>
								</div>
							</div>
							<div class="row meminfo-second">
								<table class="meminfo-table">
									<tr>
										<td class="meminfo-table-header" style="width:15%">종목</td>
										<td class="meminfo-table-header" style="width:20%">프로그램명</td>
										<td class="meminfo-table-header" style="width:15%">강사명</td>
										<td class="meminfo-table-header" style="width:20%">가격</td>
										<td class="meminfo-table-header" style="width:10%">인원</td>
										<td class="meminfo-table-header" style="width:20%">기간/횟수</td>
									</tr>

									<tr>
										<td class="meminfo-table-body">헬스</td>
										<td class="meminfo-table-body">PT 10회</td>
										<td class="meminfo-table-body">가나다</td>
										<td class="meminfo-table-body">100,000</td>
										<td class="meminfo-table-body">1명</td>
										<td class="meminfo-table-body">0/10</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
<%
	}
%>
</div>
<!-- ///////////////////////////////////// [[ modal ]] /////////////////////////////////////// -->
 <div class="modal fade" id="programInsert" role="dialog">
    <div class="modal-dialog modal-sm-4">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="font-size:25px">프로그램등록 </h4>
        </div>
        <div class="modal-body">
        	<div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>프로그램명</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<input type="text" class="textinsert"/>
				</div>
        	</div>
        	<div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>종목</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<select class="easyui-combobox" style="width:280px">
	 	               <option value="">헬스</option>
	 	               <option value="">요가</option>
	 	               <option value="">필라테스</option>
	 	               <option value="">GX</option>
	 	               <option value="">스피닝</option>
	 	               <option value="">스쿼시</option>
					</select>
				</div>
        	</div>
        	<div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>강사명</span>
        		</div>
        		<div class="col-sm-9">
	        		<select class="easyui-combobox" style="width:280px">
	 	               <option value="">헬스</option>
	 	               <option value="">요가</option>
	 	               <option value="">필라테스</option>
	 	               <option value="">GX</option>
	 	               <option value="">스피닝</option>
	 	               <option value="">스쿼시</option>
					</select>
				</div>
        	</div>
        	<div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>가격</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<input type="text" class="textinsert"/>
				</div>
        	</div>
        	<div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>인원</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<input type="text" class="textinsert"/>
				</div>
        	</div><div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>기간</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<input type="text" class="textinsert"/>
				</div>
        	</div><div class="row r_modal">
        		<div class="col-sm-3 namespace">
        			<span>유효기간</span>
        		</div>
        		<div class="col-sm-9 line">
	        		<input type="text" class="textinsert"/>
				</div>
        	</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn" data-dismiss="modal">등록</button>
          <button type="button" class="btn" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>






<!-- ///////////////////////////////////// [[ modal ]] /////////////////////////////////////// -->




			
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->			
