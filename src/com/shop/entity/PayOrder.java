package com.shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "payorder")
public class PayOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int oid;
	private String out_trade_no;
	private String order_Id;
	private String gids;
	private float price;
	private Integer belong;
	
	
	
	public Integer getBelong() {
		return belong;
	}
	public void setBelong(Integer belong) {
		this.belong = belong;
	}
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getOrder_Id() {
		return order_Id;
	}
	public void setOrder_Id(String order_Id) {
		this.order_Id = order_Id;
	}
	public String getGids() {
		return gids;
	}
	public void setGids(String gids) {
		this.gids = gids;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	
	
	public PayOrder(int oid, String out_trade_no, String order_Id, String gids, float price, Integer belong) {
		super();
		this.oid = oid;
		this.out_trade_no = out_trade_no;
		this.order_Id = order_Id;
		this.gids = gids;
		this.price = price;
		this.belong = belong;
	}
	public PayOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "PayOrder [oid=" + oid + ", out_trade_no=" + out_trade_no + ", order_Id=" + order_Id + ", gids=" + gids
				+ ", price=" + price + ", belong=" + belong + "]";
	}
	
	
	
}
