package com.shop.dao;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.shop.entity.*;

@Repository
@Transactional
public class shopDaoImpl implements shopDao {

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private HibernateTemplate template;
	

	@Override											//默认查询所有商品，当tid部位空时根据商品类型查询	，gname不为空时根据名称查询
	public List<Goods> queryAll(Map<String, Object> map) {
		String Hql = "from Goods where 1=1";
		if(map.get("tid")!=null && map.get("tid")!="") {
			System.out.println("进入if条件");
			Hql += " and tid = '"+map.get("tid")+"'";
		}
		if(map.get("gname")!=null && map.get("gname")!="") {
			Hql +=" and gname like '%"+map.get("gname"+"")+"%'";
		}
		System.out.println("---------------------------");
		System.out.println(Hql);
		SessionFactory factory = template.getSessionFactory();
		Query query = factory.getCurrentSession().createQuery(Hql);
		query.setFirstResult(Integer.parseInt(map.get("startIndex")+""));
		query.setMaxResults(Integer.parseInt(map.get("pageSize")+""));
		List<Goods> list = query.list();
		for (Goods goods : list) {
			System.out.println(goods);
		}
		return list;
	}

	@Override
	public List<Goods> showGoods(Integer gid) {			//点击商品查询商品详细信息,为分页提供服务
		Query query = sessionFactory.getCurrentSession().createQuery("from Goods where gid=?");
		query.setInteger(0, gid);
		List<Goods> list =query.list();
		return list;
	}
	
	
	@Override
	public int queryGoodsNum() {						//查询商品总记录数
		SessionFactory factory = template.getSessionFactory();
		Query query = factory.getCurrentSession().createQuery("select count(*) from Goods");
		Long numbers = (Long) query.uniqueResult();
		int num = numbers.intValue();
		return num;
	}
	
	/**添加商品开始**/
	
	public List<Goods_Type> queryTypeAll() {			//查询所有商品类型
		Query query = sessionFactory.getCurrentSession().createQuery("from Goods_Type");
		List<Goods_Type> list = query.list();
		return list;
	}


	@Override
	public boolean addgoods(Goods goods) {				//添加商品
	
		int flg = (int) template.save(goods);
		if(flg !=0) {
		return true;
	}else 
		return false;

}
	/**添加商品结束**/
	


	

	/***以下五种类型查询为首页提供数据****/
	@Override
	public List<Goods> QueryNewGoods() {				//查询4个最新商品
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods order by gdate desc");
		query.setMaxResults(4);
		List<Goods> list =query.list();
		return list;
	}


	@Override
	@Test
	public List<Goods> QueryBook() {					//查询7本最新登记书籍
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods where tid = 1 order by gdate desc");
		query.setMaxResults(7);
		List<Goods> book = query.list();
		return book;
	}


	@Override
	public List<Goods> SportsGoods() {					//查询7中最新登记运动产品
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods where tid = 2 order by gdate desc");
		query.setMaxResults(7);
		List<Goods> SportsGoods = query.list();
		return SportsGoods;
	}


	@Override
	public List<Goods> DailyGoods() {					//查询7中最新登记生活用品
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods where tid = 3 order by gdate desc");
		query.setMaxResults(7);
		List<Goods> DailyGoods = query.list();
		return DailyGoods;
	}


	@Override
	public List<Goods> EleGoods() {						//查询7中最新登记电子设备
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods where tid = 4 order by gdate desc");
		query.setMaxResults(7);
		List<Goods> EleGoods = query.list();
		return EleGoods;
	}

	@Override
	public int shopcarnum(int uid) {							//查询购物车商品数量
		Query query = sessionFactory.getCurrentSession().createSQLQuery("select count(*) FROM shopcar where uid = ?");
		Integer user = (Integer) uid;
		query.setInteger(0, user);
		String num1 = query.uniqueResult().toString();
		int num = Integer.parseInt(num1);
		return num;
	}
	
	@Override
	public boolean shopcar(Map<String, Object> map) {		//添加商品到购物车
		shopcar car = new shopcar(null,(int) map.get("uid"),(int) map.get("gid"),1);
		Integer num = (Integer) template.save(car);
		System.out.println(num);
		return false;
	}

	@Override
	public List<Goods> showcar(int i) {						//查询用户购物车中商品
		Query query1 = sessionFactory.getCurrentSession().createQuery("SELECT gid FROM shopcar where belong = 1");
		List<Integer> shopcar_num = query1.list();
		String car = shopcar_num.toString();
		car = car.replace("[", "");
		car = car.replace("]", "");
		Query query2 = sessionFactory.getCurrentSession().createQuery("FROM Goods where gid in ("+car+")");
		List<Goods> carGoods = query2.list();
		return carGoods;
	}

	@Override
	public int deleteCollection(Integer gid) {
		Query query = sessionFactory.getCurrentSession().createQuery("delete FROM shopcar where gid=?");
		query.setInteger(0, gid);
		int del = query.executeUpdate();
		return del;
	}

	@Override
	public boolean saveOrder(Map<String, Object> map) {
	PayOrder payorder = new PayOrder();
	payorder.setGids((String) map.get("subject"));
	payorder.setOrder_Id((String) map.get("out_trade_no"));
	payorder.setPrice(Float.parseFloat((String) map.get("total_amount")));
	payorder.setOut_trade_no((String) map.get("trade_no"));
	payorder.setBelong((Integer) map.get("belong"));
	
	System.out.println(map.get("order_Id"));
	System.out.println(map.get("out_trade_no"));
	int flg = (int) template.save(payorder);
	if(flg !=0) {
	return true;
		}else 
	return false;
	}

	@Override
	public List<PayOrder> showOrder(User user) {

		Query query = sessionFactory.getCurrentSession().createQuery("FROM PayOrder where belong = ?");
		query.setInteger(0, user.getUid());
		List<PayOrder> order = query.list();
		return order;
	}

	@Override
	public List<Goods> orderDetails(String parameter) {
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Goods where gid in ("+ parameter +")");
		List<Goods> goods = query.list();
		return goods;
	}

}
