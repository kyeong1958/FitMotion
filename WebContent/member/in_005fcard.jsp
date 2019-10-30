<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- 주노꺼랑 이관 완료 -->
   <style type="text/css">
body{
   padding:0%;
}

.container-fluid {
	padding:0%;

}
</style>
<script>



	  function memberdetail(mem_num){
				alert(mem_num);
		 		var formData = $("#MDetail").serialize();
				 $.ajax({
					method:"POST"
					,data:formData
					,url:"/member/bhDET.fm?mem_num="+mem_num
					,success:function(data){
						$("#memList").html(data);
							$.ajax({
								method:"POST"
								,url:"/member/PROBIL.fm?mem_num="+mem_num
								,success:function(data){
									$("#membil").html(data);
								 	$.ajax({
										method:"POST"
										,url:"/member/TickBIL.fm?mem_num="+mem_num
										,success:function(data){
											$("#membil").html(data);
								 	$.ajax({
										method:"POST"
										,url:"/member/memAttSEL.fm?mem_num="+mem_num
										,success:function(data){
											$("#MemberAttend").html(data);
											}
										}); 
									}
								}); 
							}
						}); 
					}
				}); 
		     }
		    
	
</script> 
	<form id="MDetail">
 <ul>
              <!-- Loop -->     
    <%
    	List<Map<String,Object>> bhSelList = (List<Map<String,Object>>)request.getAttribute("bhSelList");
    	int size=0;
    	if(bhSelList!=null){
    		size = bhSelList.size();
    	}
    %>          
    
    <%
    	for(int i=0; i<size; i++){
    		Map<String,Object> rMap = bhSelList.get(i);
    %>
              <li >
                  <div class="profile">
                      <p class="pic" id="pic">
                      <img src="../img/smile.png"></p>
                      <p class="name" id="name"><%=rMap.get("MEM_NAME") %></p>
                      <p><%=rMap.get("MEM_HP") %></p>
                      <p class="info" style="float: right;"><%=rMap.get("MEM_BIRTH") %>/<%=rMap.get("MEM_GENDER") %></p>
                  </div>
                  <div class="card_itm" id="card_itm">
                      <p class="unit">
								<label>최근 결제 상품</label>				
                              <span class="letter_crap wd_add">락카 12개월</span>
				               <i class="expired">만료일 : 2020-09-25</i>  
                      </p>
                  </div>
                  
                  <div class="function_btn" >
                      <input type="checkBox" id="check_mem_num" value="<%=rMap.get("MEM_NUM") %>" onclick="eqch('<%=rMap.get("MEM_NUM") %>')" name="check" >
                      		<label for="member_1">회원 선택</label>	  
						  <a  class="btn green small cart">상품판매</a>
					  
                      <a onclick="memberdetail('<%=rMap.get("MEM_NUM") %>')" class="btn blue small view" >상세보기</a>
                  </div>
              </li>
              <%
             	 }
              %>
              <!-- //Loop  -->
          </ul>
      </form>   