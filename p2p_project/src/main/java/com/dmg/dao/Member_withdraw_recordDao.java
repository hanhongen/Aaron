package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Member_withdraw_record;

@Component
public class Member_withdraw_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 列表显示：
     * 序号 手机号 姓名 身份证 提现金额 提现银行 提现卡号 提现开户行地址 提现状态 提现时间 账号详细
	 * @return
	 */
	public List<Member_withdraw_record> listMember_withdraw_record(Map map){
		String hql="from Member_withdraw_record mw where 0=0 ";
		Session session = getSession();
		hql=listMember_withdraw_recordlike(map, hql);
		System.out.println("listMember_withdraw_record");
		List<Member_withdraw_record> list = session.createQuery(hql).list(); 
		return list;
	}
	
	public String listMember_withdraw_recordlike(Map map,String hql){
		String mname = (String)map.get("mname");
		String mphone = (String)map.get("mphone");
		String mcard = (String)map.get("mcard");
		String mstatus = (String)map.get("mstatus");
		String create_datem = (String)map.get("create_datem");
		System.out.println("listMember_withdraw_recordlike");
		if (mname!=null && !mname.equals("")) {
			hql+=" and mw.member.member_name like '%"+mname+"%'";
		}else if (mphone!=null && !mphone.equals("")) {
			hql+=" and mw.member.mobile_phone like '%"+mphone+"%'";
		}else if (mcard!=null && !mcard.equals("")) {
			hql+=" and mw.bank_card like '%"+mcard+"%'";
		}else if (mstatus!=null && !mstatus.equals("")) {
			hql+=" and mw.status like '%"+mstatus+"%'";
		}else if (create_datem!=null && !create_datem.equals("")) {
			hql+=" and mw.create_date like '%"+create_datem+"%'";
		}
		
		return hql;
	}
}
