package com.gome.trend.modules.api.entity;

import java.util.List;

public class ApiResponse<T> {
	
	public String isSuccess = "Y";
	public String successMessage;
	public ApiResponseData<T> data = null;
	public String failCode;
	public String failReason;
	
	public void setIsSuccess(String isSuccess){
		this.isSuccess = isSuccess;
	}

	public String getIsSuccess() {
		return isSuccess;
	}
	
	public void SetError(String failCode, String failReason){
		this.data = null;
		this.isSuccess = "N";
		this.failCode = failCode;
		this.failReason = failReason;
		
		//return isSuccess;
	}

	public String getSuccessMessage() {
		return successMessage;
	}

	public void setSuccessMessage(String successMessage) {
		this.successMessage = successMessage;
	}

	public void setDataRows(List<T> rows) {
		this.data = new ApiResponseData<T>();
		this.data.setRows(rows);
	}
	public void setDataHasNext(String hasNext) {
		if(this.data == null)this.data = new ApiResponseData<T>();
		this.data.setHasNext(hasNext);
	}
}
