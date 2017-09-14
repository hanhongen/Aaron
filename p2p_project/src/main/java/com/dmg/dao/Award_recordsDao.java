package com.dmg.dao;

import java.util.List;
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
	 * 列表显示：
  	 * 序号 手机号 姓名 邀请码 被邀请码 投资金额 是否已注册奖励 是否已投资奖励 注册时间
	 * @return
	 */
	public List<Award_records> listAward_records(){
		String hql="from Award_records";
		Session session = getSession();
		List<Award_records> list = session.createQuery(hql).list();
		for (Award_records a : list) {
			System.out.println("Award_recordsDao: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",name:"+a.getMember().getMember_name()+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		return list;
	}
	

	
}
