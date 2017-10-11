package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
//成员银联表
@Component
public class Member_BankcardsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 成员银联表
	 * @return
	 */
	//成员银联表
	public List<Member_bankcards> listMember_bankcards(Map map){
		String hql="from Member_bankcards mb where 0=0 ";
		Session session = getSession();
		hql=listMember_bankcardslike(map, hql);
		List<Member_bankcards> list = session.createQuery(hql).list();
		return list;
	}
	//查询模糊查询
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
	
	//���Member_bankcards����
	public Member_bankcards getMember_bankcardsById(int id){
		Session session = getSession();
		Member_bankcards mb = (Member_bankcards)session.get(Member_bankcards.class, id);
		return mb;
	}
	
	//�޸��߼�ɾ��״̬ 0��ʹ��  2���߼�ɾ��
	public void updateDelFlag(Member_bankcards mb){
		//String hql = "update Member_bankcards m set m.delflag=2 where m.id="+id;
		Session session = getSession();
		mb.setDelflag(2);
		session.update(mb);
	}
	
	//通过id查询银行卡类型，查询银行卡卡号
	public List<Member_bankcards> listMember_bankcards(int id){
		String hql="from Member_bankcards mb where mb.member.id="+id;
		Session session = getSession();
		List<Member_bankcards> list = session.createQuery(hql).list();
		return list;
	}
	//检查用户是否绑卡
	public String checkMember_bankcards(int id){
		String hql="from Member_bankcards mb where mb.member.id="+id;
		Session session = getSession();
		List<Member_bankcards> list = session.createQuery(hql).list();
		String flag;
		if (!list.isEmpty()) {
			flag="1";
		} else {
			flag="0";
		}
		return flag;
	}
	//保存绑卡信息
	public boolean saveBankCard(Member_bankcards member_bankcards){
		Session session = getSession();
		session.save(member_bankcards);
		return true;
	}
	
}
