package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;

@Component
public class ProductCenterDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	public void updateSubject(Subject subject) {
		Session session=getSession();
		session.update(subject);
		session.flush();
	}
	
	public void saveSubject(Subject subject) {
		Session session=getSession();
		session.save(subject);
	}
	
	//订单记录表
	public List<Subject_order_record> showSubjectRecord(){
		Session session=getSession();
		String hql="from Subject_order_record";
		List<Subject_order_record> list=session.createQuery(hql).list();
		return list;
	}
	
	//查询所有标
	public List<Subject> showSubject(Map map){
		Session session=getSession();
		String hql="from Subject where 0=0";
		List<Subject> list=session.createQuery(getHql(map, hql)).list();
		return list;
	}
	
	public Subject getSubjectById(int id) {
		Session session=getSession();
		Subject subject=(Subject) session.get(Subject.class,id);
		return subject;
	}
	
	//模糊查询
	public String getHql(Map map,String hql) {
		String qname=(String) map.get("qname");
		String s1=(String) map.get("s1");
		String s2=(String) map.get("s2");
		if(qname!=null && !"".equals(qname)) {
			hql=hql+" and name like '%"+qname+"%'";
		}
		if(s1!=null && !"-1".equals(s1)) {
			hql=hql+" and status="+Integer.valueOf(s1);
		}
		if(s2!=null && !"-1".equals(s2)) {
			hql=hql+" and type="+Integer.valueOf(s2); 
		}
		System.out.println("qname="+qname+"  ,s1="+s1+"  ,s2="+s2);
		return hql;
	}
	
}
