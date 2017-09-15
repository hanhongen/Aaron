package com.dmg.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	//ɾ��
	public void delete(int id){
	  Session session=getSession();
		Push_notice push_notice=(Push_notice)session.get(Push_notice.class,id);
		push_notice.setStatus(1);//ɾ��
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

	
	
}
