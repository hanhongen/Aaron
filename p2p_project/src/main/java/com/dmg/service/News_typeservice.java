package com.dmg.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dmg.bean.News_type;
import com.dmg.dao.News_typedao;

@Transactional
@Service
public class News_typeservice {
		@Autowired
		private News_typedao  news_typedao;
		
		public void savetype(News_type news_type){
			news_typedao.savetype(news_type);
		}
		
		public void updatetype(News_type news_type){
			news_typedao.updatetype(news_type);
		}
	 
	    public void deletetype(News_type news_type){
	    	news_typedao.deletetype(news_type);
	    }

	    public News_type getbyid(int id){
	    	return news_typedao.getbyid(id);
	    }

	    public List<News_type> listtype(){
	    	return news_typedao.listtype();
	    }
	}

