package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member_deposit_record;

@Component
public class Member_deposit_recordDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * �б���ʾ��
     * ��� ������� �ֻ��� ������� ����״̬ ��ֵ���� �����ֻ���ֵ���� ����ʱ��
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(Map map){
		String hql="from Member_deposit_record md where 0=0 ";
		Session session = getSession();
		hql=listMember_deposit_recordlike(map, hql);
		List<Member_deposit_record> list = session.createQuery(hql).list();
		return list;
	}
	//ģ����ԃ
	public String listMember_deposit_recordlike(Map map,String hql){
		String snumber = (String)map.get("snumber");
		String phone = (String)map.get("phone");
		String status = (String)map.get("status");
		String fynumber = (String)map.get("fynumber");
		String create_datem = (String)map.get("create_datem");	
		if (snumber!=null && !snumber.equals("")) {
			hql+=" and md.seril_number like '%"+snumber+"%'";
		}else if (phone!=null && !phone.equals("")) {
			hql+=" and md.member.mobile_phone like '%"+phone+"%'";
		}else if (status!=null && !status.equals("")) {
			hql+=" and md.status like '%"+status+"%'";
		}else if (fynumber!=null && !fynumber.equals("")) {
			hql+=" and md.pay_channel_order_no like '%"+fynumber+"%'";
		}else if (create_datem!=null && !create_datem.equals("")) {
			hql+=" and md.create_date like '%"+create_datem+"%'";
		}
		return hql;
	}
	
}
