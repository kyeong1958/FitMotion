<style>
/* 홈바부분 시작  */
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


/* 홈바부분 끝  */

/* 패키지 상품 왼쪽 카드  시작  */

#prop3 input{
   text-align: right;
}


#prosection{

  
   margin: 0 62px;
    min-width: 1400px;
      display: flex;
    flex-flow: row wrap;
    justify-content: flex-start;
    padding: 33px 0px;

}

#procolumn {
   
    padding: 20px;
    background-color: #FFF;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    flex: 0 1 auto;
    position: relative;
    width: 58%;
    height: 750px;
    overflow-y: scroll;

}

#proh3 {
    margin: -20px -20px 20px;
    padding: 20px;
    color: #42485A;
    border-bottom: 1px solid #BABBC2;
    overflow: hidden;
    font-weight: 500;
    font-family: inherit;
    line-height: 1.1;
}

#procontbox {
   border: 1px solid #BABBC2;
    border-radius: 5px;
    margin-bottom: 21px;
}

#procontboxh3 {
    color: #42485A;
    border-bottom: 1px solid #BABBC2;
    position: relative;
    overflow: hidden;
    font-weight: 500;
    font-family: inherit;
    line-height: 1.1;
   display: block; 
   margin: 0; 
   padding: 10px;
}

#proclose {
   -webkit-appearance: none;
    padding: 0;
    cursor: pointer;
    background: 0 0;
    border: 0;
    float: right;
    font-weight: 700;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    opacity: .2;
   position: absolute; 
   top: 8px; 
   right: 20px;
}

#proimg {
   max-width: 100%;
    border: 0;
    vertical-align: middle;

}

#profieldset {
    max-width: 100%;
    border: 0;
    min-width: 0;
    padding: 0;
    margin: 0;
    margin-top: 0;

}

#prolegend {
    display: none;
    width: 100%;
    padding: 0;
    margin-bottom: 20px;
    font-size: 21px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 1px solid #e5e5e5;

}

#prop1 {

    line-height: 34px;

}

#prolabel1 {
    display: inline-block;
    width: 120px;
    color: #42485A;
    padding: 0;
    font-weight: normal;
    text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;
    white-space: nowrap;

}

#proselect1 {
    padding: 0 20px 0 10px;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    border-radius: 5px;
   width: 185px !important;
   min-width: auto;
}

#proselect1 option {

    padding: 0 10px;

}

#prolabel2 {
    display: inline-block;
    padding: 0;
    font-weight: normal;
    color: #42485A;
    text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;
    white-space: nowrap;
    width: 70px; 
    margin-left: 40px;
    margin-left: 83px;

}

#proselect2 {
   margin-left: 10px;
    padding: 0 20px 0 10px;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 190px !important;
    min-width: auto;"

}

#proselect2 option {
   padding: 0 10px;
}

#prop2 {
    margin-top: 5px;
    line-height: 34px;

}

#prolabel3 {
    display: inline-block;
    width: 120px;
    padding: 0;
    font-weight: normal;
    color: #42485A;
    text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;

}

#prowd250 {

    width: 250px !important;

}

#prouseperiod {
    padding: 0;
    text-align: center;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 100px !important;

}

#proselect3 {
   padding: 0 20px 0 10px;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    border-radius: 5px;

}

#proselect3 option {

   padding: 0 10px;

}

#prop3 {
   margin-top: 5px;
    line-height: 34px;

}

#prolabel7 {
    display: inline-block;
    width: 120px;
    color: #42485A;
    font-weight: normal;
    margin: 0;
    max-width: none;

}

#proprice_2 {
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 175px !important;
    text-align: center;

}

/* 패키지 상품 왼쪽 카드  끝  */
/* 이용권 추가하기 카드 부분 시작 */
#probtnarea {
    text-align: center;
    clear: both;
    border-top: none;
    margin: 0; 
    padding: 10px 0;"

}

#probtngreen {
    color: #FFF;
    background-color: #37B772;
    display: inline-block;
    margin: 0;
    padding: 0 10px;
    min-width: 95px;
    height: 34px;
    font-weight: 500;
    text-align: center;
    line-height: 32px;
    border: 0;
    border-radius: 5px;
    cursor: pointer;
    overflow: hidden;
    white-space: nowrap;
    vertical-align: middle;
    touch-action: manipulation;
    user-select: none;
    background-image: none;

}
/* 이용권 추가하기 카드 부분 끝 */
/* 패키지 오른쪽 카드 시작  */
#procontbox2 {
   margin: 0 auto;
    max-width: 60%;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 40%;
    display: inline-block;
    margin-left: 28px;

}

#proh3_2 {
    padding: 20px;
    color: #42485A;
    border-bottom: 1px solid #BABBC2;
    position: relative;
    font-weight: 500;
    margin: 0;
    font-family: inherit;
    line-height: 1.1;

}

#procontbody2 {
    padding: 30px 20px;
}

#prodieldset2 {
    max-width: 100%;
    border: 0;
    min-width: 0;
    padding: 0;
    margin: 0;
    margin-top: 0;

}

#prolegend2 {
    display: none;
    width: 100%;
    padding: 0;
    margin-bottom: 20px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 1px solid #e5e5e5;
}

#prop4 {
    line-height: 34px;

}

#prolabel8 {
    display: inline-block;
    width: 120px;
    color: #42485A;
    padding: 0;
    font-weight: normal;
      text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;

}

#proproductname {
    width: calc(100% - 180px);
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;

}

#prolabel9 {
    display: inline-block;
    width: 120px;
    color: #42485A;
    padding: 0;
    font-weight: normal;
    text-align: left;
    line-height: 34px;
    vertical-align: top;
    border-radius: 0;
    white-space: nowrap;

}

#proselect4 {
    padding: 0 30px 0 10px;
    height: 34px;
    color: #000000!important;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    min-width: 100px;

}

#proselect4 option {

    padding: 0 10px;

}



#prolabel17 {
    display: inline-block;
    width: 120px;
    color: #42485A;
    font-weight: normal;
    margin: 0;
    max-width: none;

}

#proprice {
   text-align: center; 
   background-color: #e8e7e8;
    cursor: default;
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 150px !important;

}

#price_discount1_0{
   text-align: center;
    cursor: default;
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 150px !important;

}

#price_discount2_0{

   text-align: center;
    cursor: default;
    padding-left: 10px;
    height: 34px;
    border: 1px solid #BABBC2;
    border-radius: 5px;
    width: 150px !important;

}
/* 패키지 오른쪽 카드 끝  */
/* 밑에 버튼부분 시작  */

#proBut{
    text-align: center;
    margin-top: 0;
}

#proBut .btn.gray{
   background-color: #9fa0aa;
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

#proBut .btn.blue {
    background-color: #2196F3;
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
    margin-left: 10px;
}
/* 밑에 버튼부분 끝  */
 
</style>
 

 

 
