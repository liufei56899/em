/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.jhfjgr.web;

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
import com.thinkgem.jeesite.modules.jhfjgr.entity.JhFjGrRw;
import com.thinkgem.jeesite.modules.jhfjgr.service.JhFjGrRwService;

/**
 * 计划分解个人任务明细Controller
 * @author lg
 * @version 2016-05-26
 */
@Controller
@RequestMapping(value = "${adminPath}/jhfjgr/jhFjGrRw")
public class JhFjGrRwController extends BaseController {

	@Autowired
	private JhFjGrRwService jhFjGrRwService;
	
	@ModelAttribute
	public JhFjGrRw get(@RequestParam(required=false) String id) {
		JhFjGrRw entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = jhFjGrRwService.get(id);
		}
		if (entity == null){
			entity = new JhFjGrRw();
		}
		return entity;
	}
	
	@RequiresPermissions("jhfjgr:jhFjGrRw:view")
	@RequestMapping(value = {"list", ""})
	public String list(JhFjGrRw jhFjGrRw, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<JhFjGrRw> page = jhFjGrRwService.findPage(new Page<JhFjGrRw>(request, response), jhFjGrRw); 
		model.addAttribute("page", page);
		return "modules/jhfjgr/jhFjGrRwList";
	}

	@RequiresPermissions("jhfjgr:jhFjGrRw:view")
	@RequestMapping(value = "form")
	public String form(JhFjGrRw jhFjGrRw, Model model) {
		model.addAttribute("jhFjGrRw", jhFjGrRw);
		return "modules/jhfjgr/jhFjGrRwForm";
	}

	@RequiresPermissions("jhfjgr:jhFjGrRw:edit")
	@RequestMapping(value = "save")
	public String save(JhFjGrRw jhFjGrRw, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, jhFjGrRw)){
			return form(jhFjGrRw, model);
		}
		jhFjGrRwService.save(jhFjGrRw);
		addMessage(redirectAttributes, "保存计划分解个人任务明细成功");
		return "redirect:"+Global.getAdminPath()+"/jhfjgr/jhFjGrRw/?repage";
	}
	
	@RequiresPermissions("jhfjgr:jhFjGrRw:edit")
	@RequestMapping(value = "delete")
	public String delete(JhFjGrRw jhFjGrRw, RedirectAttributes redirectAttributes) {
		jhFjGrRwService.delete(jhFjGrRw);
		addMessage(redirectAttributes, "删除计划分解个人任务明细成功");
		return "redirect:"+Global.getAdminPath()+"/jhfjgr/jhFjGrRw/?repage";
	}

}