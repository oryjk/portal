package com.utils.page;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component("Pagination")
public class Pagination {
	//保存查询条件bean对象
	private Object bean;

	//总条数
	private Long rowCount;
	//页数
	private int pageSize;
	//当前页
	private int pageNo;
	//类型
	private int type;

	private int startIndex;

	public Object getBean() {
		return bean;
	}

	public void setBean(Object bean) {
		this.bean = bean;
	}

	public Long getRowCount() {
		return rowCount;
	}


	public void setRowCount(Long rowCount) {
		this.rowCount = rowCount;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getPageNo() {
		return pageNo;
	}


	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}


	public int getStartIndex() {
		int i = (pageNo - 1) * pageSize;
		if (i > 0) {
			return i;
		} else {
			return 0;
		}
	}

	//开始条数
	public void setStartIndex() {
		this.startIndex = pageSize * pageNo;
	}

	public int getPageCount() {
		Long pageCount = (rowCount + pageSize - 1) / pageSize;
		return pageCount.intValue();
	}

	public int getPreviousPageNo() {
		return pageNo == 1 ? pageNo : pageNo - 1;
	}


	public int getNextPageNo() {
		return pageNo < getPageCount() ? pageNo + 1 : pageNo;
	}

	public static void main(String[] args) {
		Long a = 55L;
		int b = 23;
		Long c = a - b;
		int cInt = c.intValue();
		System.out.println(cInt);
	}
}

