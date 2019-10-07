<style>

/* 홈바  시작 */
.bar_area {
	padding: 10px 66px;
	height: 54px;
	background-color: #fff;
	box-shadow: 1px 1px 4px #BABBC2;
	position: relative;
	z-index: 1;
	
}

.homefl a{
	float: left;
	display: inline-block;
	font-size: 16px;
	color: #9fa0aa;
	line-height: 32px;
}





#management:last-child{
	font-weight: 500;
	color: #42485A;
	cursor: default;
	text-decoration: none;
	

}

.bar_area .homefl #home+#management{
	padding-left: 37px;
	background: url(../img/location_arrow.png) no-repeat left 50%;
	
}

.homefr{
	float: right;
	font-size: 0;
	
}

.btn.dark {
	background-color: #42485A;
}

#MIns-B {
	display: inline-block;
	margin: 0;
	padding: 0 10px;
	min-width: 95px;
	height: 34px;
	font-size: 13px;
	font-weight: 500;
	color: #fff;
	text-align: center;
	line-height: 32px;
	border: 0; 
	border-radius: 5px;
	cursor: pointer;

}


/* 홈바 끝 */



input[type="text"]{
	padding-left: 10px;
	height: 34px;
	font-size: 13px;
	border: 1px solid #BABBC2;
	border-radius: 5px;

}

input[type="number"]{
	padding: 0;
	width: 95px;
	text-align: center;

} 

/* modal 끝 */


/* 메뉴바 부분   시작 */


.tab_area{
	background-color: #f0f0f2;
	border-bottom: 1px solid #BABBC2;


}

.tab_area #sec{
	padding-top: 10px;
	padding-bottom: 43px;


}

#sec{
	margin: 0 auto;
	padding: 30px 66px;
	max-width: 100%;

}

.Menufl{
	float: left;

}

#tabul{
	display: inline-block;
	font-size: 0;
	position: relative;
	bottom: -1px;
	margin: 0;
	list-style: nonel;
}

.tab_area #tabul li {
	display: inline-block;
	font-size: 13px;
	overflow: hidden;
	/* min-width: 85px; */	
}

.tab_area #tabul li button.active{
	color: #22B2FB;
	border-bottom: 1px solid #fff;
	outline: none;


}

 .tab_area #tabul li button{
	display: inline-block;
	padding: 0 10px;
	width: 100%;
	min-height: 40px;
	color: #6e7794;
	line-height: 1.4;
	background-color: #fff;
	border: 1px solid #BABBC2;
	border-radius: 5px 5px 0 0;	
}
 
.tab_area #tabul li button>span{
	display: block;
	margin-bottom: 5px;
	color: #6e7794;

}

 .tab_area .select_month{
	min-width: 60px;
	height: 40px;
	border: none;
	background-color: #f2f2f2 !important;
	position: relative;
	vertical-align: top;
	
} 

.Menufr{
	float: right;


}

/* 메뉴바 부분   끝 */

/* 검색 조회 부분 시작  */
 
 .search_bar{
		margin: -30px -66px 0;
		padding: 20px 0;
		
		text-align: center;
		border-bottom: 1px solid #BABBC2; 
	}   
	
   .search_bar #S_fieldset{
	padding: 0 66px;
	text-align: left;


}  
  #S_fieldset legend{
	display: none;

}   
    #S_fieldset form>p{
	
	line-height: 34px;
}   
   
  .search_bar #S_fieldset select{
	/* margin: 0;
	padding-top: 0;
	padding-right: 31px; */
	min-width: 82px;
    max-width: 126px;
	height: 26px;
	line-height: 24px;
	margin-left: 8px;
	padding: 0 20px 0 10px;
	color: #000000!important;
	border: 1px solid #BABBC2;
	border-radius: 5px;
	-webkit-appearance: none;
	background: url(../img/select_arrow.png) no-repeat
		right 10px top 50% #fff !important;
	
	
} 

select option{
	padding: 0 10px;

}
 
 #seicon{
	width: 26px;
	height: 26px;
	background: url(../img/btn_view.png)  no-repeat center 50% #22B2FB;
	background-size: 14px;
	border-radius: 0 5px 5px 0;
	float: right;
	border: 0;
	cursor: pointer;


} 


/* 검색 조회 부 분 끝  */
/* 버튼부분 시작  */


#selectoption{
	text-align: center;
	overflow: hidden;
	margin-top: 20px;
}

#selectoption+*{
	margin-top: 20px;

}

.B_fl{
	float: left;
	font-size: 18px;
	margin: 0;
}

.B_fr{
	float: right;

}

/* input[type="checkbox"]{
	display: none !important;	

} */

input[type="checkbox"]+.all{
	display: inline-block;
	position: relative;
	

}

.btn.blue{
	background-color: #2196F3;
	color: #fff;
	font-weight: 500;
	font-size: 13px;
	

}
.btn.small{
	min-width: 43px;
	padding: 0 10px;
	height: 26px;
	line-height: 24px;
	margin-left: 5px;
	
}
.btn.red{
	background-color: #ff5722;
	color: #fff;
	font-weight: 500;
	font-size: 13px;

}

