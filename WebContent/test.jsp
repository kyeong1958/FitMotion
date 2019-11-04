<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <script type="text/javascript">
        function delete_info(obj){
        	var target= obj.parentNode.getAttribute('testbox');
        	var field = document.getElementById(target);
        	document.getElementById('field').removeChild(field);
        }
        function add_info(x){
        	var pre_set = document.getElementById('pre_set');
        	var fieldid = pre_set.getAttribute('last-id');
        	pre_set.setAttribute('last-id',fieldid+1);
        	var div = document.createElement('div');
        	div.innerHTML = pre_sert.innerHTML;
        	div.id = 'field-data-'+fieldid;
        	var temp = div.getElementsByClassName('selection_content')[0];
        	temp.innerText = x;
        	var deleteBox = div.getElementsByClassName('delete_box')[0];
        	deleteBox.setAttribute('target',div.id);
        	document.getElementById('field').appendChild(div);
        }
</script>

<div id="pre_set" style="display:none;" last-id="0">
    <div style="margin:2px; height:80px; border:6px solid #2C3E50">
        <div class="selection_title">
          			 맛집
        </div>
         <div class="delete_box">
            <button onclick="delete_info(this)" style="font-size:70%">X</button>
        </div>
     <div class="selection_content">
      </div>
     </div>
 </div>

<div id="field" style="max-height:770px; overflow:auto;">
</div>

</body>
</html>