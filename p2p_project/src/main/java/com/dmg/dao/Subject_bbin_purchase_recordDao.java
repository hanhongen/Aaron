package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject_bbin_purchase_record;
//��������ı�
@Component
public class Subject_bbin_purchase_recordDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	//��ѯ��������Ϣ
	public List<Subject_bbin_purchase_record> listSubject_bbin_purchase_record(int id){
		String hql = "from Subject_bbin_purchase_record where id="+id;
		Session session = getSession();
		List<Subject_bbin_purchase_record> list= session.createQuery(hql).list();
		return list;
	}
	
	
}
