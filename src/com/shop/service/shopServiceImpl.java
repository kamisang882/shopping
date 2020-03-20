package com.shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.shopDao;
import com.shop.entity.Goods;
import com.shop.entity.Goods_Type;
import com.shop.entity.PayOrder;
import com.shop.entity.User;

@Service
public class shopServiceImpl implements shopService {

	@Autowired
	private shopDao dao;
	@Override
	public List<Goods_Type> queryTypeAll() {
		
		return dao.queryTypeAll();
	}
	
	@Override
	public boolean addgoods(Goods goods) {
		boolean flg = dao.addgoods(goods);
		
		return flg;
	}
	
	@Override
	public int queryGoodsNum() {
		int num = dao.queryGoodsNum();
		return num;
	}
	
	@Override
	public List<Goods> queryAll(Map<String, Object> map) {
		List<Goods> list = dao.queryAll(map);
		return list;
	}

	@Override
	public List<Goods> showGoods(Integer gid) {
		List<Goods> list = dao.showGoods(gid);
		return list;
	}

	@Override
	public List<Goods> QueryNewGoods() {
		List<Goods> list = dao.QueryNewGoods();
		return list;
	}

	@Override
	public List<Goods> QueryBook() {
		List<Goods> book = dao.QueryBook();
		return book;
	}

	@Override
	public List<Goods> SportsGoods() {
		List<Goods> SportsGoods = dao.SportsGoods();
		return SportsGoods;
	}

	@Override
	public List<Goods> DailyGoods() {
		List<Goods> DailyGoods = dao.DailyGoods();
		return DailyGoods;
	}

	@Override
	public List<Goods> EleGoods() {
		List<Goods> EleGoods = dao.EleGoods();
		return EleGoods;
	}

	@Override
	public boolean shopcar(Map<String, Object> map) {
		boolean flg = dao.shopcar(map);
		return flg;
	}

	@Override
	public int shopcarnum(int uid) {
		int num = dao.shopcarnum(uid);
		return num;
	}


	@Override
	public List<Goods> showcar(int i) {
		List<Goods> carlist = dao.showcar(i);
		return carlist;
	}

	@Override
	public int deleteCollection(Integer gid) {
		int del = dao.deleteCollection(gid);
		return del;
	}

	@Override
	public boolean saveOrder(Map<String, Object> map) {
		boolean flg = dao.saveOrder(map);
		return flg;
	}

	@Override
	public List<PayOrder> showOrder(User user) {
		List<PayOrder> order = dao.showOrder(user);
		return order;
	}

	@Override
	public List<Goods> orderDetails(String parameter) {
		List<Goods> goods = dao.orderDetails(parameter);
		return goods;
	}

}
