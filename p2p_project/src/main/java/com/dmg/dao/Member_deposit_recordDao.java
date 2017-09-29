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
	 * 充值记录
     * ��� ������� �ֻ�� ������� ����״̬ ��ֵ���� �����ֻ��ֵ���� ����ʱ��
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(Map map){
		String hql="from Member_deposit_record md where 0=0 ";
		Session session = getSession();
		hql=listMember_deposit_recordlike(map, hql);
		List<Member_deposit_record> list = session.createQuery(hql).list();
		return list;
	}
	//ģ���ԃ
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
	
	public List<Member_deposit_record> listMember_deposit_record(int id){
		String hql="from Member_deposit_record m where m.member.id="+id;
		Session session = getSession();
		List<Member_deposit_record> list = session.createQuery(hql).list();
		for (Member_deposit_record m : list) {
			System.out.println("��ţ�"+m.getId()+",���:"+m.getSeril_number()+",��ֵ��"+m.getAmount()+",��ֵ״̬��"+m.getStatus()+",��ֵ����:"+m.getPay_channel_name()+",��ֵ��ţ�"+m.getPay_channel_order_no()+",��ֵʱ��"+m.getCreate_date());
		}
		return list;
	}
	
	//以id查询返回集合
	public List<Member_deposit_record> listmdr(int id){
		String hql="from Member_deposit_record m where m.member.id="+id;
		Session session = getSession();
		List<Member_deposit_record> mdr = session.createQuery(hql).list();
		return mdr;
	}
	//将充值记录写入数据库
	public void mdrSave(Member_deposit_record member_deposit_record){
	Session session = getSession();
	session.save(member_deposit_record);
	}
	//根据充值渠道订单号（支付宝页面生成的订单号）查询本条信息
	public int queryPay_channel_order_no(String pcon){
		String  sql="select status from member_deposit_record where pay_channel_order_no="+pcon;
		Session session = getSession();
		Object st = (Object)session.createSQLQuery(sql).list().get(0);
		int status=Integer.parseInt(st.toString());
		return status;
	}
	//通过充值渠道订单号（支付宝页面生成的订单号）查询出本条信息id
	public int listid(String pcon){
		String sql="select id from member_deposit_record where pay_channel_order_no="+pcon;
		Session session = getSession();
		Object s = (Object)session.createSQLQuery(sql).list().get(0);
		int id=Integer.parseInt(s.toString());
		return id;
	}
	
	//根据充值渠道订单号（支付宝页面生成的订单号）修改付款状态
	public boolean updateStatus(String pcon){
		//String hql="update Member_deposit_record set status="+1+" where pay_channel_order_no="+pcon;
		int id=listid(pcon);
		Session session = getSession();
		Member_deposit_record member_deposit_record = (Member_deposit_record) session.get(Member_deposit_record.class, id);
		member_deposit_record.setStatus(1);
		session.update(member_deposit_record);
		return true;
	}
	
}
