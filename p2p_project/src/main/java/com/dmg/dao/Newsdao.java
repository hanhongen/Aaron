package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.News;

@Component
public class Newsdao {
   
	@Autowired
	private SessionFactory sessionFactory;

	public Session getsession(){
		return sessionFactory.getCurrentSession();
	}

	public void savenews(News news){
		Session session=getsession();
		session.save(news);
	}

   public void updatenews(News news){
	   Session session=getsession();
	   session.update(news);
	   session.flush();
   }

    public News getbyid(int id){
    	Session session=getsession();
    	News news=(News)session.get(News.class, id);
       return news;
    }

   public void deletenews(News news){
	   Session session=getsession();
       session.delete(news);
   }
   
    public List<News> listnews(){
    	Session session=getsession();
    	String hql="from News  order by sort desc";
       List<News> list=session.createQuery(hql).list();
       return list;
    }

}
