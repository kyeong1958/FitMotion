<style>
	/* 회원등록 modal 시작 */
#MI-content{
	 width: 700px !important;
   

}


 
#MI-header{
    background-color: #42485A;
}
	
#MI-title {
    margin: 0 -20px;
    padding: 0 20px;
    color: #FFF;
}

#MI-body fieldset>div+* {
    margin-top: 5px;
}

#MI-body input[type="text"],
#MI-body input[type="number"]{
	padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 17%;


}


#MI-body .label{
	padding: 0;
	color: black;
	font-size: 100%;
	margin-left: 12px;

}

#MI-body label{

	margin-left: 12px;
}

#MI-body select{
    width: 200px;
    height: 36px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
#MI-body fieldset .address *.label{
	line-height: 34px;
    position: absolute;
    left: 0;

}

#MI-body fieldset .photo {
    position: relative;
}

#MI-body fieldset .photo .pic {
    margin-right: 50px;
    width: 70px;
    height: 70px;
    float: left;
}

#MI-body fieldset .photo p {
    font-size: 13px;
    color: #F37054;
    line-height: 34px;
}
#MI-body .pic {
    text-align: center;
    border-radius: 50%;
    overflow: hidden;
}

#MI-body .pic img {
    min-height: 100%;
}
#MI-body fieldset, img {
    max-width: 100%;
    border: 0;
}

#MI-body .file_fake {
    display: inline-block;
    min-width: 250px;
    font-size: 0;
    position: relative;
}


#MI-body .file_fake input[type="file"] {
    width: 100%;
    height: 100%;
    opacity: 0;
    cursor: pointer;
    position: absolute;
    left: 0;
    top: 0;
}

#MI-body fieldset .photo:after {
    content: "";
    display: block;
    height: 0;
    clear: both;
    overflow: hidden;
}

#MI-body .btn.dark{
    background-color: #42485A;
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
    
}

#MI-body .file_fake .btn {
    margin-left: 5px;
    min-width: 64px;
}

/* 메모 필요하면 넣기 
#MI-body fieldset textarea {
    width: calc(100% - 120px);
   
}

#MI-body textarea {
    padding: 10px;
    width: 100%;
    height: 100px;
    line-height: 1.4;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    resize: none;
    overflow-y: auto;
    }
 */

/* 라디오 버튼 시작  */
#MI-body {position: relative;}
#MI-body input[type="radio"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
#MI-body input[type="radio"] + label {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;

}
#MI-body input[type="radio"]:checked + label:before {
  background: #E9ECEE;
  border-color: #adb8c0;
}




#MI-body input[type="radio"] + label:before {
  content: '';
  position: absolute;
  left: 0;
  width: 21px;
  height: 21px;
  text-align: center;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius: 100%;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}

#MI-body input[type="radio"]:checked + label:after {
    content: '';
    position: absolute;
    top: 3px;
    left: 3px;
    width: 15px;
    height: 15px;
    background: #99a1a7;
    border-radius: 100%;
    box-shadow: inset 0px 0px 10px rgba(0,0,0,0.3);
}
 

/* 라디오 버튼 끝 */

/* 체크박스시작  */

#MI-body input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #6cc0e5;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}
#MI-body input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
} 

#MI-body input[type="checkbox"] + label {
  padding-left: 30px;
}
/* 체크박스 위치  */


#MI-body input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
} 



#MI-body input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}

/* 체크박스끝 */

#MI-footer .pop_btn{
	text-align: center;
	color: #fff;

}


.btn.gray {
    background-color: #9fa0aa;
}

.btn.blue {
    background-color: #2196F3;
}
/* 	회원등록 모달 부분 끝 */
/* 일괄기간연장 모달부분 시작  */


#E_header{
	background-color: #F5F6F7;
	border-radius: 5px;

}

#E_header #E_title{
    margin: 0 -20px;
    padding: 0 33px;
    font-size: 24px;
    color: #575757;
    font-weight: 500;
    line-height: 30px;
}

#E_body{

    padding-top: 36px;

}

#E_body .modal-br{
	margin-top: 10px;
	padding: 20px;
	font-size: 13px;
	line-height: 19px;
	background: #F5F6F7;

}

.c_red{
	color: #FF5722 !important;
	font-style: normal;

}

.mt_20{
	margin: 20px 0 0 0 !important;
	max-width: 100%;
	border: 0;
	min-width: 0;
	padding: 0;

}

.mt_20 p{
	margin-bottom: 10px;
}

.mt_20 p label{
	color: #42485A;

}

.mt_20 p input[type="number"]{
	border-radius: 5px;
	border: 1px solid #BABBC2;
	height: 34px;

}

.c_blue{
	color: #2196F3 !important;

}
#E-footer{
	text-align: center;
}

#E-footer button{
	display: inline-block;
	margin: 0;
	padding: 0 10px;
	min-width: 95px;
	height: 34px;
	font-size: 13px;
	font-weight: 500;
	color: #fff;
	line-height: 32px;
	border: 0; 
	border-radius: 5px;
	cursor: pointer;


}

/* 일괄기간연장 모달부분 끝  */

/* 그룹추가 모달 부분 시작  */
#G-header{
	padding: 10px 10px 0;
	font-size: 16px;
	color: #fff;
	line-height: 58px;
	background-color: #42485A;
	font-weight: 500;

}
#G-search{
	margin-bottom: 20px;
	position: relative;

}

#G-body #G-search button{
	border: none;
    position: absolute;
	top: 2px;
	right: 0;
	background: url(../img/search.png) no-repeat center 50%;
	height: 31px;
    width: 31px;
}
#g_0+label{
	text-indent: -9999em;
	cursor: pointer;
	position: absolute;
	z-index: 5;
}

#divSearchResult ul li:before{
	content: "";
	width: 0;
	height: 100%;
	float: left;
	overflow: hidden;
	
}



/* input[type="checkbox"]{
	display: none !important;

}
 */
/* 그룹추가 모달 부분 끝  */


</style>