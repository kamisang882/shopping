<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 		<link rel="shortcut icon" href="/favicon.ico">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/commons.css">
        <link rel="stylesheet" href="css/list.css">
        
</head>
<body>
   <!--header-->
    <div class="shortcut">
        <div class="w">
            <div class="fl">
                <ul>
                    <li>品优购欢迎您!&nbsp;&nbsp;&nbsp;</li>
                    <li>
                        <a href="#">请登录&nbsp;&nbsp;&nbsp;</a><a href="index.do" class="style_red">返回首页</a>
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <li>首页</li>
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

    <!--header模块-->
    <header class="header w">
        <!--logo模块SEO优化-->
        <div class="logo">
             <div class="box1">
        	<div class="box2">
            <a href="###"><div class="div2"></div></a>
            <a href="index.do"><div class="div1"></div></a>
         </div>
        </div>
        </div>
        <!--秒杀模块-->
        <div class="sk">
            <img src="images/sk.png" alt="">
        </div>
        <!--search模块-->
        <div class="search">
        	<form action="queryAll.do">
	            <input type="search" name="gname" id="" placeholder="语言开发">
	           <input type="submit" class="sub" value="搜索"/>
	         </form>
        </div>
        <!--shopcar-->
        <div class="shopcar"><a href="##">我的购物车</a>
        <i class="count">800000000000</i>
        </div>
    </header>

    <!--nav模块-->
    <div class="nav">
        <div class="w">
            <div class="sk_list">
                <ul>
                    <li><a href="queryAll.do?tid=1">书籍</a></li>
                    <li><a href="queryAll.do?tid=2">体育用品</a></li>
                     <li><a href="queryAll.do?tid=3">生活用品</a></li>
                    <li><a href="queryAll.do?tid=4">电子设备</a></li>
                    
                </ul>
            </div>
        </div>
    </div>

    <!--列表主体-->
    <div class="w sk_container">
        <div class="sk_hd"><img src="upload/bg_03.png" alt=""></div>
        <div class="sk_bd">
            <ul>
            <c:forEach items="${page.list }" var="g">
                <li>
                <a href="show.do?gid=${g.gid }"><img src="i.do?path=${g.image }" alt="" width="300px" height="400px"></a>
               	<section>
               		<h3>￥${g.gprice }</h3>
               		<p>${g.ginttro }</p>
               	</section>
                
                </li>
             </c:forEach>
            </ul>
        </div>
    </div>
    
    <!-- 分页模块 -->
    <div class="w">
    	<div class="tab">
		    <table>
		            <tr>
						<td colspan="10" align="center">
							<button><a href="?pageNum=1">首页</a></button>
							<button><a href="?pageNum=${page.pageNum-1 < 1?page.pageNum : page.pageNum-1}">上一页</a></button>
							<button><a href="?pageNum=${page.pageNum+1 > page.totalPage?page.pageNum : page.pageNum+1}">下一页</a></button>
							<button><a href="?pageNum=${page.totalPage }">尾页</a></button>
					   </td>
				   </tr>
			</table>
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
    </div>
</body>
</html>