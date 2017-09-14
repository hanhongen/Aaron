package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_withdraw_record;

@Component
public class Member_withdraw_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * �б���ʾ��
     * ��� �ֻ��� ���� ���֤ ���ֽ�� �������� ���ֿ��� ���ֿ����е�ַ ����״̬ ����ʱ�� �˺���ϸ
	 * @return
	 */
	public List<Member_withdraw_record> listMember_withdraw_record(){
		String hql="from Member_withdraw_record";
		Session session = getSession();
		List<Member_withdraw_record> list = session.createQuery(hql).list(); 
		return list;
	}
	
}
