/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.jxdgxsfp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.jxdgxsfp.entity.JxDgXsfp;
import com.thinkgem.jeesite.modules.jxdgxsfp.dao.JxDgXsfpDao;

/**
 * 学时分配Service
 * @author zx
 * @version 2018-03-01
 */
@Service
@Transactional(readOnly = true)
public class JxDgXsfpService extends CrudService<JxDgXsfpDao, JxDgXsfp> {

	public JxDgXsfp get(String id) {
		return super.get(id);
	}
	
	public List<JxDgXsfp> findList(JxDgXsfp jxDgXsfp) {
		return super.findList(jxDgXsfp);
	}
	
	public Page<JxDgXsfp> findPage(Page<JxDgXsfp> page, JxDgXsfp jxDgXsfp) {
		return super.findPage(page, jxDgXsfp);
	}
	
	@Transactional(readOnly = false)
	public void save(JxDgXsfp jxDgXsfp) {
		super.save(jxDgXsfp);
	}
	
	@Transactional(readOnly = false)
	public void delete(JxDgXsfp jxDgXsfp) {
		super.delete(jxDgXsfp);
	}
	
}