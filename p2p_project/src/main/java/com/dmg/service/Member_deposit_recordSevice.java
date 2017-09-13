package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Member_deposit_record;
import com.dmg.dao.Member_deposit_recordDao;

@Service
@Transactional
public class Member_deposit_recordSevice {
	@Autowired
	private Member_deposit_recordDao member_deposit_recordDao;
	/**
	 * 列表显示：
     * 序号 订单编号 手机号 订单金额 订单状态 充值渠道 富友手机充值订单 订单时间
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(){
		List<Member_deposit_record> list= member_deposit_recordDao.listMember_deposit_record();
		return list;
	}
}
