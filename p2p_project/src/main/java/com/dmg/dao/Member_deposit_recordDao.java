package com.dmg.dao;

import java.util.List;

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
	 * 列表显示：
     * 序号 订单编号 手机号 订单金额 订单状态 充值渠道 富友手机充值订单 订单时间
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(){
		String hql="from Member_deposit_record";
		Session session = getSession();
		List<Member_deposit_record> list = session.createQuery(hql).list();
		return list;
	}
	
}
