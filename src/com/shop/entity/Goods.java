package com.shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "goods")
public class Goods {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer gid;
	private String image;
	private String gname;
	private String ginttro;
	private double gprice;
	private String gdate;
	
	@ManyToOne
	@JoinColumn(name = "tid")
	@Fetch(FetchMode.JOIN)
	private Goods_Type gtyp;
	
	@ManyToOne
	@JoinColumn(name = "uid")
	@Fetch(FetchMode.JOIN)
	private User beuser;

	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGinttro() {
		return ginttro;
	}

	public void setGinttro(String ginttro) {
		this.ginttro = ginttro;
	}

	public double getGprice() {
		return gprice;
	}

	public void setGprice(double gprice) {
		this.gprice = gprice;
	}

	public String getGdate() {
		return gdate;
	}

	public void setGdate(String gdate) {
		this.gdate = gdate;
	}

	public Goods_Type getGtyp() {
		return gtyp;
	}

	public void setGtyp(Goods_Type gtyp) {
		this.gtyp = gtyp;
	}
	
	public User getBeuser() {
		return beuser;
	}

	public void setBeuser(User beuser) {
		this.beuser = beuser;
	}
	

	public Goods(Integer gid, String image, String gname, String ginttro, double gprice, String gdate,
			Goods_Type gtyp, User beuser) {
		super();
		this.gid = gid;
		this.image = image;
		this.gname = gname;
		this.ginttro = ginttro;
		this.gprice = gprice;
		this.gdate = gdate;
		this.gtyp = gtyp;
		this.beuser = beuser;
	}

	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", image=" + image + ", gname=" + gname + ", ginttro=" + ginttro + ", gprice="
				+ gprice + ", gdate=" + gdate + ", gtyp=" + gtyp + ", beuser=" + beuser + "]";
	}

	
	

}
