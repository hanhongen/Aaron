package com.dmg.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Feedback;
import com.dmg.bean.Member;
import com.dmg.bean.Push_notice;

@Service
public class Push_notice_dao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	  
	public void save(Push_notice push_notice){
		Session session=getSession();
		session.save(push_notice);
	}
	public void update(Push_notice push_notice){
	  Session session=getSession();
	  session.update(push_notice);
	}
	
	//删除
	public void delete(int id){//删除下架 上架
	  Session session=getSession();
		Push_notice push_notice=(Push_notice)session.get(Push_notice.class,id);
		push_notice.setStatus(1);//删除
		session.update(push_notice);
	}
	
	
	
	
	
	public List<Push_notice> listpush(Map map){	
		Session session=getSession();
		String hql="from Push_notice where 0=0";
		hql=indate(map, hql);
		List<Push_notice> push=session.createQuery(hql).list();
		return push;
	}
	
	public String indate(Map map,String hql){
		String namese=(String)map.get("name");
		if(namese!=null && !namese.equals("")){
			hql+=" and title like '%"+namese+"%'";
		}
		 return hql;
	}
	
	
	
	public Push_notice getbypid(int id){
		Session session=getSession();
		Push_notice push=(Push_notice)session.get(Push_notice.class,id);
		return push;
	}

     
	
	//<!-----意见反馈-----!>
	public void save(Feedback feedback){
		Session session=getSession();
		session.save(feedback);
	}
	public void update(Feedback feedback){
		Session session=getSession();
		session.update(feedback);
	}
	public void delete(Feedback feedback){
		Session session=getSession();
		session.delete(feedback);
	}
	public List<Feedback> listfeed(){
		Session session=getSession();
		String hql="from Feedback";
		List<Feedback> feedbacks=session.createQuery(hql).list();
		return feedbacks;
	}
	public Feedback getfeedid(int id){
		Session session=getSession();
		Feedback feedbacks=(Feedback)session.get(Feedback.class,id);
		return feedbacks;
	}
	
	
	//点击查看意见反馈的人的信息
	public List<Member> listmem(){
		Session session=getSession();
		String hql="from Member";
		List<Member> members=session.createQuery(hql).list();
		return members;
	}
	public Member getmpid(int id){
		Session session=getSession();
		Member members=(Member)session.get(Member.class,id);
		return members;
	}
}
