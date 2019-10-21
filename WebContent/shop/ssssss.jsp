<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	Map<String,Object> UPDList = (Map<String,Object>)request.getAttribute("UPDList");
	List<Map<String,Object>> listup = (List<Map<String,Object>>)UPDList.get("key");
	 Map<String,Object> upMap = listup.iterator().next();
		
		int sizing=0;
		if(listup!=null && listup.size()>0){
			
		}
 <body>




onclick="sfUPD('<%=upMap.get("STAFF_ID") %>',
           '<%=upMap.get("STAFF_NAME") %>','<%=upMap.get("STAFF_HP") %>','<%=upMap.get("STAFF_GENDER") %>','<%=upMap.get("STAFF_INTRODUCE") %>'
           ,'<%=upMap.get("STAFF_BIRTH") %>','<%=upMap.get("PI_BASE_PAY") %>','<%=upMap.get("PI_JOIN_DAY") %>',
           '<%=upMap.get("RANK_NUM") %>','<%=upMap.get("PI_PRIVATE_PAY") %>','<%=upMap.get("PI_GROUP_PAY") %>')"

</body>
</html>