<link type="text/css" rel="stylesheet"
	href="/bootstrap/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet"
	href="/bootstrap/css/datepicker.css">
<link type="text/css" rel="stylesheet" href="/css/jquery-ui.min.css">

<link type="text/css" rel="stylesheet" href="/css/common.css">
<link type="text/css" rel="stylesheet" href="/css/layout.css">
<link type="text/css" rel="stylesheet"
	href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">

<script src="/jquery/jquery-1.11.3.min.js"></script>
<script src="/jquery/jquery.number.min.js"></script>
<script src="/jquery/jquery.cookie.js"></script>

<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/moment.js"></script>
<script src="/bootstrap/js/moment-with-locales.js"></script>
<script type="text/javascript"
	src="/resources/static/bower_components/moment/min/moment-with-locales.min.js"></script>

<!-- 협의에 의해 사용하기로 함 -->
<script src="/bootstrap/js/bootstrap-datetimepicker.min.js"></script>

<script src="/jquery/jquery-ui.js"></script>
<script src="/jquery/i18n/datepicker-ko.js"></script>

<script src="/bootstrap/js/validator.js"></script>
<script type="text/javascript" src="/js/ui.js"></script>

<script src="/socketio/socket.io.1.7.3.js"></script>
<script src="/jquery/jquery.blockUI.js"></script>
<script src="/js/dateFormatUtil.js" type="text/javascript"
	charset="utf-8"></script>
<script defer=""
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script src="/js/printer/printer_core.js" type="text/javascript"
	charset="utf-8"></script>
<script src="/js/barcode/barcode_core.js" type="text/javascript"
	charset="utf-8"></script>
<style>
/* =====================상단부============================== */
.bar_area {
	padding: 10px 20px;
    height: 54px;
    background-color: #FFF;
    box-shadow: 1px 1px 4px #BABBC2;
    position: relative;
    z-index: 1;
}
.fl {
    float: left;
}
.bar_area .fl a {
    display: inline-block;
    color: #9fa0aa;
    line-height: 32px;
    text-decoration: none;
    cursor: pointer;
    background-color: transparent;
}
.bar_area .fl a+a {
    margin-left: 10px;
    padding-left: 17px;
    background: url(../img/icon/location_arrow.png) no-repeat left 50%;
}
.bar_area .fl a:last-child {
    font-weight: 500;
    color: #42485A;
    cursor: default;
    text-decoration: none;
}
.bar_area .prev {
    display: inline-block;
    width: 30px;
    height: 30px;
    text-indent: -9999em;
    background: url(../img/icon/ico_back.png) no-repeat center 50%;
    position: absolute;
    left: 18px;
    top: 10px;
}
/* =====================상단부============================== */
/* =====================메인 부분============================== */
#proreg {
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}
#proreg_box {
    margin: 0 auto;
    max-width: 60%;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#proreg_box h3 {
	padding: 20px;
    color: #42485A;
    border-bottom: 1px solid #BABBC2;
    position: relative;
    font-weight: 500;
    margin: 0;
   	font-family: inherit;
    line-height: 1.1;
}
#proreg_box .cont_body {
    padding: 30px 20px;
}
#proreg_fs {
    max-width: 100%;
    border: 0;
    min-width: 0;
    padding: 0;
    margin: 0;
}
#pro_leg {
    display: none;
    width: 100%;
    padding: 0;
    margin-bottom: 20px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 1px solid #e5e5e5;
}
#proreg_p {
    line-height: 34px;
}
#pro_label0 {
    display: inline-block;
    color: #42485A;
    width: 150px !important;
   	font-weight: normal;
   	margin: 0;
    max-width: none;
}
#pro_label1 {
    display: inline-block;
    color: #42485A;
    width: 150px !important;
   	font-weight: normal;
   	margin: 0;
    max-width: none;
}
#pro_label2 {
	display: inline-block;
    color: #42485A;
    width: 150px !important;
    font-weight: normal; 
    margin: 0;
    max-width: none;
}
#pro_label3 {
	display: inline-block;
    color: #42485A;
    width: 150px !important;
    font-weight: normal;
    margin: 0;
    max-width: none;
}
#pro_label4 {
	display: inline-block;
    color: #42485A;
    width: 150px !important;
  
    font-weight: normal;
    margin: 0;
    max-width: none;
}
#appointmentName {
    padding-left: 10px;
     text-align: center;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 250px !important;
    outline: none;
}
#appointmentName:focus {
	border: 1px solid hotpink;
}
#classTime:focus {
	border: 1px solid hotpink;
}
#spacechoice:focus {
	border: 1px solid hotpink;
}
#descriptionbox:focus {
	border: 1px solid hotpink;
}
#ticketchoice:focus {
	border: 1px solid hotpink;
}
#classTime {
	padding-left: 10px;
	height: 34px;
   
    border: 1px solid #BABBC2;
    border-radius: 5px;
    outline: none;
    width: 250px !important;
    text-align: center;
}
#pro_p0{
    line-height: 34px;
}
#pro_p1{
    line-height: 34px;
}
#pro_p2{
    line-height: 34px;
}
#pro_p3{
    line-height: 34px;
}
#spacechoice {
	padding: 0 20px 0 10px;
    min-width: 30%;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    -webkit-appearance: none;
    border-radius: 5px;
    outline: none;
    background : url(/images/drop_down.png) no-repeat right 10px top 50% #FFF !important;
}
#ticketchoice {
	padding: 0 20px 0 10px;
    min-width: 30%;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    -webkit-appearance: none;
    border-radius: 5px;
    outline: none;
    background : url(/images/drop_down.png) no-repeat right 10px top 50% #FFF !important;
}
#descriptionbox {
    padding-left: 10px;
	height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    outline: none;
    width: 250px !important;
    text-align: center;
}
/* =====================메인 부분============================== */
/* =====================제일아래 버튼 부분============================== */
.button_areaend {
	margin: 20px 0 0;
    padding: 20px 0;
    text-align: center;
    clear: both;
}
.graycancel {
	white-space: nowrap;
    vertical-align: middle;
    background-color: #9fa0aa;
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    font-weight: 500;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
    touch-action: manipulation;
    user-select: none;
    background-image: none;
}
.blueadd {
    margin-left: 10px;
    background-color: #2196F3;
    white-space: nowrap;
    vertical-align: middle;
    display: inline-block;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    font-weight: 500;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
    touch-action: manipulation;
    user-select: none;
    background-image: none;
}
/* =====================제일아래 버튼 부분============================== */
</style>	