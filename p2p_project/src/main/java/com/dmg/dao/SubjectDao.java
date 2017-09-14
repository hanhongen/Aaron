package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
//付息计划
@Component
public class SubjectDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 列表显示：
  	 * 序号 合同编号 标的类别 标的名称 标的总金额  起投金额 已投人数 
     * 标的期限 年化收益 标的状态 可体验金购买
	 * @return
	 */
	public List<Subject> listSubject(){
		String hql = "from Subject";
		Session session = getSession();
		List<Subject> list = session.createQuery(hql).list();
		
		return list;
	}
	
}
