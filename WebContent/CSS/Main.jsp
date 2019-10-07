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

.bar_area .homefl a+a {
    padding-left: 32px;
    background: url(../img/location_arrow.png) no-repeat left 50%;
}

.bar_area .homefl a:last-child {
    font-weight: 500;
    color: #42485A;
    cursor: default;
    text-decoration: none;
}
/* 홈바 끝 */
</style>