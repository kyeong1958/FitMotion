<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 직원관리상세 ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/staffInfo.css">
<style type="text/css">
body{
	padding:0%;
}
</style>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
			<div style="padding:0 0 5px">
				<label class="spend-box-left-column">직급</label>
				<span>
					<select class="spend-combobox">
						<option value="">매니저</option>
						<option value="">계약직</option>
					</select>
				</span>
			</div>
			<div style="padding:0 0 5px">
				<label class="spend-box-left-column">기본급 / 월</label>
				<span>
					<input type="text" class="spending-text" style="width:260px;">
				</span>
			</div>
			<div style="padding:0 0 5px">
				<label class="spend-box-left-column">개인 레슨 수당 설정</label>
				<span>
					<input type="text" class="spending-text" style="width:260px;">
				</span>
			</div>
			<div style="padding:0 0 5px">
				<label class="spend-box-left-column">그룹 수업 수당 설정</label>
				<span>
					<input type="text" class="spending-text" style="width:260px;">
				</span>
			</div>
	
	<!-- ================================= [[ 화면전환 ]] =================================================== -->


