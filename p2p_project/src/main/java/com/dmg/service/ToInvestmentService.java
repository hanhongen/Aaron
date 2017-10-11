package com.dmg.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Member_trade_record;
import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.bean.Subject_purchase_record;
import com.dmg.dao.ToInvestmentDao;

@Transactional
@Service
public class ToInvestmentService {

	@Autowired
	private ToInvestmentDao toInvestmentDao;
	
	public double countMoney(int id) {
		return toInvestmentDao.countMoney(id);
	}
	
	public int countByPeople(int id) {
		return toInvestmentDao.countByPeople(id);
	}
	
	public List<Subject> showSubject(){
		return toInvestmentDao.showSubject();
	}
	
	public Subject getSubjectById(int id) {
		return toInvestmentDao.getSubjectById(id);
	}
	
	public double getMoney(int id) {
		return toInvestmentDao.getMoney(id);
	}
	
	public Member getMemberByUid(int id) {
		return toInvestmentDao.getMemberByUid(id);
	}
	
	
	public void saveSubject_order_record(Subject_order_record sor) {
		toInvestmentDao.saveSubject_order_record(sor);
	}
	public void saveMemberTradeRecord(Member_trade_record mtr) {
		toInvestmentDao.saveMemberTradeRecord(mtr);
	}
	
	public Subject_order_record getSorBySno(String sno) {
		return toInvestmentDao.getSorBySno(sno);
	}
	
	public void updateSub(Subject_order_record sor) {
		toInvestmentDao.updateSub(sor);
	}
	
	public Member_trade_record getMemberTradeRecordBySno(String sno) {
		return toInvestmentDao.getMemberTradeRecordBySno(sno);
	}
	
	public void updateMember(Member_trade_record mtr) {
		toInvestmentDao.updateMember(mtr);
	}
	
	public Member getMemberByid(int id) {
		return toInvestmentDao.getMemberByid(id);
	}
	
	public int buySubCount(int id) {
		return toInvestmentDao.buySubCount(id);
	}
	
	public void addsubject_purchase_record(Subject_purchase_record spr) {
		toInvestmentDao.addsubject_purchase_record(spr);
	}
	
	public void updateMember_account(Member_account ma) {
		toInvestmentDao.updateMember_account(ma);
	}
	
	public Member_account getMemberAccountBymid(int mid) {
		return toInvestmentDao.getMemberAccountBymid(mid);
	}
}
