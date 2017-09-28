package com.dmg.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.News;
import com.dmg.bean.Users;

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
   
    public List<News> listnews( Map map){
    	System.out.println("·½·¨");
    	Session session=getsession();
    	String hql = getHql(map);
    	System.out.println("----------------------------------");
    	System.out.println(hql);
    	System.out.println("----------------------------------");
       List<News> list=session.createQuery(hql).list();
       return list;
    }
    
    public String getHql(Map map){
    	String tlt=(String)map.get("tlt");
    	System.out.println("tlt");
    	String s1=(String)map.get("s1");
    	String hql="select n from News n where 1=1  ";
    	if ((tlt!=null && !equals(""))&&s1!=null &&!"-1".equals(s1)) {
    		hql=hql+"and title like '%"+tlt+"%'and n.news_type.name like '%"+s1+"%'";
    	}else {
			if(tlt!=null && !equals("")){
    		hql=hql+"and title like '%"+tlt+"%'";
    	}
    	
			if (s1!=null && !"-1".equals(s1)) {
			hql=hql+"and n.news_type.name like '%"+s1+"%'";
			}
    	}
    	return hql +=" order by n.sort desc";
    }

public List<News>list(){
	Session session=getsession();
	String hql="from News";
	List<News>list=session.createQuery(hql).list();
	return list;
}

}
