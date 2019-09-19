<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<style type="text/css">
.dragitem{
    border:1px solid #ccc;
    width:50px;
    height:50px;
    margin-bottom:10px;
} 
.targetarea{
    border:1px solid red;
    height:100%;
    width: 100%;
}
  
.proxy{
         border:1px solid #ccc;
         width:80px;
         background:#fafafa;
 }
.drag{
    width:100px;
    height:50px;
    padding:10px;
    margin:5px;
    border:1px solid #ccc;
    background:#AACCFF;
}
.dp{
    opacity:0.5;
    filter:alpha(opacity=50);
}
.over{
    background:#FBEC88;
}
</style>
<script>
	  $(function(){
           $('.dragitem').draggable({
               revert:true,
               deltaX:10,
               deltaY:10,
               proxy:function(source){
                   var n = $('<div class="proxy"></div>');
                   n.html($(source).html()).appendTo('body');
                   return n;
               }
           });
       });

	$(function(){
			$('.drag').draggable({
			    proxy:'clone',
			    revert:true,
			    cursor:'auto',
			    onStartDrag:function(){
			        $(this).draggable('options').cursor='not-allowed';
			        $(this).draggable('proxy').addClass('dp');
			    },
			    onStopDrag:function(){
			        $(this).draggable('options').cursor='auto';
			    }
			});
		$('#target').droppable({
		    accept:'#d1,#d3',
		    onDragEnter:function(e,source){
		        $(source).draggable('options').cursor='auto';
		        $(source).draggable('proxy').css('border','1px solid red');
		        $(this).addClass('over');
		    },
		    onDragLeave:function(e,source){
		        $(source).draggable('options').cursor='not-allowed';
		        $(source).draggable('proxy').css('border','1px solid #ccc');
		        $(this).removeClass('over');
		    },
		    onDrop:function(e,source){
		        $(this).append(source)
		        $(this).removeClass('over');
		    }
		});
	});

</script>
</head>
<body>
	<div class="dragitem"><div style="width: 100%;height: 100%;background-color: pink">123</div></div>
	<div class="dragitem">Peach</div>
	<div class="dragitem">Orange</div>
	<div id="d1" class="drag">Drag 1</div>
    <div id="d2" class="drag">Drag 2</div>
    <div id="d3" class="drag">Drag 3</div>
	<!-- <div id="target" style="border:1px solid #ccc;width:300px;height:400px;float:left;margin:5px;">
        drop here!
    </div> -->
	

<table style="width: 500px;height: 300px;" border="1px">
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
	</tr>
	<tr>
		<div id="target" class="easyui-droppable targetarea2"data-options="
						                    accept: '.dragitem',
						                    onDragEnter:function(e,source){
						                        $(this).html('enter');
						                    },
						                    onDragLeave: function(e,source){
						                        $(this).html('leave');
						                    },
						                    onDrop: function(e,source){
						                        $(this).html($(source).html());
						                    }">
		<td style="width: 500px;height: 300px;">1
			<div id="target" class="easyui-droppable targetarea"data-options="
                    accept: '.dragitem',
                    onDragEnter:function(e,source){
                        $(this).html('enter');
                    },
                    onDragLeave: function(e,source){
                        $(this).html('leave');
                    },
                    onDrop: function(e,source){
                        $(this).html($(source).html());
                    }">
        </div>
        
		</td>
		<td style="width: 500px;height: 300px;">
		</td>
		</div>
		<td style="width: 500px;height: 300px;"></td>
	</tr>


</table>
</body>
</html>