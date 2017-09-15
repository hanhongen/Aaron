package com.dmg.dao;

import java.util.List;
import java.util.Map;

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
		String hql="from Award_records ar where 0=0 ";
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("Award_recordsDao: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",name:"+a.getMember().getMember_name()+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		return list;
	}
	//������
	public List<Award_records> listinvitingid(int invitingid){
		String hql="from Award_records ar where ar.member.id="+invitingid;
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("������ID:"+a.getInvitingid()+"�������ֻ��ţ�"+a.getMember().getMobile_phone()+"���������ͣ�"+a.getType()+",������"+a.getAmount()+",����ʱ�䣺"+a.getAddtime()+",�����룺"+a.getMember().getInvitationcode());
		}
		return list;
	}
	//��������
	public List<Award_records> listbyinvitingid(int byinvitingid){
		String hql="from Award_records ar where ar.member.id="+byinvitingid;
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("��������ID:"+a.getInvitingid()+"���������ֻ��ţ�"+a.getMember().getMobile_phone()+"���������ͣ�"+a.getType()+",������"+a.getAmount()+",����ʱ�䣺"+a.getAddtime()+",�����룺"+a.getMember().getInvitationcode());
		}
		return list;
	}
	
//	public String listAward_recordslike(Map map,String hql){
//		String name=(String)map.get("name");
//		String phone=(String)map.get("phone");
//		String card=(String)map.get("card");
//		String status=(String)map.get("status");
//		String create_datem=(String)map.get("create_datem");
//		
//		if (name!=null && !name.equals("")) {
//			hql+=" and ar.member.member_name like '%"+name+"%'";
//		}else if (phone!=null && !phone.equals("")) {
//			hql+=" and ";
//		}else if (card!=null && !card.equals("")) {
//			hql+="";
//		}else if (status!=null && !status.equals("")) {
//			hql+="";
//		}else if (create_datem!=null && !create_datem.equals("")) {
//			hql+="";
//		}
//		
//		return null;
//	}
//	


}
