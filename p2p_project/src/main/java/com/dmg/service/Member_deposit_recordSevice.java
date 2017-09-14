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
	 * �б���ʾ��
     * ��� ������� �ֻ��� ������� ����״̬ ��ֵ���� �����ֻ���ֵ���� ����ʱ��
	 * @return
	 */
	public List<Member_deposit_record> listMember_deposit_record(Map map){
		List<Member_deposit_record> list= member_deposit_recordDao.listMember_deposit_record(map);
		return list;
	}
}
