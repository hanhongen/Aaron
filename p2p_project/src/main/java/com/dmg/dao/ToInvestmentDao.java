package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Member_trade_record;
import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.bean.Subject_purchase_record;

@Component
public class ToInvestmentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	//查询用户余额
	public double getMoney(int id) {
		Session session=getSession();
		String sql="select ma.useable_balance FROM users u,member m,member_account ma where u.id=m.user_id and m.id=ma.member_id and u.id="+id;
		double money=0;
		Object obj=session.createSQLQuery(sql).list().get(0);
		money=Double.parseDouble(String.valueOf(obj));
		return money;
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
	
	public Member getMemberByUid(int id) {
		Session session=getSession();
		String sql="select m.id from member m where m.user_id="+id;
		Object obj=session.createSQLQuery(sql).list().get(0);
		int member_id=Integer.parseInt(String.valueOf(obj));
		Member member=(Member) session.get(Member.class, member_id);
		return member;
	}
	
	public void saveSubject_order_record(Subject_order_record sor) {
		Session session=getSession();
		session.save(sor);
	}
	public void saveMemberTradeRecord(Member_trade_record mtr) {
		Session session=getSession();
		session.save(mtr);
	}
	
	public Subject_order_record getSorBySno(String sno) {
		Session session=getSession();
		String sql="select * from subject_order_record where serial_number="+sno;
		Object obj=session.createSQLQuery(sql).list().get(0);
		Subject_order_record sor=(Subject_order_record) obj;
		return sor;
	}
	
	public void updateSub(Subject_order_record sor) {
		Session session=getSession();
		session.update(sor);
		session.flush();
	}
	
	public Member_trade_record getMemberTradeRecordBySno(String sno) {
		Session session=getSession();
		String sql="select * from member_trade_record where trade_no="+sno;
		Object obj=session.createSQLQuery(sql).list().get(0);
		Member_trade_record mtr=(Member_trade_record) obj;
		return mtr;
	}
	
	public void updateMember(Member_trade_record mtr) {
		Session session=getSession();
		session.update(mtr);
		session.flush();
	}
	
	public Member getMemberByid(int id) {
		Session session=getSession();
		Member member=(Member) session.get(Member.class, id);
		return member;
	}
	
	//购买次数
	public int buySubCount(int id) {
		Session session=getSession();
		String sql="select COUNT(*) from subject_purchase_record where member_id="+id;
		Object obj=session.createSQLQuery(sql).list().get(0);
		int num=Integer.parseInt(String.valueOf(obj));
		return num;
	}
	public void addsubject_purchase_record(Subject_purchase_record spr) {
		Session session=getSession();
		session.save(spr);
	}
	
	public void updateMember_account(Member_account ma) {
		Session session=getSession();
		session.update(ma);
		session.flush();
	}
}
