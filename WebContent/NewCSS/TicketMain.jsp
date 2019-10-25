
<style>
/*--------------------- 상단바 부분  -------------------------------  */
.bar_area {
    padding: 10px 66px;
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
    font-size: 16px;
    color: #9fa0aa;
    line-height: 32px;
}
.bar_area .fl a:last-child {
    font-weight: 500;
    color: #42485A;
    cursor: default;
    text-decoration: none;
}
.bar_area .fl a+a {
    margin-left: 10px;
    padding-left: 17px;
    background: url(../img/icon/location_arrow.png) no-repeat left 50%;
}
/*----------------------- 상단바 부분  -------------------------------  */

/* ----------------------------상단바 메뉴탭부분---------------------------- */
.tab_area {
    background-color: #f0f0f2;
    border-bottom: 1px solid #BABBC2;
}
.tab_area .section {
    padding-top: 10px;
    padding-bottom: 0;
    margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
    margin-top: -18px;
    margin-bottom: -35px;
}

.tab_area #MC-ul {
    display: inline-block;
    font-size: 0;
    position: relative;
    bottom: -1px;
   margin: 0;
    list-style: none;
}
.tab_area #MC-ul li {
    display: inline-block;
    min-width: 95px;
    font-size: 13px;
    overflow: hidden;
}
.tab_area #MC-ul li button.active {
    color: #22B2FB;
    border-bottom: 1px solid #FFF;
}
.tab_area #MC-ul li button {

    display: inline-block;
    padding: 0 10px;
    width: 100%;
    min-height: 40px;
    color: #6e7794;
    line-height: 1.4;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px 5px 0 0;
    outline: none;
}
input[type="submit"], button {
    border: 0;
    cursor: pointer;
}
button, input, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, html input[type=button], input[type=reset], input[type=submit] {
    -webkit-appearance: button;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
.tab_area #MC-ul li+li {
    margin-left: -1px;
}
/* ----------------------------상단바 메뉴탭부분---------------------------- */

