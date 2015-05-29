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
import com.gome.trend.modules.content.entity.GoComment;
import com.gome.trend.modules.content.service.GoCommentService;

/**
 * 评论Controller
 * @author 评论
 * @version 2015-05-29
 */
@Controller
@RequestMapping(value = "${adminPath}/content/goComment")
public class GoCommentController extends BaseController {

	@Autowired
	private GoCommentService goCommentService;
	
	@ModelAttribute
	public GoComment get(@RequestParam(required=false) String id) {
		GoComment entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goCommentService.get(id);
		}
		if (entity == null){
			entity = new GoComment();
		}
		return entity;
	}
	
	@RequiresPermissions("content:goComment:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoComment goComment, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoComment> page = goCommentService.findPage(new Page<GoComment>(request, response), goComment); 
		model.addAttribute("page", page);
		return "modules/content/goCommentList";
	}

	@RequiresPermissions("content:goComment:view")
	@RequestMapping(value = "form")
	public String form(GoComment goComment, Model model) {
		model.addAttribute("goComment", goComment);
		return "modules/content/goCommentForm";
	}

	@RequiresPermissions("content:goComment:edit")
	@RequestMapping(value = "save")
	public String save(GoComment goComment, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goComment)){
			return form(goComment, model);
		}
		goCommentService.save(goComment);
		addMessage(redirectAttributes, "保存评论成功");
		return "redirect:"+Global.getAdminPath()+"/content/goComment/?repage";
	}
	
	@RequiresPermissions("content:goComment:edit")
	@RequestMapping(value = "delete")
	public String delete(GoComment goComment, RedirectAttributes redirectAttributes) {
		goCommentService.delete(goComment);
		addMessage(redirectAttributes, "删除评论成功");
		return "redirect:"+Global.getAdminPath()+"/content/goComment/?repage";
	}

}