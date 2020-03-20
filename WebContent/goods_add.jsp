<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/Jquery.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/commons.css">
	<link rel="stylesheet" href="css/addgoods.css">
	<link rel="stylesheet" href="css/base.css">
<script type="text/javascript">
	$(function(){
	/**加载页面时，发送post请求查询下列信息*/
	$.post("queryTypeAll.do",function(data){
			
			var str = "";
			for (var i in data) {
				str+="<option value='"+data[i].tid+"'>"+data[i].Type+"</option>"
			}			
			$("#tid").append(str);
		},"json")
	})

</script>


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
	<div style="height: 80px;"></div>
	 
	<div class="w box">
		<form action="addgoods.do"method="post" enctype="multipart/form-data">
		<div>商品图片:<input type="file" name="file" class="fil">  <img alt="" src="./PNG/image.png"></div>
		<br>
		<div><p>商品介绍:</p><textarea rows="10" cols="50" name="ginttro"></textarea> <img alt="" src="./PNG/apache.png"> </div>
      	<br>
       	<div class="gname"> 商品名称:<input type="text" name="gname"> <img alt="" src="./PNG/books.png"></div>
		<br>
		<div class="gprice">商品价格:<input type="text" name="gprice"> <img alt="" src="./PNG/coin-yen.png"> </div>
		<br>
		<div>生产日期:<input type="date" name="gdate"> <img alt="" src="./PNG/calendar.png"> </div>
		<br>
		<div>商品类型:<select id = "tid" name="gtyp.tid">
		
					<option>请选择</option>
				</select><br><br>
		<input type="submit" value="添加" class="sub"></div>
		</form>
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