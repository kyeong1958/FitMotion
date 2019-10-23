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
/* 홈바의 오른쪽 부분 */

#Lockselect{
	padding: 0 20px 0 10px;
	min-width: 30%;
	height: 34px;
	font-size: 13px;
	color: #000000!important;
	border: 1px solid #BABBC2;
	border-radius: 5px;
	
	
}




.homefr{
	float: right;
	
	
}

.btn.dark {
	background-color: #FF5722;
}

#MIns-B {
	display: inline-block;
	margin: 0;
	padding: 0 10px;
	min-width: 95px;
	height: 34px;
	font-size: 13px;
	font-weight: 900;
	color: #fff;
	text-align: center;
	line-height: 32px;
	border: 0; 
	border-radius: 5px;
	cursor: pointer;

}


/* 홈바 끝 */

/* 락커 사용중 설명 부분 시작  */
#lock_select{
	margin: 0 auto;
	padding: 30px 66px;
	max-width: 100%;

}

.locker_area .locker_cat{
	margin-bottom: 30px;
	text-align: center;

}

.locker_area .locker_cat>p{
	display: inline-block;
	font-size: 13px;
	line-height: 20px;
	position: relative;
	overflow: hidden;

}
/* 락커 사용중 설명 부분 끝  */

#lock_select #lockerStatusP>p:before{
	content: "";
	display: inline-block;
	margin-right: 5px;
 	width: 15px;
 	height: 15px;
 	vertical-align: middle;
 	position: relative;
 	overflow: hidden;
}

#lock_select #lockerStatusP>p+p{
	margin-left: 20px;
}

#lock_select #lockerStatusP p.period:before{
	background-color: #8AC97B;

}

#lock_select #lockerStatusP p.before_expiration:before{
	background-color: #E0DC9A;
}

#lock_select #lockerStatusP p.expiration:before{
	background-color: #F1656A;

}
#lock_select #lockerStatusP p.impossible:before{
	border: 1px solid #BABBC2;
}

#lock_select #lockerStatusP p.impossible:after{
	width: 2px;
	height: 30px;
	right: auto;
	left: 5px;
	top: -1px;
	content: "";
	background-color: #F1656A;
	transform: rotate(45deg);
	position: absolute;
}

.locker_list ul{
	margin-left: -10px;
	
}

.locker_list ul li>*{
	display: inline-block;
	vertical-align: middle;
	font-size: 13px;
}
.locker_list ul li{
	display: inline-block;
	margin: 0 0 10px 10px;
	width: 8%;
	height: 108px;
	color: #42485A;
	text-align: center;
	border: 1px solid #BABBC2;
	border-radius: 5px;
	position: relative;
	overflow: hidden;
	
}

.locker_list ul li:before{
	content: "";
	display: inline-block;
	margin-right: -0.25em;
	width: 0;
	height: 100%;
	vertical-align: middle;

}

.locker_list ul li .locker_box>a{
	width: 100%;
	height: 100%;
	text-indent: -9999em;
	position: absolute;
	left: 0;
	top: 0;

}

.locker_list ul li.before_expiration{
	background-color: #E0DC9A;
}

.locker_list ul li.use p:first-child{
	margin: 0;
	position: absolute;
	left: 10px;
	top: 10px;
}

.locker_list ul li.use p:first-child+p{
	margin-top: 10px;
}

.locker_list ul li.impossible:after{
	content: "";
	width: 4px;
	height: 200%;
	background-color: #F1656A;
	transform: rotate(45deg);
	position: absolute;
	left: 47.3%;
	top: -48.55%;

}

.locker_list ul li.period{
	background-color: #8AC97B;

}


</style>


