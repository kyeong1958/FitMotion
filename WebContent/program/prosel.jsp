<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>
<!-- 주노랑 이관 완료  -->
<style>
body{
	padding:0%;
}
.container-fluid{
	padding: 0%;
}
legend {
    display: none;
}

</style>
<script>

	function prodelete(prom_num){
	//	alert("삭제하기 쫌따하기"+prom_num);
		 $.ajax({
				method:"get"
				,url:"/program/prodelete.fm?prom_num="+prom_num
				,success:function(data){
					$("#ticketmain").html(data);
					$.ajax({
						methid:'get'
						,url:"/program/proSEL.fm"
						,success:function(data){
							$("#tasel").html(data);
							$.ajax({
								method : "POST",
								url : "/program/prornk.fm",
								success : function(data) {
									$("#pro_rank").html(data);
								}
							});
						}
					});
				}
			}); 
		}
	
	function probuy(prom_num){
	//alert(prom_num);
		$("#fprom_num").val(prom_num);
		 $.ajax({
				method:"get"
				,url:"/program/probuyDTL.fm?prom_num="+prom_num
				,success:function(data){
					$("#ticketmain").html(data);
					 $.ajax({
  			    		  method:"POST"
  			  				,url:"/account/PROSEL2.fm"
  			  				,success:function(data){
  			  					//alert("성공");
  			  					$("#selectpro2").html(data);
  			  			}
	    	  		}); 
				}
		}); 
		
		
	}


</script>


<%
	DecimalFormat df = new DecimalFormat("###,###,###,###");
	List<Map<String,Object>> proList = 
		(List<Map<String,Object>>)request.getAttribute("proList");
	int size = 0;
	if(proList!=null){
		size = proList.size();
	
	}
%>

			 <ul>
<%
	for(int i=0;i<size;i++){
		Map<String,Object> rMap = proList.get(i); 
%> 
            <li class="text-border /*purple c_purple*/">
               <div class="service_itm">
                  <div>
	                     <div class="purple c_purple">
	                       	<%=rMap.get("PROM_START_DATE") %> <span>~</span> <%=rMap.get("PROM_END_DATE") %>
	                     </div>
	                     <i><b style="font-size:initial"><%=rMap.get("PROM_NAME")%></b></i>
	               </div>
              </div>
               <div class="service_detail text-border /*purple c_purple*/" style="margin: 0 -1px; width: calc(100% + 2px); border-top: none !important;">
                  <div class="service_price">
                      <p><%=df.format(Integer.parseInt(rMap.get("PROM_DIS_PRICE").toString())) %></p>
                     <p style="display: block;">
                        <a  class="btn green" onclick="prodelete('<%=rMap.get("PROM_NUM") %>')">삭제하기</a>
                        <a  class="btn blue" onclick="probuy('<%=rMap.get("PROM_NUM") %>')">결제하기</a>
                     </p>
                  </div>
               </div>
            </li>
<%
	}
%> 
          </ul>
	