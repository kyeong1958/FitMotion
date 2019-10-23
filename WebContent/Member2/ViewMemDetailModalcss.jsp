<style>
/* 기간및 회수수정 모달 시작  */
#CH-header{
	background-color: #F5F6F7;

}

#CH-title{
	margin: 0 -20px;
    padding: 0 20px;
    color: #42485A;
}

#CH-body{
	padding: 20px 0;

}

#CH-body .up{
	margin-top: 10px;
    padding: 20px;
    line-height: 19px;
    background: #F5F6F7;
    margin-left: 14px;
    margin-right: 14px;

}

#CH-body .up .c_red {
    color: #FF5722 !important;
    font-style: normal;
}


#CH-body .tickets table {
    width: 100%;
    text-align: left;
    table-layout: fixed;
    border-collapse: collapse;
    background-color: transparent;
}

#CH-body .tickets>table>tbody>tr>th {
    padding: 0 0 27px 0;
    height: 18px;
    background: #ffffff;
    color: #000000;
    border: none !important;
}


#CH-body .tickets>table>tbody>tr>td {
    padding: 0 0 0 0;
    text-align: left;
    border: none !important;
    background: #ffffff;
    letter-spacing: -0.5px;
}

#CH-body .tickets>table>tbody>tr>td .now, 
#CH-body .tickets>table>tbody>tr>td .before, 
#CH-body .tickets>table>tbody>tr>td .after {
    color: #030303;
    text-align: left;
    height: 100%;
    display: inline-block;
    padding: 21px 20px;
    border: 1px solid #E3E3E3;
    border-radius: 5px;
    box-sizing: border-box;
    list-style: none;
}



#CH-body .tickets>table>tbody>tr>td .now>li, 
#CH-body .tickets>table>tbody>tr>td .after>li {
    margin: 0 0 12px 0;
    line-height: 32px;
}


#CH-body .tickets>table>tbody>tr>td h4 {
    color: #030303;
    margin: 0 0 12px 0;
}

#CH-body .tickets>table>tbody>tr>td .now>li>span:nth-child(1), 
#CH-body .tickets>table>tbody>tr>td .after>li>span:nth-child(1) {
    margin: 0 0 0 0;
    display: inline-block;
    width: 58px;
    font-size: 14px;
}

#CH-body .tickets>table>tbody>tr>td .now>li>span, 
#CH-body .tickets>table>tbody>tr>td .after>li>span {
    margin: 0 0 0 10px;
}

#CH-body .c_gray {
    color: #9fa0aa !important;
}

#CH-body .c_green {
    color: #43a047 !important;
}



#CH-body .calculation {
    position: relative;
    display: inline-block;
    width: 20px;
    height: 100%;
    margin: 0 0 0 20px;
    border-left: 1px solid #E3E3E3;
    margin-top: 3px;
}


#CH-body .calculation .next {
    position: absolute;
    top: 50%;
    display: inline-block;
    width: 20px;
    height: 20px;
    background: url(../img/smile.png) no-repeat center top;
}


#CH-body input[type="text"].calendar {
    width: 110px !important;
    color: #000000!important;
    background: #ffffff url(../img/smile.png) no-repeat 95% 50%;
	padding-left: 10px;
    width: 100%;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;

}


#CH-body .New_ck02[type="checkbox"]+label {
    height: 24px;
    line-height: 24px;
    font-size: 16px;
    color: #000000;
}

#CH-body .New_ck02[type="checkbox"]+label:before {
    background: url(../img/form/New_checkbox.png) no-repeat left top;
}
#CH-body input[type="checkbox"]+label:before {
    content: "";
    margin: auto 0;
    width: 20px;
    height: 20px;
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
}

#CH-content{
    width: 730px !important;
    max-height: 724px;
}

#CH-footer{
	text-align: center;

}
.button_area_New {
    margin-bottom: 20px;
    text-align: center;
    clear: both;
}


.btn_New {
    display: inline-block;
    margin: 0;
    padding: 0 40px;
    height: 50px;
    color: #FFF;
    text-align: center;
    line-height: 50px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}


.btn_New.blue {
    background-color: #2196F3;
}

.btn_New.gray {
    background-color: #6E6E6E;
}
/* 기간및 회수수정 모달 시작 끝  */
</style>