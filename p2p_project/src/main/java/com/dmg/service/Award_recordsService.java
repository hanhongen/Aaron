package com.dmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dmg.bean.Award_records;
import com.dmg.dao.Award_recordsDao;


@Service
@Transactional
public class Award_recordsService {
	@Autowired
	private Award_recordsDao award_recordsDao;
	
	/**
	 * 列表显示：
  	 * 序号 手机号 姓名 邀请码 被邀请码 投资金额 是否已注册奖励 是否已投资奖励 注册时间
	 * @return
	 */							
	public List<Award_records> listAward_records(){
		System.out.println("Service1");
		List<Award_records> list = award_recordsDao.listAward_records();
		System.out.println("Service2");
		for (Award_records a : list) {
			System.out.println("Service3");
			System.out.println("Award_recordsService: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		return list;
	}
	
	//邀请人
		public List<Award_records> listinvitingid(int invitingid){
			List<Award_records> list = award_recordsDao.listinvitingid(invitingid);
			return list;
		}
	//被邀请人
		public List<Award_records> listbyinvitingid(int byinvitingid){
			List<Award_records> list = award_recordsDao.listbyinvitingid(byinvitingid);
			return list;
		}
	
}
