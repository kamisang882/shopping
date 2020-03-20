package com.shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shopcar")
public class shopcar {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sid;
	
	private Integer uid;
	
	private Integer gid;
	
	private Integer belong;

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Integer getBelong() {
		return belong;
	}

	public void setBelopng(Integer belong) {
		this.belong = belong;
	}

	public shopcar(Integer sid, Integer uid, Integer gid, Integer belong) {
		super();
		this.sid = sid;
		this.uid = uid;
		this.gid = gid;
		this.belong = belong;
	}

	public shopcar() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "shopcar [sid=" + sid + ", uid=" + uid + ", gid=" + gid + ", belopng=" + belong + "]";
	}
			
	
}
