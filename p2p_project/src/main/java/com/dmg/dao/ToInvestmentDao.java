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
	
	
	//已投金额
	public double countMoney(int id) {
		Session session=getSession();
		String sql0="select count(*) from subject_purchase_record where subject_id="+id;
		String sql="select sum(amount) from subject_purchase_record where subject_id="+id;
		double sum=0;
		Object obj0=(Object)session.createSQLQuery(sql0).list().get(0);
		int count=Integer.parseInt(obj0.toString());
		if(count!=0) {
			Object obj=(Object)session.createSQLQuery(sql).list().get(0);
			sum=Double.parseDouble(obj.toString());
		}
		return sum;
	}
	
	//统计人数
	public int countByPeople(int id) {
		Session session=getSession();
		String sql="select count(*) from subject_purchase_record where subject_id="+id;
		int count=0;
		Object obj=session.createSQLQuery(sql).list().get(0);
		count=Integer.parseInt(obj.toString());
		return count;
	}
	
	//查询所有标
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
