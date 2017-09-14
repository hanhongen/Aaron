package com.dmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.dao.Member_BankcardsDao;
//�󿨹���
@Service
@Transactional
public class Member_BankcardsService {
	@Autowired
	private Member_BankcardsDao member_BankcardsDao;
	
	/**
	 * �б���ʾ��
     * ��� �ֻ��� �������� �����֤ ������ �󿨿��� �󿨵�ַ ״̬ ���ʱ�� ��
	 * @return
	 */
	public List<Member_bankcards> listMember_bankcards(){
		List<Member_bankcards> listmb = member_BankcardsDao.listMember_bankcards();
		return listmb;
	}
	//�û���
	public List<Member> listMember(){
		List<Member> listm = member_BankcardsDao.listMember();
		return listm;
	}
	
}
