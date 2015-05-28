/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.web;

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

import com.gome.trend.modules.api.entity.ApiComment;
import com.gome.trend.modules.api.service.ApiCommentService;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;


/**
 * 评论Controller
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Controller
@RequestMapping(value = "comment")
public class ApiCommentController extends BaseController {

	@Autowired
	private ApiCommentService ApiCommentService;
	
	@ModelAttribute
	public ApiComment get(@RequestParam(required=false) String id) {
		ApiComment entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = ApiCommentService.get(id);
		}
		if (entity == null){
			entity = new ApiComment();
		}
		return entity;
	}

	@RequestMapping(value = {"list", ""})
	public String list(ApiComment apiComment, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ApiComment> page = ApiCommentService.findPage(new Page<ApiComment>(request, response), apiComment); 
		model.addAttribute("page", page);
		return "modules/api/apiCommentList";
	}


	@RequestMapping(value = "send")
	public String send(ApiComment apiComment, Model model, RedirectAttributes redirectAttributes) {
		
		/*if (!beanValidator(model, apiComment)){
			return form(apiComment, model);
		}
		ApiCommentService.save(apiComment);
		addMessage(redirectAttributes, "保存评论成功");
		return "redirect:"+Global.getAdminPath()+"/api/apiComment/?repage";
		*/
		return "";
	}
	
	public String delete(ApiComment apiComment, RedirectAttributes redirectAttributes) {
		ApiCommentService.delete(apiComment);
		addMessage(redirectAttributes, "删除评论成功");
		return "redirect:"+Global.getAdminPath()+"/api/apiComment/?repage";
	}

}