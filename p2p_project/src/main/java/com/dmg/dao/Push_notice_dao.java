package com.dmg.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import com.dmg.bean.Push_notice;

@Service
public class Push_notice_dao {
	 private SessionFactory sf;
	 
	 @Resource
	 public void setsession(SessionFactory sf){
		 this.sf=sf;
	 }
	  
	public void save(Push_notice push_notice){
		Session session=sf.getCurrentSession();
		session.save(push_notice);
	}
	public void update(Push_notice push_notice){
	  Session session=sf.getCurrentSession();
	  session.update(push_notice);
	}
	public void delete(Push_notice push_notice){
	  Session session=sf.getCurrentSession();
	  session.delete(push_notice);
	}
	
	public List<Push_notice> listpush(){
		Session session=sf.getCurrentSession();
		String hql="from Push_notice";
		List<Push_notice> push=session.createQuery(hql).list();
		return push;
	}
	public Push_notice getbypid(int id){
		Session session=sf.getCurrentSession();
		Push_notice push=(Push_notice)session.get(Push_notice.class,id);
		return push;
	}
    
	
	
}
