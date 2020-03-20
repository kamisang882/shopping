package com.shop.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.AlipayApiException;
import com.shop.entity.*;
import com.shop.service.shopService;

import com.shop.util.AlipayConfig;
import com.shop.util.FileUpload;
import com.shop.util.PageUtil;
import com.shop.util.orderID;


@Controller
public class MainController {
	@Autowired//自动装载实例
	private shopService service;
	
	@RequestMapping("/index.do")//进入首页请求处理
	public String QueryNewGoods(Model model) {
		List<Goods> newGoods = service.QueryNewGoods();//查询最新商品
		List<Goods> book = service.QueryBook();//查询最新书籍
		List<Goods> SportsGoods = service.SportsGoods();//查询最新体育用品
		List<Goods> DailyGoods = service.DailyGoods();//查询最新生活用品
		List<Goods> EleGoods = service.EleGoods();//查询最新电子设备
		int shop_car_num = service.shopcarnum(1);
		model.addAttribute("books", book);
		model.addAttribute("SportsGoods", SportsGoods);
		model.addAttribute("DailyGoods", DailyGoods);
		model.addAttribute("EleGoods", EleGoods);
		model.addAttribute("newGoods", newGoods);
		model.addAttribute("num", shop_car_num);
		return "index";
	}
	
	@RequestMapping("/queryAll.do")//进入商品中心请求处理
	public String queryTypeAll(Model model,@RequestParam(defaultValue = "1")Integer pageNum,String gname,Integer tid) {
		int totalRecords = service.queryGoodsNum();
		PageUtil page = new PageUtil(totalRecords,pageNum);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startIndex", page.getStartIndex());
		map.put("pageSize", page.getPageSize());
		map.put("tid", tid);				//把搜索类型放入map集合
		map.put("gname", gname);			//把搜索名称放入map集合
		List<Goods> list = service.queryAll(map);
		page.setList(list);
		model.addAttribute("page", page);
		model.addAttribute("map", map);
		/*List<Goods> list = service.queryAll();
		model.addAttribute("list", list);*/
		return "list";
	}
	
	@RequestMapping("i.do")//查看图片
	@ResponseBody
	public void image(String path,HttpServletRequest request,HttpServletResponse response) {
		FileUpload.lookImg(path, request, response);
	}
	
	@RequestMapping("show.do")//显示商品详细信息
	public String showGoods(Model model,Integer gid) throws Exception {
		List<Goods> list = service.showGoods(gid);
		model.addAttribute("list", list);
		return "goods_show";
	}
	
	@RequestMapping("add.do")
	public void test(HttpServletResponse response) throws IOException {
		response.sendRedirect("goods_add.jsp");
	}
	
	@RequestMapping("queryTypeAll.do")//查询商品种类
	@ResponseBody
	public List<Goods_Type> addGoods(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		List<Goods_Type> list = service.queryTypeAll();
		return list;
	}
	
	@RequestMapping("addgoods.do")	//添加商品
	@ResponseBody
	public void addgoods(Goods goods,MultipartFile file,HttpServletResponse response) throws IOException {
		goods.setBeuser(new User(1,null,null));
		String upload = FileUpload.upload(file);
		goods.setImage(upload);
		boolean flg = service.addgoods(goods);
		if(flg == true) {
			response.sendRedirect("queryAll.do");
		}
	}
	
	@RequestMapping("shopcar.do")	//收藏到购物车
	@ResponseBody
	public void shopcar(Integer gid,Integer uid) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gid", gid);
		map.put("uid", uid);
		boolean flg = service.shopcar(map);
	}
	
	@RequestMapping("showcar.do")	//展示购物车
	public String showcar(Model model) {
		List<Goods> listcar = service.showcar(1);
		model.addAttribute("listcar", listcar);
		return "show_car";
	}
	
	@RequestMapping("deleteCollection.do")	//删除收藏
	@ResponseBody
	public int deleteCollection(Integer gid) {
		int del = service.deleteCollection(gid);
		return del;
		
	}
	
	private String subject;//订单商品ID
	
	@RequestMapping("payAll.do")			//获取支付信息
	@ResponseBody
	public PayOrder payAll(HttpServletRequest request,HttpServletResponse response,float price,String goodsID) throws ServletException, IOException {
		PayOrder or = new PayOrder();
		orderID  oid = new orderID();
		or.setOrder_Id(oid.orderid());
		or.setGids(goodsID);
		or.setPrice(price);
		subject = goodsID;
	
		return or;
	}
	
	@RequestMapping("alipay.do")				//支付宝支付
	public String alipay(Model model,HttpServletRequest req){
		model.addAttribute("price", (req.getParameter("price")));
		model.addAttribute("Order_Id", (req.getParameter("Order_Id")));
		model.addAttribute("gids", (req.getParameter("gids")));
		return "alipay.trade.page.pay";
}
	
	@RequestMapping("saveOrder.do")				//验证支付是否成功，如果成功就生成订单并存储
	public void saveorder(HttpServletRequest request,HttpServletResponse response) throws AlipayApiException, IOException {
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

		//——请在这里编写您的程序（以下代码仅作参考）——
		if(signVerified) {
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
			
			//付款金额
			String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
			
			//System.out.println("trade_no:"+trade_no+"out_trade_no:"+out_trade_no+"total_amount:"+total_amount);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("out_trade_no", out_trade_no);
			map.put("trade_no", trade_no);
			map.put("total_amount", total_amount);
			map.put("subject", subject);
			map.put("belong", 1);
			boolean flg = service.saveOrder(map);
			if(flg == true) {
				response.sendRedirect("showOrder.do");
			}
		}else {
			System.out.println("验签失败");
		}
	
	}

	@RequestMapping("showOrder.do")			//查看订单
	public String showOrder(Model model) {
		User user = new User(1,null,null);
		List<PayOrder> order = service.showOrder(user);
		model.addAttribute("order", order);
		return "showOrder";
	}
	
	@RequestMapping("orderDetails.do")		//查看详细信息 
	public String orderDetails(Model model,HttpServletRequest request){
		List<Goods> goods = service.orderDetails(request.getParameter("gids"));
		model.addAttribute("goods", goods);
		return "orderDetails";
	}

}