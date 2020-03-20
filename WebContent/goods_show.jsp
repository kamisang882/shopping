<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/commons.css">
    <link rel="stylesheet" href="css/list.css">
    <link rel="stylesheet" href="css/show.css">
    <link rel="stylesheet" href="css/addgoods.css">
</head>
<body>
	 <!--header-->
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
                    <li class="arrow-icon">我的订单</li>
                    <li></li>
                    <li>已购商品</li>
                    <li></li>
                    <li class="arrow-icon">修改商品</li>
                    <li></li>
                    <li class="arrow-icon"><a href="add.do">添加商品</a></li>
                </ul>
            </div>
        </div>
    </div>
	<div class="nav"></div>
    <div class="logo">
            <div class="box11">
        	<div class="box22">
            <a href="index.do"><div class="div11"></div></a>
            <a href="queryAll.do"><div class="div22"></div></a>
         </div>
        </div>
     </div>

    <!--商品展示-->
    <c:forEach items="${list }" var="g">
    <div class="w">
        <div class="show">
            <div class="images"><img src="i.do?path=${g.image }" height="500px" width="400px"></div>
            <div class="information">
                <div class="detales">
                    <h1>${g.gname }</h1>
                    <h2>商品描述</h2>
                    <textarea>${g.ginttro }</textarea>
                    <h2>登记日期:${g.gdate }</h2>
                   
                    <c:choose>
                    	<c:when test="${g.gtyp.tid==1 }">
                    		<h2>类型:书籍</h2>
                    	</c:when>
                    	<c:when test="${g.gtyp.tid==2 }">
                    		<h2>类型:体育用品</h2>
                    	</c:when>
                    	<c:when test="${g.gtyp.tid==3 }">
                    		<h2>类型:生活用品</h2>
                    	</c:when>
                    	<c:when test="${g.gtyp.tid==4 }">
                    		<h2>类型:电子设备</h2>
                    	</c:when>
                    </c:choose>
                  
                    <h2 class="price">价格 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${g.gprice }</h2>
                </div>
               
                <div class="bnt">
                	<a href="showcar.do">
                		<div class="car"></div>
                	</a>
                 	<a href="shopcar.do?gid=${g.gid }&uid=${g.beuser.uid}" title="查看购物车">
                 		<button class="bnt3">收藏到购物车</button>
                 	</a>
                    <button class="bnt1">联系卖家</button>
                    <button class="bnt2">购买商品</button>
                </div>
            </div>
        </div>
    </div>
	</c:forEach>


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
    </div>
</body>
</html>