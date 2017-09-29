package com.dmg.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Member_account;

@Component
public class Member_accountDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public List<Member_account> listMember_account(){
		String hql="from Member_account";
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();
		return list;
	}
	
	public List<Member_account> listMember_account(int id){
		String hql="from Member_account m where m.member.id="+id;
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();
		return list;
	}
	//根据id修改账户可用余额，更新本条数据修改时间
	public boolean top_upAmount(int id,double ub, String ud){
		String hql="update Member_account set useable_balance+="+ub+" update_date="+ud+" where member="+id;
		Session session = getSession();
		Member_account member_account = (Member_account) session.createQuery(hql);
		session.update(member_account);
		return true;
	}
	
}
