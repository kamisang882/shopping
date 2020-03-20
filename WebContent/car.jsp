<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=" utf-8">
 <style type="text/css">
h1 {
    text-align: center;
}

table {
    margin: 0 auto;
    width: 60%;
    border: 2px solid #aaa;
    border-collapse: collapse;
}

table th, table td {
    border: 2px solid #aaa;
    padding: 5px;
}

th {
    background-color: #eee;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/Jquery.js"></script>
</head>
<body>
    <h1>真划算</h1>
    <table id="tb1">
        <tr>
            <th>商品</th>
            <th>单价(元)</th>
            <th>颜色</th>
            <th>库存</th>
            <th>好评率</th>
            <th>操作</th>
        </tr>
        <tr>
            <td>罗技M185鼠标</td>
            <td>80</td>
            <td>黑色</td>
            <td>893</td>
            <td>98%</td>
            <td align="center"><input type="button" value="加入购物车"
                onclick="add_shoppingcart(this);" /></td>
        </tr>
        <tr>
            <td>微软X470键盘</td>
            <td>150</td>
            <td>黑色</td>
            <td>9028</td>
            <td>96%</td>
            <td align="center"><input type="button" value="加入购物车"
                onclick="add_shoppingcart(this);" /></td>
        </tr>
        <tr>
            <td>洛克iphone6手机壳</td>
            <td>60</td>
            <td>透明</td>
            <td>672</td>
            <td>99%</td>
            <td align="center"><input type="button" value="加入购物车"
                onclick="add_shoppingcart(this);" /></td>
        </tr>
        <tr>
            <td>蓝牙耳机</td>
            <td>100</td>
            <td>蓝色</td>
            <td>8937</td>
            <td>95%</td>
            <td align="center"><input type="button" value="加入购物车"
                onclick="add_shoppingcart(this);" /></td>
        </tr>
        <tr>
            <td>金士顿U盘</td>
            <td>70</td>
            <td>红色</td>
            <td>482</td>
            <td>100%</td>
            <td align="center"><input type="button" value="加入购物车"
                onclick="add_shoppingcart(this);" /></td>
        </tr>
    </table>

    <h1>购物车</h1>
    <table>
        <thead>
            <tr>
                <th>商品</th>
                <th>单价(元)</th>
                <th>数量</th>
                <th>金额(元)</th>
                <th>删除</th>
            </tr>
        </thead>
        <tbody id="goods">

        </tbody>
        <tfoot>
            <tr>
                <td colspan="3" align="right">总计</td>
                <td id="total"></td>
                <td></td>
            </tr>
        </tfoot>
    </table>

</body>
<script type="text/javascript">
function add_shoppingcart(btn) {
    var name = $(btn).parent().siblings().eq(0).html();
    var price = $(btn).parent().siblings().eq(1).html();
    var $tr = $('<tr>'
            + '<td>'
            + name
            + '</td>'
            + '<td>'
            + price
            + '</td>'
            + '<td align="center">'
            + '<input type="button" value="-" οnclick="decrease(this);"/>'
            + '<input type="text" size="3" readonly value="1"/>'
            + '<input type="button" value="+" οnclick="increase(this);"/>'
            + '</td>'
            + '<td>'
            + price
            + '</td>'
            + '<td align="center"><input type="button" value="x" οnclick="del(this);"/></td>'
            + '</tr>');
    // 将此行tr追加到tbody下
    $("#goods").append($tr);
    sum();
}

// 从购物车中删除物品
function del(btn) {
    // 通过点击按钮,获取当前对象的父类的父类,就是<input>标签的父类<td>的父类<tr>,然后移除即可.
    // <tr>是行 <td>是列
    $(btn).parent().parent().remove();
    sum();
};
// 购物车中实现点击按钮增加数量
function increase(btn) {
    // 获取按钮的哥哥的内容(数量/String)
    var amount = $(btn).prev().val();
    // 数量加1,再重新设置文本框
    $(btn).prev().val(++amount);
    // 获取按钮的父亲的哥哥的内容(单价)
    var price = $(btn).parent().prev().html();
    // 计算总价
    var mny = price * amount;
    // 写入按钮的父亲的弟弟里(金额)
    $(btn).parent().next().html(mny);
    sum();
};

// 减法
function decrease(btn) {
    // 获取按钮的弟弟的内容(数量)
    var amount = $(btn).next().val();
    // 数量不能小于1
    if (amount <= 1) {
        return;
    }
    // 再重新设置文本框中的值
    $(btn).next().val(--amount);
    // 按钮的父亲的哥哥的内容(单价)
    var price = $(btn).parent().prev().html();
    // 计算总价
    var mny = price * amount;
    // 写入按钮的父亲的弟弟里(金额)
    $(btn).parent().next().html(mny);
    sum();
};

// 求订单的总计
function sum() {
    // 获取tbody下的所有行
    var $trs = $("#goods tr");
    // 遍历他们
    var sum = 0;
    for (var i = 0; i < $trs.length; i++) {
        // 获取每一行
        var $tr = $trs.eq(i);
        // 获取该行中第四列的值(金额)
        var mny = $tr.children().eq(3).html();
        sum += parseFloat(mny);
    }
    // 写入到合计
    $("#total").html(sum);
};

</script>
</html>