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
    width: 30%;


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
 메모 필요하면 넣기 
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