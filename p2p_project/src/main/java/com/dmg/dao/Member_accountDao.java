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
	
	//idd为用户id,通过用户id查询出成员账户表的本条信息id
		public int listid(int idd){
			String sql="select id from member_account where member_id="+idd;
			Session session = getSession();
			Object s = (Object)session.createSQLQuery(sql).list().get(0);
			int id=Integer.parseInt(s.toString());
			return id;
		}
	
	//根据id修改账户可用余额，更新本条数据修改时间
	public boolean top_upAmount(int idd,double amount, String ud){
		//String hql="update Member_account set useable_balance+="+amount+",update_date="+ud+" where member="+id;
		System.out.println("ud:"+ud);
		int id=listid(idd);
		Session session = getSession();
		Member_account member_account = (Member_account) session.get(Member_account.class, id);
		System.out.println("Member_accountDAO:"+member_account.getUseable_balance());
		member_account.setUseable_balance(member_account.getUseable_balance()+amount);
		member_account.setUpdate_date(ud);
		session.update(member_account);
		return true;
	}
	
}
