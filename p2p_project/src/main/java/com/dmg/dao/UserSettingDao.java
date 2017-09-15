package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.User_role;
import com.dmg.bean.Users;

@Component
public class UserSettingDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	
	//²éÑ¯½ÇÉ«±í
	public List<User_role> listRole(){
		Session session=getSession();
		String hql="from User_role where 0=0";
		List<User_role> list=session.createQuery(hql).list();
		return list;
	}
	
	public void addUser(Users user) {
		Session session=getSession();
		session.save(user);
	}
	
	public List<Users> showUsers(Map map){
		Session session=getSession();
		String hql="from Users where 0=0";
		hql=getHql(map, hql);
		List<Users> list=session.createQuery(hql).list();
		return list;
	}
	
	public String getHql(Map map,String hql) {
		String qname=(String) map.get("qname");
		String qtime=(String) map.get("qtime");
		if(qname!=null && !"".equals(qname)) {
			hql=hql+" and user_name like '%"+qname+"%'";
		}
		if(qtime!=null && !"".equals(qtime)) {
			hql=hql+" and create_date like '%"+qtime+"%'";
		}
		return hql;
	}
	
	public void update(Users user) {
		Session session=getSession();
		session.update(user);
		session.flush();
	}
	public void delete(Users user) {
		Session session=getSession();
		session.delete(user);
		session.flush();
	}
	
	public Users getUserById(int id) {
		Session session=getSession();
		Users user=(Users) session.get(Users.class, id);
		return user;
	}
}
