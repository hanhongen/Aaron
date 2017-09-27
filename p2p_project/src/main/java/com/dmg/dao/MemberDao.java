package com.dmg.dao;

import java.util.List;
import java.util.Map;

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
	public List<Member> listMember(Map map){
		String hql = "from Member where 0=0 ";
		Session session = getSession();
		hql=listMemberLike(map, hql);
		List<Member> list = session.createQuery(hql).list();
		for (Member member : list) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("Member(��ѯ�����˺�) [id=" + member.getId() + ", member_name=" + ", name=" + member.getName() + ", password=" + member.getPassword()
						+ ", salt=" + member.getSalt() + ", mobile_phone=" + member.getSalt() + ", status=" + member.getStatus() + ", del_flag=" + member.getDel_flag()
						+ ", identity=" + member.getIdentity() + ", create_date=" + member.getCreate_date() + ", update_date=" + member.getUpdate_date()
						+ ", weiboaccount=" + member.getWeiboaccount() + ", weixinaccount=" + member.getWeixinaccount() + ", headid=" + member.getHeadid()
						+ ", invitationcode=" + member.getInvitationcode() + ", withdraw_password=" + member.getWithdraw_password() + ", qqaccount="
						+ member.getQqaccount() + ", invitedcode=" + member.getInvitedcode() + ", qqnumber=" + member.getQqnumber() + "]");
			System.out.println("<------------------------------------------------------------------------------->");
		}
		return list;
	}
	//�˺Ź���ģ����ѯ
	public String listMemberLike(Map map,String hql){
		String namem = (String)map.get("namem");
		String mobilePhonem = (String)map.get("mobilePhonem");
		String memberNamem = (String)map.get("memberNamem");
		String invitationcodem = (String)map.get("invitationcodem");
		String create_datem = (String)map.get("create_datem");
		if (namem!=null && !namem.equals("")) {//�û���
			hql+=" and name like '%"+namem+"%'";
		}else if (mobilePhonem!=null && !mobilePhonem.equals("")) {//�ֻ���
			hql+=" and mobile_phone like '%"+mobilePhonem+"%'";
		}else if (memberNamem!=null && !memberNamem.equals("")) {//����
			hql+=" and member_name like '%"+memberNamem+"%'";
		}else if (invitationcodem!=null && !invitationcodem.equals("")) {//������
			hql+=" and invitationcode like '%"+invitationcodem+"%'";
		}else if (create_datem!=null && !create_datem.equals("")) {//ע��ʱ��
			hql+=" and create_date like '%"+create_datem+"%'";
		}
		return hql;
	}
	
	//����id��ѯ�����˺�����
	public List<Member> listMemberId(int id){
		String hql = "from Member where id="+id;
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		for (Member member : list) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("Member(�����˺�����) [id=" + member.getId() + ", member_name=" + ", name=" + member.getName() + ", password=" + member.getPassword()
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
