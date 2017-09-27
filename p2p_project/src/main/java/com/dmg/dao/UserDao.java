package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Push_notice;
import com.dmg.bean.Users;

@Component
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getsession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	
	public void save(Users users) {
		Session session=getsession();
		session.save(users);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		Session session=getsession();
		String hql="from Users where mobile_phone="+mobile_phone+" and password="+password;
		Users user=(Users) session.createQuery(hql);
		return user;
	}
	
	//前台显示公告标题
	public List<Push_notice> listpush(){
		Session session=getsession();
		String hql="from Push_notice";
		List<Push_notice> push_notices=session.createQuery(hql).list();
		return push_notices;
	}
}
