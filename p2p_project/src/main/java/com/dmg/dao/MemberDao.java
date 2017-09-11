package com.dmg.dao;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Member;
//账号管理
@Component
public class MemberDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	//查询所有账号
	public List<Member> listMember(){
		String hql = "from Member";
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		for (Member member : list) {
			System.out.println("member:"+member.toString());
		}
		return list;
	}
	
	//根据id查询个人账号详情
	
	
}
