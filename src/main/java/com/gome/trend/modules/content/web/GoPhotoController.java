/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.web;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	@RequestMapping(value = "upload", method=RequestMethod.POST)
	public String upload(GoPhoto goPhoto, HttpServletRequest request, HttpServletResponse response) {
	
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;     
	    SimpleDateFormat dateformat = new SimpleDateFormat("yyyyMM/yyyyMMdd");     
	    /**构建图片保存的目录**/    
	    String logoPathDir = "/prodimg/promotion_image/cdImg/"+ dateformat.format(new Date());
	    /**得到图片保存目录的真实路径**/    
	    String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);     
	    /**根据真实路径创建目录**/    
	    File logoSaveFile = new File(logoRealPathDir);     
	    
	    if(!logoSaveFile.exists())     
	            logoSaveFile.mkdirs();           
	        /**页面控件的文件流**/    
	        MultipartFile multipartFile = multipartRequest.getFile("file");      
	        /**获取文件的后缀**/    
	        String suffix = multipartFile.getOriginalFilename().substring  
	                        (multipartFile.getOriginalFilename().lastIndexOf("."));     
	        /**使用UUID生成文件名称**/    
	        String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称     
	        //String logImageName = multipartFile.getOriginalFilename();  
	        
	        
	        /**拼成完整的文件保存路径加文件**/    
	        String fileName = logoRealPathDir + File.separator   + logImageName;                
	        File file = new File(fileName);          
	        
	        try {     
	            multipartFile.transferTo(file);     
	        } catch (IllegalStateException e) {     
	            e.printStackTrace();     
	        } catch (IOException e) {            
	            e.printStackTrace();     
	        }     
	        HashMap<String, String> responseHash = new HashMap<String, String>();
	        responseHash.put("fileName", fileName);
	        responseHash.put("fileUrl", logoPathDir+"/"+logImageName); 
	        return renderString(response, responseHash);
	}
	
	@RequiresPermissions("content:goPhoto:edit")
	@RequestMapping(value = "delete")
	public String delete(GoPhoto goPhoto, RedirectAttributes redirectAttributes) {
		goPhotoService.delete(goPhoto);
		addMessage(redirectAttributes, "删除图片成功");
		return "redirect:"+Global.getAdminPath()+"/content/goPhoto/?repage";
	}

}