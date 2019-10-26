<style>
/* 홈바  시작 */
#SS-bar {
	padding: 10px 66px;
	height: 54px;
	background-color: #fff;
	box-shadow: 1px 1px 4px #BABBC2;
	position: relative;
	z-index: 1;
	
}

#SS-bar .homefl a{
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

#SS-bar .homefl #home+#management{
	padding-left: 37px;
	background: url(../img/location_arrow.png) no-repeat left 50%;
	
}

#SS-bar .homefl a+a {
    padding-left: 32px;
    background: url(../img/location_arrow.png) no-repeat left 50%;
}

#SS-bar .homefl a:last-child {
    font-weight: 500;
    color: #42485A;
    cursor: default;
    text-decoration: none;
}
/* 홈바 끝 */
/* 홈바 메뉴 부분 시작  */
#SS-bar .fr {
    float: right;
}
#SS-bar .homenav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
#SS-bar .homenav:before{
	display: table;
    content: " ";
}

#SS-bar .fr.nav ul {

    margin-top: -10px;
    list-style: none;
}

#SS-bar .nav:after{
	clear: both;
	display: table;
    content: " ";

}

#SS-bar .fr.homenav ul li {
    display: inline-block;
}

#SS-bar .fr.homenav ul li a.active {
    color: #FFF;
    background-color: #22B2FB;
}

#SS-bar a {
    color: #42485A;
    text-decoration: none;
    cursor: pointer;
}

#SS-bar .fr.homenav ul li a {
    margin-top: -10px;
    display: block;
    padding: 0 20px 0 54px;
    height: 54px;
    line-height: 54px;
    position: relative;
}

#SS-bar .fr.homenav ul li a:before {
    content: "";
    width: 54px;
    height: 100%;
    background-repeat: no-repeat;
    background-position: center 50%;
    position: absolute;
    left: 0;
    top: 0;
}
/* 클릭한뒤 이미지   */
#SS-bar .fr.homenav ul li a.active.n_04:before {
    background-image: url(../img/ico_nav_04_w.png);
}

#SS-bar .fr.homenav ul li a.active.n_05:before {
    background-image: url(../img/ico_nav_05_w.png);
}
#SS-bar .fr.homenav ul li a.active.n_01:before {
    background-image: url(../img/ico_nav_01_w.png);
}
#SS-bar .fr.homenav ul li a.active.n_03:before {
    background-image: url(../img/ico_nav_03_w.png);
}

/* 기본이미지  */
#SS-bar .fr.homenav ul li a.n_04:before {
    background-image: url(../img/ico_nav_04_g.png);
}

#SS-bar .fr.homenav ul li a.n_05:before {
    background-image: url(../img/ico_nav_05_g.png);
}

#SS-bar .fr.homenav ul li a.n_01:before {
    background-image: url(../img/ico_nav_01_g.png);
}

#SS-bar .fr.homenav ul li a.n_03:before {
    background-image: url(../img/ico_nav_03_g.png);
}
/* 홈바 메뉴 부분 끝 */

/*  날짜부분 시작  */
#SS-top {
    background-color: #f0f0f2;
}


#SS-top .section {
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}

#SS-top .date_set {
    margin: 0 auto 10px;
    width: 250px;
    text-align: center;
    position: relative;
}

#SS-top .date_set .select {
    display: inline-block;
    min-width: 60px;
}

#SS-top .date_set .select select {
    padding-right: 30px;
    min-width: initial;
    color: #000000!important;
    background: url(../img/custom_select_arrow.png) no-repeat right 10px top 50% transparent !important;
    border: 0;
    -webkit-appearance: none;
    height: 34px;
    border-radius: 5px;
}

#SS-top .date_set .prev,
 #SS-top .date_set .next {
    display: inline-block;
    margin: auto 0;
    width: 21px;
    height: 21px;
    text-indent: -9999em;
    position: absolute;
    top: 0;
    bottom: 0;
    overflow: hidden;
}

#SS-top .date_set .prev {
    background: url(../img/select_left.png) no-repeat center 50%;
    left: 0;
}
#SS-top .date_set .next {
    background: url(../img/select_right.png) no-repeat center 50%;
    right: 0;
}

/*  날짜부분 끝  */
/*  큰 그래프 시작 - 회원일반 현황  */

#SS-section .section {
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
}

#SS-section .chart_area {
    display: flex;
    flex-flow: row wrap;
    justify-content: flex-start;
    margin-left: -10px;
}

#SS-section .chart_area .itm {
    flex: 0 1 auto;
    margin: 0 0 20px 20px;
    width: calc((100% - 40px) / 2);
    border: 1px solid #BABBC2;
    border-radius: 5px;
    position: relative;
    overflow: hidden;
}


#SS-section .chart_area .itm h3 {
    margin-top: -1px;
    padding: 20px;
    color: #42485A;
    background: #f0f0f2;
    overflow: hidden;
}

/* 첫번째 큰 그래프 끝  */

/* 작은 그래프 시작  */
#SS-section .chart_area .itm {
    flex: 0 1 auto;
    margin: 0 0 20px 20px;
    width: calc((100% - 40px) / 2);
    border: 1px solid #BABBC2;
    border-radius: 5px;
    position: relative;
    overflow: hidden;
}


/* 작은 그래프 끝  */


</style>


	
	
	