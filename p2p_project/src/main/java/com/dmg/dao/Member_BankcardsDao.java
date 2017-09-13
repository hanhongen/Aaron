package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
//�󿨹���
@Component
public class Member_BankcardsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * �б���ʾ��
     * ��� �ֻ��� �������� �����֤ ������ �󿨿��� �󿨵�ַ ״̬ ���ʱ�� ��
	 * @return
	 */
	//��Ա������
	public List<Member_bankcards> listMember_bankcards(){
		String hql="from Member_bankcards";
		Session session = getSession();
		List<Member_bankcards> list = session.createQuery(hql).list();
		return list;
	}
	//�û���
	public List<Member> listMember(){
		String hql="from Member";
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		return list;
	}
	
}
