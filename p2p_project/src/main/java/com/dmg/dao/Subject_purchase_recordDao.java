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
	 * 标的购买表
	 * @return
	 */
	public List<Subject_purchase_record> listSubject_purchase_record(int id){
		String hql = "from Subject_purchase_record spr where spr.member="+id;
		Session session = getSession();
		List<Subject_purchase_record> list = session.createQuery(hql).list();
		return list;
	}
	
	//查询个人投资记录的次数
	public int countSubject_purchase_record(int id){
		String sql = "select count(spr.id) from subject_purchase_record spr where spr.member_id="+id;
		System.out.println("sql:"+sql);
		Session session = getSession();
		Object c = (Object)session.createSQLQuery(sql).list().get(0);
		int count=Integer.parseInt(c.toString());
		System.out.println("count:"+count);
		return count;
	}
	

	
}
