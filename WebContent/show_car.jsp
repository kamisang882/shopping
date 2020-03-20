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
    <link rel="stylesheet" href="css/shopcar.css">
<script type="text/javascript" src="js/shopcar.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/Jquery.js"></script>
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

	<div class="w lis">
	    <table>
	    	<tr class="tr1">
	    		<td><input id="qx" type="checkbox" class="check-all check">全选</td>
	    		<td>商品名称</td>
	    		<td>商品日期</td>
	    		<td>商品价格</td>
	    		<td>商品介绍</td>
	    		<td align="center">商品图片</td>
	    		<td></td>
	    		<td align="center">删除</td>
	    		<td align="center">支付</td>
	    	</tr>
	    	<c:forEach items="${listcar }" var="g">
	    	<tr class="tr2">
	    		<td hidden=true>${g.gid }</td>
	    		<td><input type="checkbox" class="check-one check"></td>
	    		<td>${g.gname }</td>
	    		<td>${g.gdate }</td>
	    		<td>${g.gprice }</td>
	    		<td>${g.ginttro }</td>
	    		
	    		<td>
	    			<a href="show.do?gid=${g.gid }">
	    				<div class="tudou">
		    				<div class="mask"></div>
			    			<img src="i.do?path=${g.image }" alt="" width="180px" height="80px">
	    				</div>
	    			</a>
	    		</td>	
	    		
	    		<td></td>	
	    		<td align="center"><button class="del" onclick="delete_collection(${g.gid})">删除</button></td>
	    		<td align="center"><button class="pay">去结算</button></td>
	    	</tr>
	    	</c:forEach>
	    </table>
	    
	    <div class="allpay w">
	    	<section class="section1">
		    	<h2>已选商品</h2>
		    	<p id="selectTotal">0</p>
		    </section>
	    	<section class="section2">
	    		<h2>总价</h2>
	    		<p id="priceTotal">0</p>
	    	</section>
	    	<button onclick="pay()">结算购物车</button>
	    </div>
	</div>
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