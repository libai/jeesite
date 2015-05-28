/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.web;

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
import com.gome.trend.modules.content.entity.GoPhoto;
import com.gome.trend.modules.content.service.GoPhotoService;

/**
 * 图片管理Controller
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Controller
@RequestMapping(value = "${adminPath}/content/goPhoto")
public class GoPhotoController extends BaseController {

	@Autowired
	private GoPhotoService goPhotoService;
	
	@ModelAttribute
	public GoPhoto get(@RequestParam(required=false) String id) {
		GoPhoto entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goPhotoService.get(id);
		}
		if (entity == null){
			entity = new GoPhoto();
		}
		return entity;
	}
	
	@RequiresPermissions("content:goPhoto:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoPhoto goPhoto, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoPhoto> page = goPhotoService.findPage(new Page<GoPhoto>(request, response), goPhoto); 
		model.addAttribute("page", page);
		return "modules/content/goPhotoList";
	}

	@RequiresPermissions("content:goPhoto:view")
	@RequestMapping(value = "form")
	public String form(GoPhoto goPhoto, Model model) {
		model.addAttribute("goPhoto", goPhoto);
		return "modules/content/goPhotoForm";
	}

	@RequiresPermissions("content:goPhoto:edit")
	@RequestMapping(value = "save")
	public String save(GoPhoto goPhoto, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goPhoto)){
			return form(goPhoto, model);
		}
		goPhotoService.save(goPhoto);
		addMessage(redirectAttributes, "保存图片成功");
		return "redirect:"+Global.getAdminPath()+"/content/goPhoto/?repage";
	}
	
	@RequiresPermissions("content:goPhoto:edit")
	@RequestMapping(value = "delete")
	public String delete(GoPhoto goPhoto, RedirectAttributes redirectAttributes) {
		goPhotoService.delete(goPhoto);
		addMessage(redirectAttributes, "删除图片成功");
		return "redirect:"+Global.getAdminPath()+"/content/goPhoto/?repage";
	}

}