package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
import com.dmg.bean.Users;

@Component
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getsession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	//查询所有标
		public List<Subject> showSubject(){
			Session session=getsession();
			String hql="from Subject where 0=0";
			List<Subject> list=session.createQuery(hql).list();
			return list;
		}
	
	//统计注册用户个数
	public int conuntUsers() {
		Session session=getsession();
		String sql="select count(id) from users where 0=0 and YEAR(NOW())=YEAR(create_date) and MONTH(NOW())=MONTH(create_date)";  
		Object obj=session.createSQLQuery(sql);
		Integer num=Integer.parseInt(String.valueOf(obj));
		return num;
	}
	
	public void save(Users users) {
		Session session=getsession();
		session.save(users);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		Session session=getsession();
		String hql="from Users where mobile_phone="+mobile_phone+" and password="+password;
		Object obj =session.createQuery(hql).list().get(0);
		Users user=null;
		if(obj!=null) {
			user=(Users) obj;
		}
		return user;
	}
	
	
	public Users getUsersById(int id) {
		Session session=getsession();
		Users user=(Users) session.get(Users.class, id);
		return user;
	}
}
