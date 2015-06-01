/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.entity.ApiPhotoResponse;
import com.gome.trend.modules.api.dao.ApiPhotoDao;

/**
 * 接口Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiPhotoService extends CrudService<ApiPhotoDao, ApiPhoto> {

	public ApiPhoto get(String id) {
		return super.get(id);
	}
	
	public List<ApiPhoto> findList(ApiPhoto apiPhoto) {
		return super.findList(apiPhoto);
	}
	
	public Page<ApiPhoto> findPage(Page<ApiPhoto> page, ApiPhoto apiPhoto) {
		return super.findPage(page, apiPhoto);
	}
	
	public List<ApiPhotoResponse> getResponseRows(List<ApiPhoto> apiphotos){
		
		List<ApiPhotoResponse> retval = new ArrayList<ApiPhotoResponse>();
		List<String>  photoids = new ArrayList<String>();
		for(int i = 0; i < apiphotos.size(); i++)  
        {  
			photoids.add(apiphotos.get(i).getPhotoId());
		
        }
		
		for(int i = 0; i < apiphotos.size(); i++)  
        {  
			photoids.add(apiphotos.get(i).getPhotoId());
			ApiPhotoResponse apiPhotoResponse = new ApiPhotoResponse();
			apiPhotoResponse.setBaseData(apiphotos.get(i));
			apiPhotoResponse.setPostUser("1", "im", "avater");//发布et
			
			retval.add(apiPhotoResponse);
        }
			
		
		return retval;
	}
	
}