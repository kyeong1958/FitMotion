<style>
/* 락커클릭시 배정모달 시작  */
#L-header{
	background-color: #42485A;

}

#L-title {
	margin: 0 -20px;
	padding: 0 20px;
	color: #fff;
}

#L-body{
	padding: 20px 0;

}

#L-body h3{
	margin: 0 0 20px;
	padding-bottom: 0;
	color: #42485A;
	border-bottom: 0;

}

#L-body fieldset p{
	line-height: 34px;

}

#L-body fieldset>p  *.label{
	display: inline-block;
	color: #42485A;
	width: 120px;

}

input[type="date"]{
	padding-left: 10px;
	height: 34px;
	border: 1px solid #BABBC2;
	border-radius: 5px;

}
#L-search{
	margin-bottom: 20px;
	position: relative;

}

#L-search input[type="text"]{
	padding-left:10px;
	width: 100%;
	height: 34px;
	border: 1px solid #BABBC2;
	border-radius: 5px;

}
#L-search button[type="button"]{
	border: none;
    position: absolute;
	top: 2px;
	right: 0;
	background: url(../img/search.png) no-repeat center 50%;
	height: 31px;
    width: 31px;
}

fieldset:after{
	content: "";
	display: block;
	height: 0;
	clear: both;
	overflow: hidden;
}

/* 회원 검색 부분 시작  */
.search_result{
	margin: 0 -20px 20px;
	padding: 0 20px;
	height: 63px;
	overflow: hidden;
	overflow-y: auto; 
	
}

.search_result ul li strong{
	display: inline-block;
	min-width: 10px;
}

/* 회원 검색 부분 끝  */
#L-footer{
	padding: 0;

}

#L-footer .nonmember h3{
	font-size: 16px;

}

/* 락커클릭시 배정모달 끝 */
/* 라디오 박스 시작 */


#L-body {position: relative;}
#L-body input[type="radio"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;

}
#L-body input[type="radio"] + label {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;

}
#L-body input[type="radio"]:checked + label:before {

  background: #E9ECEE;
  border-color: #adb8c0;
  background-position: left bottom;
}




#L-body input[type="radio"] + label:before {
  content: '';
  position: absolute;
  left: 0;
  top: 9px;
  width: 21px;
  height: 21px;
  text-align: center;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius: 100%;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}

#L-body input[type="radio"]:checked + label:after {
    content: '';
    position: absolute;
    top: 12px;
    left: 3px;
    width: 15px;
    height: 15px;
    background: #99a1a7;
    border-radius: 100%;
    box-shadow: inset 0px 0px 10px rgba(0,0,0,0.3);
}


/* 라디오 박스 끝 */




</style>