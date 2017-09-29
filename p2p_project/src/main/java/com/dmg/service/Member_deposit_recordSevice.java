package com.dmg.service;

import java.util.List;
import java.util.Map;

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
	 * 充值记录
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(Map map){
		List<Member_deposit_record> list= member_deposit_recordDao.listMember_deposit_record(map);
		return list;
	}
	
	public List<Member_deposit_record> listMember_deposit_record(int id){
		List<Member_deposit_record> list= member_deposit_recordDao.listMember_deposit_record(id);
		return list;
	}
	
	//以id查询返回集合
	public List<Member_deposit_record> listmdr(int id){
		List<Member_deposit_record> mdr = member_deposit_recordDao.listmdr(id);
		return mdr;
	}
	
	//将充值记录写入数据库
	public void mdrSave(Member_deposit_record member_deposit_record){
		member_deposit_recordDao.mdrSave(member_deposit_record);	
	}
	
	//根据充值渠道订单号（支付宝页面生成的订单号）查询状态信息
	public int queryPay_channel_order_no(String pcon){
		int status=member_deposit_recordDao.queryPay_channel_order_no(pcon);
		return status;
	}
	
	//根据充值渠道订单号（支付宝页面生成的订单号）修改付款状态
	public boolean updateStatus(String pcon){
		member_deposit_recordDao.updateStatus(pcon);
		return true;
	}
}
