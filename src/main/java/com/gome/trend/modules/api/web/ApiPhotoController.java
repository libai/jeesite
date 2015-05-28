/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.service.ApiPhotoService;


/**
 * 接口Controller
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Controller
@RequestMapping(value = "/photo")
public class ApiPhotoController extends BaseController {

	@Autowired
	private ApiPhotoService apiPhotoService;
	
	@RequestMapping(value = {"list", ""})
	public String list(ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<ApiPhoto> page = apiPhotoService.findList( apiPhoto); 
		model.addAttribute("page", page);
		
		return renderString(response, page);
	}
	
	@RequestMapping(value = {"like", ""})
	public String like(ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) {
		//List<ApiPhoto> page = apiPhotoService.findList( apiPhoto); 
		//model.addAttribute("page", page);
		System.out.println(apiPhoto);
		
		return renderString(response, "{}");
	}
	
	

}