package com.shop.util;

import java.util.Date;

public class orderID {	//ªÒ»°∂©µ•∫≈

	public String orderid() {
		Date date = new Date();
		
		Long data = date.getTime();
		String id =  data.toString();
		
		data = (long) date.getSeconds();
		id+= data.toString();
		
		data = (long) date.getMinutes();
		id+=data.toString();
		
		return id;
	}

}
