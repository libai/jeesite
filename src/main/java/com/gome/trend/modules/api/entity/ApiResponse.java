package com.gome.trend.modules.api.entity;

public class ApiResponse {
	
	private String isSuccess;
	private Object data;
	
	public void setIsSuccess(String isSuccess){
		this.isSuccess = isSuccess;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getIsSuccess() {
		return isSuccess;
	}
	
}
