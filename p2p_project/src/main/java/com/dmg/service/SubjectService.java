package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject;
import com.dmg.dao.SubjectDao;
//付息计划
@Service
@Transactional
public class SubjectService {
	@Autowired
	private SubjectDao subjectDao;
	/**
	 * 列表显示：
  	 * 序号 合同编号 标的类别 标的名称 标的总金额  起投金额 已投人数 
     * 标的期限 年化收益 标的状态 可体验金购买
	 * @return
	 */
	public List<Subject> listSubject(){
		List<Subject> list = subjectDao.listSubject();
		return list;
	}

}
