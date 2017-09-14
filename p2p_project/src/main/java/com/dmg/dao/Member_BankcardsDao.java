package com.dmg.dao;

import java.util.List;
import java.util.Map;

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
	public List<Member_bankcards> listMember_bankcards(Map map){
		String hql="from Member_bankcards mb where 0=0 ";
		Session session = getSession();
		hql=listMember_bankcardslike(map, hql);
		List<Member_bankcards> list = session.createQuery(hql).list();
		return list;
	}
	
	public String listMember_bankcardslike(Map map,String hql){
		String phone = (String)map.get("phone");
		String cardname = (String)map.get("cardname");
		String cardno = (String)map.get("cardno");
		String createdate = (String)map.get("createdate");
		
		if (phone!=null && !phone.equals("")) {//�ֻ�
			hql+=" and mb.member.mobile_phone like '%"+phone+"%'";
		} else if(cardname!=null && !cardname.equals("")){//����
			hql+=" and mb.member.member_name like '%"+cardname+"%'";
		}else if (cardno!=null && !cardno.equals("")) {//����
			hql+=" and mb.card_no like '%"+cardno+"%'";
		}else if (createdate!=null && !createdate.equals("")) {//��ʱ��
			hql+=" and mb.create_date like '%"+createdate+"%'";
		}
		return hql;
	}
	
	//�û���
	public List<Member> listMember(){
		String hql="from Member";
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		return list;
	}
	
}
