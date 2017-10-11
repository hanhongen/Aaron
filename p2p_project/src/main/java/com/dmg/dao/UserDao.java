package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.dmg.bean.Subject;
import com.dmg.bean.User_role;
import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Push_notice;
import com.dmg.bean.Users;

@Component
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getsession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	//根据用户真实姓名的到账号
	public Member getMemberByName(String name) {
		Session session=getsession();
		String hql="from Member where member_name="+name;
		Member member=(Member) session.createQuery(hql).list().get(0);
		return member;
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
	
	public void saveUsers(Users users) {
		Session session=getsession();
		session.save(users);
	}
	public void saveMember(Member member) {
		Session session=getsession();
		session.save(member);
	}
	public void saveMemberAccount(Member_account member_account) {
		Session session=getsession();
		session.save(member_account);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		Session session=getsession();
		String sql="select count(*) from users where mobile_phone="+mobile_phone+" and password='"+password+"'";
		int count=0;
		Object obj=(Object)session.createSQLQuery(sql).list().get(0);
		count=Integer.parseInt(obj.toString());
		//System.out.println("count"+count);
		Users user=null;
		if(count==1) {
			String hql="from Users where mobile_phone="+mobile_phone+" and password="+password;
			user=(Users) session.createQuery(hql).list().get(0);
		}
		return user;
	}
	
	
	public Users getUsersById(int id) {
		Session session=getsession();
		Users user=(Users) session.get(Users.class, id);
		return user;
	}
	
	//前台显示公告标题
	public List<Push_notice> listpush(){
		Session session=getsession();
		String hql="from Push_notice";
		List<Push_notice> push_notices=session.createQuery(hql).list();
		return push_notices;
	}
	
public User_role getRoleByid(int id) {
	Session session=getsession();
	User_role ur=(User_role) session.get(User_role.class, id);
	return ur;
	}
}
