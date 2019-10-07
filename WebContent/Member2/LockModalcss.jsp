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
	float: left;

}

#L-footer .nonmember input[type="text"]{
	padding-left:0px;
	margin-top:20px;
	text-align:center;
	border:1px solid #BABBC2;
	border-radius:5px;

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


/* 락커부분 주인있을때 모달부분 시작  */

#LH-header{
	background-color: #42485A; 

}

#LH-title{
	margin: 0 -20px;
    padding: 0 20px;
	
}	

#LH-body{
	padding: 0;
}


#LH-body p.pic{
	 width: 42px;
    height: 42px;
    float: left;
    margin-left: 13px;
    margin-top: 12px;
	

}

#LH-body .info{
	padding: 15px 0 0 20px;
    float: left;

}

#LH-body .date_set input[type="text"]{
	width: 110px !important;
	padding-left: 10px;
    height: 34px;
    font-size: 13px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}

#LH-footer{
	padding: 20px 0 20px;
    text-align: center;
    border-top: 1px solid #BABBC2;


}

#LH-footer button[type="button"]{
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

#LH-footer .btn.red{

	background-color: #FF5722;
}

#LH-footer .btn.blue{
	background-color: #2196F3;
}

/* 락커부분 주인있을때 모달부분 끝  */
/* 락커관리 모달 부분 시작  */
#LS-header{
	background-color: #42485A; 

}

#LS-title{
	margin: 0 -20px;
    padding: 0 20px;
    color: #fff;
	
}	

/* 라디오박스 시작  */

#LS-body {position: relative;}
#LS-body input[type="radio"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;

}
#LS-body input[type="radio"] + label {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;

}
#LS-body input[type="radio"]:checked + label:before {

  background: #E9ECEE;
  border-color: #adb8c0;
  background-position: left bottom;
}




#LS-body input[type="radio"] + label:before {
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

#LS-body input[type="radio"]:checked + label:after {
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





/* 라디오박스 끝 */



#LS-body fieldset form>p *.label{
	display: inline-block;
    width: 120px;
    color: #42485A;
    padding: 0;
    text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;

}
#LS-body {
    width: 100%;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}

#LS-body fieldset form>p input[type="text"] {
    width: 40%;
    padding-left: 10px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
        height: 34px;
}

#LS-body fieldset form>p input[type="number"]{

	margin: 0 5px;
    width: 60px;
    padding-left: 10px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
        height: 34px;
} 

#LS-body fieldset form>p  button[type="button"]{


    padding: 0;
    min-width: 80px;
    background-color: #42485A;
    height: 34px;
    color: #FFF;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}

#LS-obj{
	height: 200px;
    overflow: hidden;
    overflow-y: auto;
    margin-top: 5px;


}

#LS-obj p.locker_itm span:first-child{


	width: 30%;
	text-align: center;
    display: inline-block;
    line-height: 34px;

}
#LS-obj p.locker_itm span:first-child+span{
	width: 30%;


}

#LS-obj p.locker_itm i{
	width: 25%;
    text-align: center;
    display: inline-block;
    margin-left: 5px;


}

#LS-obj .locker_itm>*+span{
	margin-left: 5px;
    padding: 0 10px;
    text-align: center;


}

#LS-obj .locker_itm a.modify{

background: url(../img/smile.png) no-repeat center 50%;


}

#LS-obj .locker_itm a.del{

background: url(../img/smile.png) no-repeat center 50%;


}


#LS-obj .locker_itm a{

	display: inline-block;
    width: 21px;
    height: 21px;
    text-indent: -9999em;
    position: relative;
    top: 8px;
    overflow: hidden;
}


/* 락커관리 모달 부분 끝  */


</style>