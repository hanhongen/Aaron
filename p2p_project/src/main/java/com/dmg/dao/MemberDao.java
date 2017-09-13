package com.dmg.dao;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Member;
//�˺Ź���
@Component
public class MemberDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	//��ѯ�����˺�
	public List<Member> listMember(){
		String hql = "from Member";
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		for (Member member : list) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("Member(��ѯ�����˺�) [id=" + member.getId() + ", member_name=" + member.getMember_name() + ", name=" + member.getName() + ", password=" + member.getPassword()
						+ ", salt=" + member.getSalt() + ", mobile_phone=" + member.getSalt() + ", status=" + member.getStatus() + ", del_flag=" + member.getDel_flag()
						+ ", identity=" + member.getIdentity() + ", create_date=" + member.getCreate_date() + ", update_date=" + member.getUpdate_date()
						+ ", weiboaccount=" + member.getWeiboaccount() + ", weixinaccount=" + member.getWeixinaccount() + ", headid=" + member.getHeadid()
						+ ", invitationcode=" + member.getInvitationcode() + ", withdraw_password=" + member.getWithdraw_password() + ", qqaccount="
						+ member.getQqaccount() + ", invitedcode=" + member.getInvitedcode() + ", qqnumber=" + member.getQqnumber() + "]");
			System.out.println("<------------------------------------------------------------------------------->");
		}
		return list;
	}
	
	//����id��ѯ�����˺�����
	public List<Member> listMemberId(int id){
		String hql = "from Member where id="+id;
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		for (Member member : list) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("Member(�����˺�����) [id=" + member.getId() + ", member_name=" + member.getMember_name() + ", name=" + member.getName() + ", password=" + member.getPassword()
						+ ", salt=" + member.getSalt() + ", mobile_phone=" + member.getSalt() + ", status=" + member.getStatus() + ", del_flag=" + member.getDel_flag()
						+ ", identity=" + member.getIdentity() + ", create_date=" + member.getCreate_date() + ", update_date=" + member.getUpdate_date()
						+ ", weiboaccount=" + member.getWeiboaccount() + ", weixinaccount=" + member.getWeixinaccount() + ", headid=" + member.getHeadid()
						+ ", invitationcode=" + member.getInvitationcode() + ", withdraw_password=" + member.getWithdraw_password() + ", qqaccount="
						+ member.getQqaccount() + ", invitedcode=" + member.getInvitedcode() + ", qqnumber=" + member.getQqnumber() + "]");
			System.out.println("<------------------------------------------------------------------------------->");
		}
		return list;
	}
	//���Member��id
	public Member getMemberId(int id){
		Session session = getSession();
		Member member=(Member)session.get(Member.class, id);
		return member;
	}
	
}
