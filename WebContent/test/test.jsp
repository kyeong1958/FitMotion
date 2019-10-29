<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

/* 자바스크립트 부분  */
 
var deleteSeq = "";
var reportSeqArr = "";
var findStr = "";
var seq = "" ;
 
function fn_checked(obj,seq) {
     
    seq = "/" + seq + "/";  //컨트롤러에서 구분하기 위해  /3/ => 이런식으로 구분
     
    /* 전체 체크했을 때  */
    if(obj.id == "checkboxAll"){
         
        if (deleteSeq != null) {    //전체 체크하기 전에 개별 체크 했을 경우 삭제할 항목 우선 초기화
            deleteSeq = "";
        }
         
        var chkObj = document.getElementsByName("RowCheck");
        var rowCnt = chkObj.length - 1;
        var check = obj.checked;
         
        //전체 체크할 때
        if (check) {
             
            for (var i=0; i<=rowCnt; i++){
                if(chkObj[i].type == "checkbox")
                    chkObj[i].checked = true;   //전체 체크 선택
                    deleteSeq = deleteSeq + "/" + chkObj[i].value + "/";    //전체 삭제할 항목들
            }
         
        //전체 체크 해제할 때
        } else {
             
            for (var i=0; i<=rowCnt; i++) {
                if(chkObj[i].type == "checkbox")
                    chkObj[i].checked = false;  //전체 체크 해제
                    deleteSeq = "";             //삭제할 항목 취소
            }
        }
         
        reportSeqArr = deleteSeq;   //삭제할 항목 배열에 담기
    } 
     
    /* 개별 체크했을 때 */
    else {
         
        findStr = seq;
         
        //체크된 것들 중에서 다시 체크하면 선택한 항목 제거
        if (reportSeqArr.indexOf(findStr) != -1) {  
             
            deleteSeq = deleteSeq.replace(findStr , "");
             
            var isAllChecked = document.getElementById("checkboxAll");  //전체체크박스
             
            if (isAllChecked.checked) 
                //전체체크된거에서 개별 해제 했을때 전체체크박스 체크 해제 시킴
                isAllChecked.checked = false;       
             
        }
         
        //여러번 체크할 때
        else   
            deleteSeq = deleteSeq + seq;                                            
         
        reportSeqArr = deleteSeq;   //삭제할 항목 배열에 담기
    }
}
 
 
/* 삭제 처리*/
function fn_Delete() {
     
    //체크 안하고 그냥 삭제 버튼 눌렀을 때
    if( reportSeqArr == ""){
 
        alert("삭제할 항목을 체크해 주세요.");
        return ;
    } 
     
    //삭제 처리 아작스
    else {
        //컨트롤러 단에서 '//'를 두 개 씩 split 해주기 때문에 처음과 끝에 '/' 하나 씩 더 붙여줌
        document.getElementById("seq").value = "/" +reportSeqArr + "/"; 
         
        $.ajax({
             
            url : '삭제 처리할 url',
            type : "POST",
            datatype : 'json',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
            data:{
                useGuideSeq : $("#seq").val()
            },
            success : function(data) {
                 
                (성공 시)
            },
            error:function(request, status, error) {
 
                (실패 시)
 
            }
        })
    }
}
</script>
...
<input type="hidden" id="seq" name="useGuideSeq">
...
 

  <table>
    <caption>
    </caption>
    <colgroup>
    <col style="width:45px">
    <col style="width:auto">
    <col style="width:210px">
    </colgroup>
    <tr>
        <th scope="row">
            <div>
                <input type="checkbox" name="checkbox" id="checkboxAll" onclick="fn_checked(this,'1');">
                <label for="checkbox"></label>
            </div>
        </th>
        <th></th>
        <th></th>
    </tr>
<c:foreach var="List" items="${List}" varstatus="status">
    <tr>
        <td scope="row">
            <div>
                <input type="checkbox" name="RowCheck" id="checkbox${List.useGuideSeq}" value="${List.useGuideSeq}" onclick="fn_checked(this,${List.useGuideSeq});">
                <label for="checkbox2"></label>
            </div>
        </td>
        <td onclick="fn_detailView('${List.useGuideSeq}')">
            <a href="javascript:;">${List.useGuideNm}</a>
        </td>
        <td align="left" style="border-left: none; border-right: none;">${List.updDttm}</td>
    </tr>
    </c:foreach>
</table> 