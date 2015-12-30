package com.utils.page;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component("Pagination")
public class Pagination {
	private List<Map<String, Object>> list;


	private Long rowCount;
	private int pageSize;
	private int pageNo;
	//新闻类型
	private int type;
	private int startIndex;

	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
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

