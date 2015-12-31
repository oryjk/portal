package com.menu.bean;

import java.io.Serializable;
/**
 * 
 * @author woniu_hd on 12/26/15.
 *
 */
public class Menu implements Serializable {


	static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String url;
	private int type;
	private int num;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
