<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/commons.css">
    <link rel="stylesheet" href="css/list.css">
    <link rel="stylesheet" href="css/show.css">
    <link rel="stylesheet" href="css/addgoods.css">
    <link rel="stylesheet" href="css/shopcar.css">
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
                    <td>订单编号</td>
                    <td>支付金额</td>
                    <td>支付宝交易号</td>
                    <td></td>
                    <td>卖家</td>
                    <td align="center">订单详情</td>
                    <td></td>
                    <td align="center">删除</td>
                </tr>
                <c:forEach items="${order }" var="g">
                <tr class="tr2">
                    <td>${g.order_Id }</td>
                    <td>${g.price }</td>
                    <td>${g.out_trade_no }</td>
                    <td></td>
                    <td class="style_red">admin</td>
                    <td align="center"><a href="orderDetails.do?gids=${g.gids }"><button class="pay">详情</button></a></td>
                    <td></td>
                    <td align="center"><button class="del">删除</button></td>
                </tr>
                </c:forEach>
            </table>
            
            <div class="allpay w">
                <button>清空订单</button>
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