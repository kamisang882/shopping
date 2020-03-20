<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H1>支付宝demo测试</H1>
<hr>
<form action="pay.do" method="post">
    *商户订单 :<br>
    <input type="text" name="out_trade_no"><br>
    *订单名称 :<br>
    <input type="text" name="subject"><br>
    *付款金额 :<br>
    <input type="text" name="total_amount"><br>
     商品描述 :<br>
    <input type="text" name="body"><br>
    <input type="submit" value="支付宝支付">
</form>

</body>
</html>