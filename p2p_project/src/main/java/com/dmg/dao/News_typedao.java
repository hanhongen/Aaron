package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.News_type;

@Component
public class News_typedao {

@Autowired
	private SessionFactory sessionFactory;
	
	public Session getsession(){
		return sessionFactory.getCurrentSession();
	}

public void savetype(News_type news_type){
	Session session=getsession();
	session.save(news_type);
}

public void updatetype(News_type news_type){
	Session session=getsession();
	session.update(news_type);
	session.flush();
}

public News_type getbyid(int id){
	Session session=getsession();
	News_type news_type=(News_type)session.get(News_type.class,id);
   return news_type;
}


public void deletetype(News_type news_type){
	Session session=getsession();
	session.delete(news_type);
	session.flush();
}

public List<News_type>listtype(){
	Session session=getsession();
	String hq="from News_type order by sort desc";
	List<News_type>list=session.createQuery(hq).list();
	return list;
}

}
