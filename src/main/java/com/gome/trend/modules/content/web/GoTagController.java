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
import com.gome.trend.modules.content.entity.GoTag;
import com.gome.trend.modules.content.service.GoTagService;

/**
 * 标签Controller
 * @author 标签
 * @version 2015-05-29
 */
@Controller
@RequestMapping(value = "${adminPath}/content/goTag")
public class GoTagController extends BaseController {

	@Autowired
	private GoTagService goTagService;
	
	@ModelAttribute
	public GoTag get(@RequestParam(required=false) String id) {
		GoTag entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goTagService.get(id);
		}
		if (entity == null){
			entity = new GoTag();
		}
		return entity;
	}
	
	@RequiresPermissions("content:goTag:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoTag goTag, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoTag> page = goTagService.findPage(new Page<GoTag>(request, response), goTag); 
		model.addAttribute("page", page);
		return "modules/content/goTagList";
	}

	@RequiresPermissions("content:goTag:view")
	@RequestMapping(value = "form")
	public String form(GoTag goTag, Model model) {
		model.addAttribute("goTag", goTag);
		return "modules/content/goTagForm";
	}

	@RequiresPermissions("content:goTag:edit")
	@RequestMapping(value = "save")
	public String save(GoTag goTag, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goTag)){
			return form(goTag, model);
		}
		goTagService.save(goTag);
		addMessage(redirectAttributes, "保存标签成功");
		return "redirect:"+Global.getAdminPath()+"/content/goTag/?repage";
	}
	
	@RequiresPermissions("content:goTag:edit")
	@RequestMapping(value = "delete")
	public String delete(GoTag goTag, RedirectAttributes redirectAttributes) {
		goTagService.delete(goTag);
		addMessage(redirectAttributes, "删除标签成功");
		return "redirect:"+Global.getAdminPath()+"/content/goTag/?repage";
	}

}