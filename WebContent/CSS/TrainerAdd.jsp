<style>
#trsection {
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}
#trfieldset {
    max-width: 100%;
    border: 0;
    min-width: 0;
    padding: 0;
    margin: 0;
}
#trhr {
	margin-top: 10px;
    margin-bottom: 10px;
    border: 0;
    border-top: 1px solid #eee;
    height: 0;
    box-sizing: content-box;
}
#trfieldset form>p+*, #trfieldset form>div+*, #trfieldset>p+*, #trfieldset>div+* {
    margin-top: 5px;
}
#trfieldset form>div, #trfieldset form>p, #trfieldset>div, #trfieldset>p {
	line-height: 34px;
}
#trfieldset form>div label:first-child, #trfieldset form>div *.label, #trfieldset form>p label:first-child, #trfieldset form>p *.label, #trfieldset>div label:first-child, #trfieldset>div *.label, #trfieldset>p label:first-child, #trfieldset>p *.label {
    display: inline-block;
    width: 120px;
    color: #42485A;
}
#trlabel1, #trlabel2, #trlabel3, #trlabel4, #trlabel5, #trlabel6, #trlabel7, #trlabel8, #trlabel9
,#trlabe10, #trlabel11, #trlabel12, #trlabel13, #trlabel14 {
    font-weight: normal;
    margin: 0;
    max-width: none;
}
#coachName {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#mobileNo {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#email {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#birthday {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#breakTime {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
/*==== 라디오버튼 넣어야하는 애들===  */
#sex-M {
    
    margin: 4px 0 0;
    line-height: normal;
    box-sizing: border-box;
    padding: 0;
}
#trlabe3 {
    margin-left: 5px;
    display: inline-block;
    padding-left: 25px;
    line-height: 34px;
    position: relative;
    overflow: hidden;
}
#sex-F {
    
    margin: 4px 0 0;
    line-height: normal;
    box-sizing: border-box;
    padding: 0;
}
#trlabe4 {
	margin-left: 20px;
	display: inline-block;
    padding-left: 25px;
    line-height: 34px;
    position: relative;
    overflow: hidden;
}
/*==== 라디오버튼 넣어야하는 애들===  */
#birthday {
    width: 110px !important;
    color: #000000!important;
	background: #ffffff url(/images/calendar.png) no-repeat 95% 50%;    
}
#trrow1, #trrow2 {
    margin: 0;
}
#trrow1:before {
	display: table;
    content: " ";
}
#trphoto {
    position: relative;
    width: 100%;
    float: left;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
fieldset .photo #trpic {
    margin-right: 50px;
    width: 70px;
    height: 70px;
    float: left;
    text-align: center;
    border-radius: 50%;
    overflow: hidden;
}
#trimg {
    color: #F37054;
    line-height: 34px;
}
#trprofileImg {
	min-height: 100%;
	vertical-align: middle;
	max-width: 100%;
    border: 0;
}
#trfilefake {
	display: inline-block;
    min-width: 250px;
    position: relative;
}
#trphoto:after {
	content: "";
    display: block;
    height: 0;
    clear: both;
    overflow: hidden;
}
#trbtndark {
	background-color: #42485A;
	min-width: 64px;
	display: inline-block;
    margin: 0;
    padding: 0 10px;
    height: 34px;
    font-weight: 500;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}
.trimgfile {
    width: 100%;
    height: 100%;
    opacity: 0;
    cursor: pointer;
    position: absolute;
    left: 0;
    top: 0;
}
.trprofilebox {
    padding: 10px;
    height: 100px;
    line-height: 1.4;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    resize: none;
    overflow-y: auto;
    overflow: auto;
}
.trbreaktime {
    padding: 0;
	text-align: center;
}
#trsigninfo1, #trsigninfo2{
    line-height: 1.4;
    border-radius: 10px;
}
#trcolsm4{
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
    float:none;
    width:auto;
}
.trposition {
	padding: 0 20px 0 10px;
    height: 34px;
    color: #000000!important;
    background: url(/images/drop_down.png) no-repeat right 10px top 50% #FFF !important;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    -webkit-appearance: none;
}
.trposition option {
	padding: 0 10px;
}
.trbasepay {
	padding: 0;
    width: 95px;
    text-align: center;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
.trlessonpay{
	padding: 0;
    width: 95px;
    text-align: center;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#trlabel13 {
    margin-top: 10px;
}
#trlabel14 {
    margin-top: 10px;
}
.trgrlessonpay{
	padding: 0;
    width: 95px;
    text-align: center;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#trbutton {
    margin: 20px 0 0;
    padding: 20px 0;
    border-top: 1px solid #BABBC2;
    text-align: center;
    clear: both;
}
#trbtnred {
    background-color: #FF5722;
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
}
#trbtndark {
    margin-left: 10px;
    background-color: #42485A;
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    font-size: 13px;
    font-weight: 500;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}
#trbtndark2 {
 	margin-left: 10px;
    background-color: #42485A;
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    font-size: 13px;
    font-weight: 500;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}







</style>