
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
<script type="text/javascript">
//데이트박스 
//datebox 날짜형식 YYYY-MM-DD로 설정
	$.fn.datebox.defaults.formatter = function(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate(); 
	return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
}
//datebox parser설정
	$.fn.datebox.defaults.parser = function(s){
    var t = Date.parse(s);
    if (!isNaN(t)){
       return new Date(t);
    } else {
       return new Date();
    }
}
//datebox 한글화
	$.fn.datebox.defaults.currentText = '오늘'
$.fn.datebox.defaults.closeText = '닫기'
$.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
$.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
</script>
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
/*     width:100px;
    height:50px; */
/*     padding:10px;
    margin:5px; */
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
	function createItem() {
	    $(createBox())
	    .appendTo(".drag")
	    .hover(
	        function() {
	            $(this).css('backgroundColor', '#f9f9f5');
	            $(this).find('.deleteBox').show();
	        },
	        function() {
	            $(this).css('background', 'none');
	            $(this).find('.deleteBox').hide();
	        }
	
	    )
	}
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
		    accept:'#d1,#d2,#d3,#d4',
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
 		$('#target2').droppable({
		    accept:'#d1,#d2,#d3,#d4',
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
		$('#target3').droppable({
		    accept:'#d1,#d2,#d3,#d4',
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
	function insert(){
		var tag = "<span id='d4' class='drag'>Drag 4</span>";
		$("#target").append(tag);
	}
	$(".drag").draggable();
</script>
</head>
<body>
	<div class="dragitem"><div style="width: 100%;height: 100%;background-color: pink">123</div></div>
	<div class="dragitem">Peach</div>
	<div class="dragitem">Orange</div>
	<span id="d1" class="drag">Drag 1</span>
    <span id="d2" class="drag">Drag 2</span>
    <span id="d3" class="drag">Drag 3</span>
	<!-- <div id="target" style="border:1px solid #ccc;width:300px;height:400px;float:left;margin:5px;">
        drop here!
    </div> -->
	<button onClick="insert()">추가하기</button>

<table style="width: 500px;height: 300px;" border="1px">
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
	</tr>

	<tr>
		<td style="width: 500px;height: 300px;">
			<div id="target" class="easyui-droppable targetarea"
					data-options="accept: '.dragitem',
                    onDrop: function(e,source){
                        $(this).html($(source).html());
                    }">
        	</div>
        
		</td>
		<td style="width: 500px;height: 300px;">
			<div colspan="2" id="target2" class="easyui-droppable targetarea"
				data-options="accept: '.dragitem',
	                  onDrop: function(e,source){
	                      $(this).html($(source).html());
	                  }">
            </div>
		</td>
		<td style="width: 500px;height: 300px;">
			<div id="target3" class="easyui-droppable targetarea"
						data-options="accept: '.dragitem',
	                    onDrop: function(e,source){
	                        $(this).html($(source).html());
	                    }">
	        </div>
		</td>
	</tr>
       


</table>
</body>
</html>