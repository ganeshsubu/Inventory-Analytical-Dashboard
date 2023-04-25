package com.module;

import java.util.Date;

public class Med {
	private int id;
	private String mname;
	private String mtype;
	private int quantity;
	private int price;
	private Date  expiry;
	private Date current;
	public Med(String mname, String mtype, int quantity, int price, Date date, Date currentDate) {
		this.mname = mname;
		this.mtype = mtype;
		this.quantity = quantity;
		this.price = price;
		this.expiry = date;
		this.current = currentDate;
	}
	public Med(int id, String mname, String mtype, int quantity, int price, Date expiry, Date current) {
	
		this.id = id;
		this.mname = mname;
		this.mtype = mtype;
		this.quantity = quantity;
		this.price = price;
		this.expiry = expiry;
		this.current = current;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getExpiry() {
		return expiry;
	}
	public void setExpiry(Date expiry) {
		this.expiry = expiry;
	}
	public Date getCurrent() {
		return current;
	}
	public void setCurrent(Date current) {
		this.current = current;
	}

}
