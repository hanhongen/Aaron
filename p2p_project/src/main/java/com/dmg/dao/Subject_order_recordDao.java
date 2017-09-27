package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Subject_order_record;

@Component
public class Subject_order_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * 标的订单表
	 * @return
	 */
	public List<Subject_order_record> listSubject_order_record(int id){
		String hql = "from Subject_order_record sor where sor.member="+id;
		Session session = getSession();
		List<Subject_order_record> list = session.createQuery(hql).list();
		return list;
	}
	//查询标的订单表记录的次数
	public int countSubject_order_record(int id){
		String sql = "select count(sor.id) from subject_order_record sor where sor.member_id="+id;
		System.out.println("sql:"+sql);
		Session session = getSession();
		Object c = (Object)session.createSQLQuery(sql).list().get(0);
		int count=Integer.parseInt(c.toString());
		System.out.println("count:"+count);
		return count;
	}
	
}
