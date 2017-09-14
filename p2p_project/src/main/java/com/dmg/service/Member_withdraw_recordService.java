package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Member_withdraw_record;
import com.dmg.dao.Member_withdraw_recordDao;

@Service
@Transactional
public class Member_withdraw_recordService {
	@Autowired
	private Member_withdraw_recordDao member_withdraw_recordDao;
	
	/**
	 * �б���ʾ��
     * ��� �ֻ��� ���� ���֤ ���ֽ�� �������� ���ֿ��� ���ֿ����е�ַ ����״̬ ����ʱ�� �˺���ϸ
	 * @return
	 */
	public List<Member_withdraw_record> listMember_withdraw_record(){
		List<Member_withdraw_record> listmwr = member_withdraw_recordDao.listMember_withdraw_record();
		return listmwr;
	}
}
