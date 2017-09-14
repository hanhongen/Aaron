package com.dmg.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Award_records;


@Component
public class Award_recordsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * �б���ʾ��
  	 * ��� �ֻ��� ���� ������ �������� Ͷ�ʽ�� �Ƿ���ע�ά�� �Ƿ���Ͷ�ʽ��� ע��ʱ��
	 * @return
	 */
	public List<Award_records> listAward_records(){
		String hql="from Award_records";
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("Award_recordsDao: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",name:"+a.getMember().getMember_name()+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		return list;
	}
	

	
}
