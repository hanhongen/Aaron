package com.dmg.service;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dmg.bean.News;
import com.dmg.dao.Newsdao;

@Transactional
@Service
public class Newsservice {
	@Autowired
	public Newsdao newsdao;
	
	public void savenews(News news){
		newsdao.savenews(news);	
	}
  public void updatenews(News news){
	  newsdao.updatenews(news);
  }

  public News getbyid(int id){
	 return newsdao.getbyid(id);
  }

   public List<News>listnews(Map map){
	   return newsdao.listnews(map);
			   
   }

   public void deletenews(News news){
	   newsdao.deletenews(news);
   }
}
