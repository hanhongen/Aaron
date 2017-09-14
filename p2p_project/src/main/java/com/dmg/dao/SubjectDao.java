package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
//��Ϣ�ƻ�
@Component
public class SubjectDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * �б���ʾ��
  	 * ��� ��ͬ��� ������ ������� ����ܽ��  ��Ͷ��� ��Ͷ���� 
     * ������� �껯���� ���״̬ ���������
	 * @return
	 */
	public List<Subject> listSubject(){
		String hql = "from Subject";
		Session session = getSession();
		List<Subject> list = session.createQuery(hql).list();
		
		return list;
	}
	
}
