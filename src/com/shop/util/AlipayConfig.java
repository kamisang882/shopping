package com.shop.util;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101800717928";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCY0luHmNvM+DFR8yMIdDNzsS5wQ5pmCCX4Jxk1FJlMsA7YqnlUVOxGQ5W2pP9UG3O02wc1qLcjTdMlkBlb1GL0o293up/OS8UD5EecP4e0I4FFcsWKqO4YGtKHwr1guQ7baZ6kBJQGHaZcxv+VtrW/+3vAjaT5jOa/usl1iPoO3eWljAus0BvyLtRtRxh4NqHyDNzwHvosdMxvvyL5DA2wm+MhKuglcrdt+L//U/TurU5jiQMj5xsTmHpV9WcBBRgYO0A1bWBoqtXjfadEtcddCl6hXftt5plnDH4zpDj0OoyREAUHCWXtXixEYVBeSLBHdJAEsd6ItNqi6Vnfak6HAgMBAAECggEBAI6Swl3RGE8zxh+kbCy47D+lL6QBDgze0T2gjH3fB95p6o/tC2DIEd7DsutBKAx5yAsUxLck/ibrtm+27lGj5eZCi/3xmKHIQrgMw1pcUuiWr0Xxe6aPUAIhFAUgg7m3LMs60IxI0SibhNfNuCke2pWPs7bC7wT6lVSOmOEUt+YhYVEjq2m4cgw/YlIJP8n2JMlTfOiTjSVh4QEDirfxADatMnifKYvNwq32hOjKEvcgWcHw587SL0WBSYzbHxXKQW9HtG03SGtoelW28MaHglTYkh3Je90wOg1OleoGaLdk84ts1nhU2H1dzpfJ2yBjHmyWtLL+uDia+EH7eosmEoECgYEA0CQhZlDYb5PM2au5O4E54KJjCceekdqPcTdtu9ptv1/1P0VNkOtOc82i4366EbRO3HcX6MGSOsGHU1P10WeI1PyOB/hK8S4y6r8j8yvvRy2iFpUhOsN+GlZs+nRiDN+r47/f1yaWR6az5Y6iSKS897WnqGVCK2YAUuBUSD9PVCcCgYEAu/Xxv7kWHRRCSCAbMOZy9WqGnqliFAYZWTtL/Gmbt7xtFujHXeWo586fHxHcIov51jEp/hb1KWBPCjFEOdNcSyyWVbyDCbMiHr/1ShfaYp+oBz2FCbm9kgrROcTiabjFlIrP2qbMQ45UAglxI+bwn6iDor1tBftcAXRnepcZzqECgYBbFSSEiKZeFViUfIA/mOpB8e3TDsbGXtVcnvvnM8vI7m389Q/fdglLxdYdJYy5SKUl9vvAgEzEZ4IXpesxatRHGAnzVOU+q4/eiCxsMnKwPDjtFu+GrpvVXLKt2xY5OfwXWxTSKvGig0HAF+3OSkDjSVwH5d/R6/4CRma7gvDtCwKBgFJ5r/N1rqth2Ve2ptfFNwpTDPEP2BZ7OqI577S5TnfH+YJE8D5WaNAWjSHf/101WJJRDmENB9R5CxWo2owZH3VpAipqxoD6Fm2xw1sYrl36Oou6xeanlvQ/ROF5b/P9/MyaQGxsJlM6X8hpBjk/u7QDCIffYLhwPEXzIvja1pshAoGAQQ/f/Yu8VUbG17YxtyCTyJk98iyCNIYKH8wQvfxfOLUMaPCiw3/ujZ6h+mFbZrHZ/iJ/7tRB/qFODjEh/9ElXAqeDHjsbjwtsG7IWwM+X7qjQvHho1cIP6f3JW+Pehl3LMUPGIIZga5K9m8B4JLGgZlV508ukiRxB+5UzijruQQ=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvNTNo5IdG2+WD+QbcgCVhP5osyDgpVukgvkp3zs1EYvuBvL6eEJDouhcZpw3D2iff8lbVW5RkuKTZbXSYN4L6hHh3SRiLmgvus51oE56SuPimbG/PNZ61kuJcSEupMRiTtGbgxqWB7PfpLGGk4oDqg3knggvOp77CzlydziY1can91snUR1SZNxSwXVb75rnp3gbANiveTR6zWJqJzp3DwBRlIySqOSYDP/J/MTFVFcfIkjDCvJiGL21583XykbZ+48blzezGS/wr1Vr0D/exb4t88o8HBx53Fx1voHYGS7VP0URAoK5JGLvpced7h0g3chIKVB3g4mwd+OBxrt6WQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8088/goods_system/saveOrder.do";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8088/goods_system/saveOrder.do";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = 	"https://openapi.alipaydev.com/gateway.do";
	
	
	// 支付宝网关
	public static String log_path = "";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

