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
	 * 锟叫憋拷锟斤拷示锟斤拷
  	 * 锟斤拷锟� 锟街伙拷锟� 锟斤拷锟斤拷 锟斤拷锟斤拷锟斤拷 锟斤拷锟斤拷锟斤拷锟斤拷 投锟绞斤拷锟� 锟角凤拷锟斤拷注锟结奖锟斤拷 锟角凤拷锟斤拷投锟绞斤拷锟斤拷 注锟斤拷时锟斤拷
	 * @return
	 */
	public List<Award_records> listAward_records(){
		String hql="from Award_records ar where 0=0 ";
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("Award_recordsDao: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",name:"+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		return list;
	}
	//閭�璇蜂汉鎵嬫満鍙�
	public List<Award_records> listinvitingid(int invitingid){
		String hql="from Award_records ar where ar.member.id="+invitingid;
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("閭�璇蜂汉ID:"+a.getInvitingid()+"锛岄個璇蜂汉鎵嬫満鍙凤細"+a.getMember().getMobile_phone()+"锛屽鍔辩被鍨嬶細"+a.getType()+"锛屽鍔遍噾棰濓細"+a.getAmount()+"锛屾坊鍔犳椂闂达細"+a.getAddtime()+"锛岄個璇风爜"+a.getMember().getInvitationcode());
		}
		return list;
	}
	//琚個璇蜂汉鎵嬫満鍙�
	public List<Award_records> listbyinvitingid(int byinvitingid){
		String hql="from Award_records ar where ar.member.id="+byinvitingid;
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("琚個璇蜂汉ID:"+a.getByinvitingid()+"锛岃閭�璇蜂汉鎵嬫満鍙凤細"+a.getMember().getMobile_phone()+"锛屽鍔辩被鍨嬶細"+a.getType()+"锛屽鍔遍噾棰濓細"+a.getAmount()+"锛屾坊鍔犳椂闂达細"+a.getAddtime()+"锛岃閭�璇风爜锛�"+a.getMember().getInvitedcode());
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
