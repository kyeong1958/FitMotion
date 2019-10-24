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
	function prodetail(ticket_num){
	//	alert("상세눌림"+ticket_num);
		 $.ajax({
				method:"get"
				,url:"/program/taDTL.fm?ticket_num="+ticket_num
				,success:function(data){
					$("#ticketmain").html(data);
				}
			}); 
		}


</script>


<%
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
                  <p>
                     <span class="purple c_purple">
							<%=rMap.get("PROM_NAME")%>
                        <em class="fr">
                        	<%=rMap.get("PROM_PERIOD_OF_TIME") %>
                        </em>
                     </span>
                     <i><%=rMap.get("PROM_NAME")%></i>
                  </p>
               </div>
               <div class="service_detail text-border /*purple c_purple*/" style="margin: 0 -1px; width: calc(100% + 2px); border-top: none !important;">
                  <div class="service_price">
                     <p><%=rMap.get("PROM_DIS_PRICE")%></p>
                     <p style="display: block;">
                        <a  class="btn green" onclick="prodetail('<%=rMap.get("PROM_NUM") %>')">상세</a>
                        <a  class="btn blue">결제하기</a>
                     </p>
                  </div>
               </div>
            </li>
<%
	}
%> 
          </ul>
	