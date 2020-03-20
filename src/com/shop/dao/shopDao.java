package com.shop.dao;

import java.util.List;
import java.util.Map;

import com.shop.entity.Goods;
import com.shop.entity.Goods_Type;
import com.shop.entity.PayOrder;
import com.shop.entity.User;

public interface shopDao {

	public List<Goods_Type> queryTypeAll();

	public boolean addgoods(Goods goods);

	public List<Goods> queryAll(Map<String, Object> map);

	public int queryGoodsNum();

	public List<Goods> showGoods(Integer gid);

	public List<Goods> QueryNewGoods();

	public List<Goods> QueryBook();

	public List<Goods> SportsGoods();

	public List<Goods> DailyGoods();

	public List<Goods> EleGoods();

	public int shopcarnum(int uid);
	
	public boolean shopcar(Map<String, Object> map);

	public List<Goods> showcar(int i);

	public int deleteCollection(Integer gid);

	public boolean saveOrder(Map<String, Object> map);

	public List<PayOrder> showOrder(User user);

	public List<Goods> orderDetails(String parameter);


}
