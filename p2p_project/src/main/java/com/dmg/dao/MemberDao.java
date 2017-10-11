package com.dmg.dao;

import java.util.ArrayList;
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
	//�˺Ź���ģ���ѯ
	public String listMemberLike(Map map,String hql){
		String namem = (String)map.get("namem");
		String mobilePhonem = (String)map.get("mobilePhonem");
		String memberNamem = (String)map.get("memberNamem");
		String invitationcodem = (String)map.get("invitationcodem");
		String create_datem = (String)map.get("create_datem");
		if (namem!=null && !namem.equals("")) {//�û���
			hql+=" and name like '%"+namem+"%'";
		}else if (mobilePhonem!=null && !mobilePhonem.equals("")) {//�ֻ��
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
	
	//���id��ѯ�����˺�����
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
	
	public boolean saveMember(Member member){
		Session session = getSession();
		session.save(member);
		return true;
	}
	 //检查用户认证情况
	public List<Member> checkRZ(int id){
		String sql="select name,identity from member where user_id="+id;
		Session session = getSession();
    	List<Member> list=session.createSQLQuery(sql).list();
		return list;
	}
	
	//写这个方法解决一些历史遗留的问题，使用user表的id，在member中查询出member表的id，以此解决问题
	public int correct(int id){
		String sql = "select id from member where user_id="+id;
		Session session = getSession();
		Object memberid = (Object)session.createSQLQuery(sql).list().get(0);
		int mid = Integer.parseInt(memberid.toString());
		return mid;
	}
	//写这个方法解决一些历史遗留的问题，使用user表的id，在member中查询出member表的id，以此解决问题
//	public int correctTwo(int id){
//		String sql = "select id from member where user_id="+id;
//		Session session = getSession();
//		Object memberid = (Object)session.createSQLQuery(sql).list().get(0);
//		int mid;
//		if (null != memberid) {
//			mid = Integer.parseInt(memberid.toString());
//			return mid;
//		} else {
//			
//			return mid=0;
//		}	
//	}
	//检查手机号是否已绑定
	public String checkPhone(int id){
		String hql="from Member where id="+id;
		Session session = getSession();
		String check="";
		List<Member> list= session.createQuery(hql).list();
			for (Member m : list) {
				if (m.getMobile_phone().isEmpty()) {
					check="0";
				} else {
					System.out.println("memberPhone:"+m.getMobile_phone());
					check="1";
				}
			}
		return check;
	}
	//绑定手机号
	public boolean bdPhone(int id,String phone,String time){
		Session session = getSession();
		Member member=(Member) session.get(Member.class, id);
		member.setMobile_phone(phone);
		member.setUpdate_date(time);
		session.update(member);
		return true;
	}
	//修改密码
	public boolean updatePwd(int id,String pwd){
		Session session = getSession();
		Member member = (Member) session.get(Member.class, id);
		member.setPassword(pwd);
		session.update(member);
		return true;
	}
	//检查提款密码是否已设置
	public String checkTkpwd(int id){
		Session session =getSession();
		Member member=(Member) session.get(Member.class, id);		
		String check="";
		if (member.getWithdraw_password() == null || member.getWithdraw_password().equals("")){
			check="0";
		} else {
			System.out.println("提款密码为:"+member.getWithdraw_password());
			check="1";
		}
		return check;
	}
	
	//修改提款密码
	public boolean updateTkPwd(int id,String pwd,String time){
		Session session = getSession();
		Member member = (Member) session.get(Member.class, id);
		member.setWithdraw_password(pwd);
		member.setUpdate_date(time);
		session.update(member);
		return true;
	}
}
