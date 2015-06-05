package com.gome.trend.modules.api.entity;

import java.util.ArrayList;
import java.util.List;

public class ApiResponseData <T>{
	
	public List<T> rows = new ArrayList<T>();
	public String  hasNext = "N";
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	public String getHasNext() {
		return hasNext;
	}
	public void setHasNext(String hasNext) {
		this.hasNext = hasNext;
	}
}
