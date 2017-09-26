package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;

@Component
public class ToInvestmentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	//��ѯ���б�
	public List<Subject> showSubject(){
		Session session=getSession();
		String hql="from Subject where 0=0";
		List<Subject> list=session.createQuery(hql).list();
		return list;
	}
	
	public Subject getSubjectById(int id) {
		Session session=getSession();
		Subject subject=(Subject) session.get(Subject.class,id);
		return subject;
	}
	
	//ģ����ѯ
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