/* 버튼부분 끝  */
/* 멤버 리스트 시작  */
.grid_list{
	clear: both;

}

.grid_list ul{
	display: flex;
	flex-flow: row wrap;
	justify-content: flex-start;
	margin-left: -20px;


}
/* 
 @media only screen and (max-width: 1750px){
.grid_list ul li {
	width: calc((100% - 80px) /2);
	
}
} 
 */
.grid_list ul li {
	margin: 0 0 10px 10px;
	flex: 0 1 auto;
	padding: 20px 10px;
	color: #42485A;
	background-color: #fff;
	border: 1px solid #BABBC2;
	border-radius: 5px;
	position: relative;
	overflow: hidden;	
	 width: calc((100% - 120px) /5); 

}
.grid_list ul li>.profile{
	display: block;
	overflow: hidden;
	
}

#pic{
	margin-right: 10px;
	float: left;
	width: 42px;
	height: 42px;
	
}

.grid_list ul li>.profile>p{
	line-height: 22px;
	/* 14px */

}


#name{
	font-size: 16px;
	font-weight: 500;
}

#card_itm{
	margin-top: 10px;
	display: block;

}

.grid_list ul li .card_itm .unit .letter_crap{
	display: inline-block;  
	color: #6e7794;
	overflow: hidden;
	 width: calc(100% - 120px); 
	white-space: nowrap;
	text-overflow: ellipsis;


}

.grid_list ul li .card_itm .unit i.expired{
		float: right;
	
}

.grid_list ul li .function_btn>*{
	opacity: 0;
	position: relative;
	z-index: 1;

}

:after, :before{
	box-sizing: border-box;

}

.btn.green{
	color: #fff;
	background-color: #37B772;
	

}

.btn.small{
	min-width: 43px;
	padding: 0 10px;
	height: 26px;
	line-height: 24px;

}

/*  */
.grid_list ul li:hover .function_btn>*, .grid_list ul li:hover .function_btn:after {
    opacity: 1;
}
.grid_list ul li .function_btn:after {
    opacity: 0;
}
.grid_list ul li .function_btn:after {
    width: 100%;
 	 height: 100%; 
    background-color: rgba(66,72,90,0.8);
    position: absolute;
    left: 0;
    top: 0;
    z-index: 0;
    vertical-align: middle;
    
}
.grid_list ul li .function_btn:before, .grid_list ul li .function_btn:after {
    content: "";
}
.grid_list ul li .function_btn {
    width: 100%;
    height: 100%;
    font-size: 0;
    text-align: center;
    position: absolute;
    left: 0;
    top: 0;
   
}
.grid_list ul li .function_btn>.btn.cart:before{
	background: url(../img/cart2.png) no-repeat center 50%;
}
.grid_list ul li .function_btn>.btn.view:before {
    background: url(../img/sear.png) no-repeat center 50%;
}

.grid_list ul li .function_btn>.btn:before {
    content: "";
    display: inline-block;
    margin: 0 auto;
    width: 100%;
    height: 30px;
    position: absolute;
    left: 0;
    top: -35px;
    right: 0;
}
.grid_list ul li .function_btn>.btn {
     margin-top: 79px; 
    vertical-align: middle;
    position: relative;
    overflow: visible;
}
#test{
	word-spacing: break-all;
	font-size: 16px;
	font-weight: 500;
	color: #42485A;
	line-height: 1.4;

}


#divSearchResult ul li .card_itm .unit strong{
	display: block;
	font-weight: normal;

}

#divSearchResult ul li .card_itm .unit span{
	display: inline-block;
	color: #6e7794;
	overflow: hidden;

}

#divSearchResult ul li .pic{
	width: 42px;
	height: 42px;
	text-align: center;
	border-radius: 50%;
	overflow: hidden;
}

/* #divSearchResult ul li .card_itm .info>.name{
	margin-right: 10px;
	float: right;
	position: relative;
	top: 28px;
	margin: 0;
	
} */
#divSearchResult ul li>.view{
	display: none;
	background-image: url(../img/btn_view.png);
	right: 20px;
	width: auto;
	height: 21px;
	text-indent: 28px;
	line-height: 21px;
	background-repeat: no-repeat;
	background-position: left 50%;
	position: absolute;
	bottom: 80%;
	z-index: 10;
	overflow: hidden;
	color: #42485A;
	text-decoration: none;
}

#G-footer button{

	color: #fff;
	

}

/* 멤버 리스트 끝 */

/* 검색부분 시작  */
	.search_box input[type="text"]{
	width: 250px;
	border-right: 0;
	border-radius: 5px 0 0 5px;

}

.search_box .search {
    width: 26px;
    background: url(../img/sear.png) no-repeat center 50% #22B2FB;
    background-size: 14px;
    border-radius: 0 5px 5px 0;
    text-indent: -99999px;
    border: 0;
}
	

/* 검색부분 끝 */

</style>