<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<head>
<!--title   description keywords    SEO搜索引擎优化-->
<title>商城</title>
<meta name="description" content="xxxxxxxx"/>
<meta name="keywords" content="xxxxxxxx"/>
<!--设置title图标-->
<link rel="shortcut icon" href="/favicon.ico">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/commons.css">
<link rel="stylesheet" href="css/index.css">
</head>
<html>
	<body>
		   <!--快捷导航模块-->
    <div class="shortcut">
        <div class="w">
            <div class="fl">
                <ul>
                    <li>品优购欢迎您!&nbsp;&nbsp;&nbsp;</li>
                    <li>
                        <a href="#">请登录&nbsp;&nbsp;&nbsp;</a><a href="#" class="style_red">免费注册</a>
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <li class="style_red"><a href="queryAll.do">商品中心</a></li>
                    <li></li>
                    <li class="arrow-icon"><a href="showOrder.do">我的订单</a></li>
                    <li></li>
                    <li class="arrow-icon">修改商品</li>
                    <li></li>
                    <li class="arrow-icon"><a href="add.do">添加商品</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--header模块-->
    <header class="header w">
        <!--logo模块SEO优化-->
        <div class="logo">
            <div class="box1">
        	<div class="box2">
            <a href="###"><div class="div1"></div></a>
            <a href="queryAll.do"><div class="div2"></div></a>
         </div>
        </div>
        </div>
        <!--search模块-->
        <div class="search">
	        	<form action="queryAll.do">
		            <input type="search" name="gname" id="" placeholder="语言开发">
		           	<input type="submit" class="sub" value="搜索"/>
		         </form>
        </div>
        <!--shopcar-->
        <div class="shopcar"><a href="showcar.do">我的购物车</a>
        <c:choose>
        	<c:when test="${num ==0}">
        	 	<i class="count">0</i>
        	 </c:when>
	        <c:otherwise>
	        	<i class="count">${num}</i>
	        </c:otherwise>
         </c:choose>
        </div>
    </header>

    <!--nav模块-->
    <div class="nav">
        <div class="w">
            <div class="dropdown">
                <div class="dt">全部商品分类</div>
                <div class="dd">
                    <ul>
                        <li><a href="#">家用电器</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                        <li><a href="#">手机</a>、<a href="#">数码</a>、<a href="#">电脑</a></li>
                    </ul>
                </div>

            </div>
           
        </div>
      
    </div>

    <!--main制作模块-->
    <div class="w">
        <div class="main">
            <div class="focus">
                <ul>
                    <li>
                        <img src="upload/focus1.png" alt="">
                    </li>
                </ul>
            </div>
            <div class="newflash">
                <div class="news">
                    <div class="news-hd">
                        <h5>品优购快报</h5>
                        <a href="" class="more">更多</a>
                    </div>
                    <div class="news-bd">
                        <ul>
                            <li><a href=""><strong>[重磅]</strong>xxxxxxxxxxxxxxxxxxxxx</a></li>
                            <li><a href=""><strong>[重磅]</strong>xxxxxxxxxxxxx</a></li>
                            <li><a href=""><strong>[重磅]</strong>xxxxxxxxxxxxx</a></li>
                            <li><a href=""><strong>[重磅]</strong>xxxxxxxxxxxxx</a></li>
                            <li><a href=""><strong>[重磅]</strong>xxxxxxxxxxxxx</a></li>
                        </ul>
                    </div>
                </div>
                <div class="lifeservice">
                    <ul>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        <li>
                            <i></i>
                            <p>话费</p>
                        </li>
                        
                    </ul>
                </div>
                <div class="bargain"><img src="upload/bargain.png" alt=""></div>
            </div>
        </div>
    </div>

	    <!--推荐模块-->
	   
	    <div class="w recom">
        <div class="recom_hd"><img src="images/recom.png" alt=""></div>
        <div class="recom_bd">
            <ul>
            	 <c:forEach items="${newGoods }" var="n">
                	<li><a href="show.do?gid=${n.gid }"><img src="i.do?path=${n.image }"></a></li>
                 </c:forEach>
            </ul>
        </div>
    </div>
	
   		 <!--floor模块-->
        <div class="floor">
     		<!-- 一楼:书籍 -->
        	<div class="w book">
            <div class="box_hd">
                <h3>最新书籍</h3>
            </div>
            <div class="box_bd">
                <div class="tab_content">   
                    <div class="tab_list_item">
                    
                        <div class="col_210">
                            <a href="show.do?gid=${books[0].gid }">
                                <img src="i.do?path=${books[0].image }" alt="" width="200px" height="365px">
                            </a>
                        </div>
                        
                        <div class="col_329">
                            <a href="show.do?gid=${books[1].gid }">
                                <img src="i.do?path=${books[1].image }" alt="" width="322px" height="365px">
                            </a>
                        </div>
                        
                        <div class="col_221">
                            <a href="show.do?gid=${books[2].gid }" class="border_bottom">
                            	<img src="i.do?path=${books[2].image }" alt="" width="215px" height="182px">
                            </a>
                            <a href="show.do?gid=${books[3].gid }"><img src="i.do?path=${books[3].image }" alt="" width="215px" height="180px"></a>
                        </div>
                        
                        <div class="col_221">
                            <a href="show.do?gid=${books[4].gid }">
                            	<img src="i.do?path=${books[4].image }" alt="" width="215px" height="365px">
                            </a>
                        </div>
                        
                        <div class="col_219">
                            <a href="show.do?gid=${books[5].gid }" class="border_bottom">
                            	<img src="i.do?path=${books[5].image }" alt="" width="215px" height="182px">
                            </a>
                            <a href="show.do?gid=${books[6].gid }">
                            	<img src="i.do?path=${books[6].image }" alt="" width="215px" height="182px">
                            </a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
     		 <!-- 二楼:体育用品 -->
	        <div class="w SportsGoods">
	            <div class="box_hd">
	                <h3>最新体育用品</h3>
	            </div>
	            <div class="box_bd">
	                <div class="tab_content">   
	                    <div class="tab_list_item">
	                        <div class="col_210">
	                        
	                            <a href="show.do?gid=${SportsGoods[0].gid }">
	                                <img src="i.do?path=${SportsGoods[0].image }" alt="" width="200px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_329">
	                            <a href="show.do?gid=${SportsGoods[1].gid }">
	                                <img src="i.do?path=${SportsGoods[1].image }" alt="" width="322px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${SportsGoods[2].gid }" class="border_bottom">
	                            	<img src="i.do?path=${SportsGoods[2].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${SportsGoods[3].gid }">
	                            	<img src="i.do?path=${SportsGoods[3].image }" alt="" width="215px" height="180px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${SportsGoods[4].gid }">
	                            	<img src="i.do?path=${SportsGoods[4].image }" alt="" width="215px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_219">
	                            <a href="show.do?gid=${SportsGoods[5].gid }" class="border_bottom">
	                            	<img src="i.do?path=${SportsGoods[5].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${SportsGoods[6].gid }">
	                            	<img src="i.do?path=${SportsGoods[6].image }" alt="" width="215px" height="182px">
	                            </a>
	                        </div>
	                        
	                    </div>
	                </div>
	            </div>
	        </div>

			<!-- 三楼:生活用品 -->
			<div class="w DailyGoods">
	            <div class="box_hd">
	                <h3>最新生活用品</h3>
	            </div>
	            <div class="box_bd">
	                <div class="tab_content">   
	                    <div class="tab_list_item">
	                    
	                        <div class="col_210">
	                            <a href="show.do?gid=${DailyGoods[0].gid }">
	                                <img src="i.do?path=${DailyGoods[0].image }" alt="" width="200px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_329">
	                            <a href="show.do?gid=${DailyGoods[1].gid }">
	                                <img src="i.do?path=${DailyGoods[1].image }" alt="" width="322px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${DailyGoods[2].gid }" class="border_bottom">
	                            	<img src="i.do?path=${DailyGoods[2].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${DailyGoods[3].gid }">
	                            	<img src="i.do?path=${DailyGoods[3].image }" alt="" width="215px" height="180px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${DailyGoods[4].gid }">
	                            	<img src="i.do?path=${DailyGoods[4].image }" alt="" width="215px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_219">
	                            <a href="show.do?gid=${DailyGoods[5].gid }" class="border_bottom">
	                            	<img src="i.do?path=${DailyGoods[5].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${DailyGoods[6].gid }">
	                            	<img src="i.do?path=${DailyGoods[6].image }" alt="" width="215px" height="182px">
	                            </a>
	                        </div>
	                        
	                    </div>
	                </div>
	            </div>
	        </div>

			<!--四楼: 电子设备 -->
			<div class="w EleGoods">
	            <div class="box_hd">
	                <h3>最新设备</h3>
	            </div>
	            <div class="box_bd">
	                <div class="tab_content">   
	                    <div class="tab_list_item">
	                    
	                        <div class="col_210">
	                            <a href="show.do?gid=${EleGoods[0].gid }">
	                                <img src="i.do?path=${EleGoods[0].image }" alt="" width="200px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_329">
	                            <a href="show.do?gid=${EleGoods[1].gid }">
	                                <img src="i.do?path=${EleGoods[1].image }" alt="" width="322px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${EleGoods[2].gid }" class="border_bottom">
	                            	<img src="i.do?path=${EleGoods[2].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${EleGoods[3].gid }">
	                            	<img src="i.do?path=${EleGoods[3].image }" alt="" width="215px" height="180px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_221">
	                            <a href="show.do?gid=${EleGoods[4].gid }">
	                            	<img src="i.do?path=${EleGoods[4].image }" alt="" width="215px" height="365px">
	                            </a>
	                        </div>
	                        
	                        <div class="col_219">
	                            <a href="show.do?gid=${EleGoods[5].gid }" class="border_bottom">
	                            	<img src="i.do?path=${EleGoods[5].image }" alt="" width="215px" height="182px">
	                            </a>
	                            <a href="show.do?gid=${EleGoods[6].gid }">
	                            	<img src="i.do?path=${EleGoods[6].image }" alt="" width="215px" height="182px">
	                            </a>
	                            
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
		</div>




    <!-- 间距 -->
    <div class="w" style="height: 60px"></div>
    
    <!--footer模块制作-->
    <footer class="footer">
        <div class="w">
            <div class="mod_service">
                <ul>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>提供发票</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="mod_help">
                <dl>
                    <dt>服务指南</dt>              
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>              
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>              
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>              
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>              
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                    <dd><a href="">xxxxxxxx</a></dd>
                </dl>
                <dl>
                    <dt>帮助中心</dt>              
                    <dd>
                        <img src="images/wx_cz.jpg" alt="">
                        品优购客户端
                    </dd>
                </dl>
            </div>
            <div class="mod_copyright">
                <div class="links">连接</div>
                <div class="copyright">段数后按属地花生豆给皇帝of后覅哦亲却无法能陪你未分配
                    颇为激动抛弃我觉得<br>ihaisdhipahdihshdiashdipasdiasodoiashdnklans
                </div>
            </div>
        </div>
    </footer>
	</body>

</html>