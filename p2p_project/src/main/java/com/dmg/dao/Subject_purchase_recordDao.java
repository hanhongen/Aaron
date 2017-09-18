package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject_purchase_record;

@Component
public class Subject_purchase_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 付息列表去显示这个产品的所有购买信息
	 * @return
	 */
	public List<Subject_purchase_record> listSubject_purchase_record(int id){
		String hql = "from Subject_purchase_record where id="+id;
		Session session = getSession();
		List<Subject_purchase_record> list = session.createQuery(hql).list();
		return list;
	}
	
}