/* -----------------------------검색어 메뉴부분 -----------------------------*/
.search_bar {
    margin: -30px -66px 0;
    padding: 20px 0;
    font-size: 0;
    text-align: center;
    border-bottom: 1px solid #BABBC2;
}
.search_bar fieldset {
    padding: 0 66px;
    text-align: left;
}
fieldset, img {
    max-width: 100%;
    border: 0;
}
fieldset {
    min-width: 0;
    margin: 0;
}
legend {
    display: none;
}
legend {
    width: 100%;
    padding: 0;
    margin-bottom: 20px;
    font-size: 21px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 1px solid #e5e5e5;
}
label {
    font-weight: normal;
    margin: 0;
    max-width: none;
    display: inline-block;
}
.search_bar fieldset select {
    padding: 0 20px 0 10px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    margin-left: 40px;
    
    font-size: 13px;
    color: #000000!important;
    padding-top: 0;
    padding-right: 31px;
    min-width: 120px;
    height: 26px;
    line-height: 24px;

}
select option {
    padding: 0 10px;
}
.search_bar fieldset .search_box {
    float: right;
}
.search_bar fieldset .search_box input[type="text"] {
    width: 250px;
    height: 26px;
    border-right: 0;
    border-radius: 5px 0 0 5px;
    padding-left: 10px;
    font-size: 13px;
    border: 1px solid #BABBC2;
}
.search_bar fieldset .search_box .search {
   padding-top: 10px;   
    width: 26px;
    height: 26px;
    background: url(../img/icon/btn_view.png) no-repeat center 50% #22B2FB;
    background-size: 14px;
    border-radius: 0 5px 5px 0;
}
/* -----------------------------검색어 메뉴부분 -----------------------------*/
/* -----------------------------메인 분류 카테고리 부분 -----------------------------*/
.product_tab .section, .trainer_info .section {
    display: flex;
    flex-flow: row wrap;
    justify-content: flex-start;
   margin: 0 auto;
    padding: 30px 66px;
    max-width: 100%;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    flex: 0 1 auto;
}
.product-category ul {
   margin: 0;
    list-style: none;
}
.btn.blue {
    background-color: #2196F3;
}
.btn.gray {
    background-color: #9fa0aa;
}
.product-category li {
    width: 49%;
}
.btn {
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 80px;
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
.product-category li {
    width: 49%;
}
.btn.dark {
    background-color: #42485A;
}
.pr_btn {
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    width: 100%;
    height: 34px;
    font-size: 13px;
    font-weight: 300;
    color: #FFF;
    text-align: left;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
}
.btn.text-border {
    font-weight: bold;
    background-color: inherit !important;
    height: inherit;
    padding: 5px;
}
.text-border {
    border: 1px solid #BABBC2;
}
.c_black {
    color: #000000 !important;
}
.c_green {
    color: #43a047 !important;
}
.c_purple {
    color: #7A52CC !important;
}
.c_yellow {
    color: #F39800 !important;
}
.c_blue {
    color: #2196F3 !important;
}
.c_gray {
    color: #9fa0aa !important;
}
/* -----------------------------메인 분류 카테고리 부분 -----------------------------*/

/* -----------------------------메인 리스트 부분 -----------------------------*/
.product_tab .section .column.col_span, .trainer_info .section .column.col_span .width_right_add {
    flex: 0 1 auto;
    height: 680px;
}
.product_tab .section .column, .trainer_info .section .column {
    padding: 20px;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
}
.column+.column {
    margin-left: 10px;
}
.column {
    position: relative;
}
.product_tab .section .column .grid_list, .trainer_info .section .column .grid_list {
    height: 100%;
    overflow: hidden;
    overflow-y: auto;
}
.grid_list {
    clear: both;
}
.column.col_span .grid_list ul {
    margin-left: -10px;
}
.grid_list ul {
    display: flex;
    flex-flow: row wrap;
    justify-content: flex-start;
    margin: 0;
    list-style: none;
}
.column.col_span .grid_list ul li {
    width: calc((100% - 30px) / 3);
}
.grid_list ul li {
    flex: 0 1 auto;
    margin: 0 0 10px 10px;
    padding: 20px 10px;
    color: #42485A;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    position: relative;
    overflow: hidden;
}
.grid_list.over_view ul li .service_itm {
    margin-bottom: 60px;
}
.grid_list ul li .service_itm {
    display: block;
}
.grid_list ul li .service_itm > p span {
    display: block;
}
.fr {
    float: right;
}
em, i {
    font-style: normal;
}
.grid_list ul li .service_itm > p i {
    display: block;
    margin-top: 10px;
    font-size: 16px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.grid_list.over_view ul li .service_detail {
    top: 85px;
    position: absolute;
    left: 0;
    overflow: hidden;
    box-shadow: 0px 6px 6px #bababa99;
}
.grid_list ul li>* {
    display: inline-block;
    vertical-align: middle;
    position: static;
    z-index: 1;
}
.text-border {
    border: 1px solid #BABBC2;
}
.grid_list.over_view ul li .service_detail .service_price {
    margin-top: inherit;    
    display: block;
   padding: 10px;
    border-top: 1px dashed #BABBC2;
}
.grid_list ul li .service_detail .service_price p:first-child {
    font-size: 16px;
    line-height: 32px;
    float: left;
}
.grid_list ul li .service_detail .service_price p:last-child {
    float: right;
}
.grid_list ul li .service_detail .service_price p:last-child .btn {
    min-width: 20px;
}
.btn.green {
    color: #FFF;
    background-color: #37B772;
}






#TM_ul li{
	margin-top: 10px;
	border: 1px solid #BCBBCA;
    border-radius: 5px;

}


/* -----------------------------메인 리스트 부분 -----------------------------*/











 
</style>   