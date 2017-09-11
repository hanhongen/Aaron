package com.dmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Member;
import com.dmg.dao.MemberDao;
import java.util.List;
import javax.transaction.Transactional;
//�˺Ź���
@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	//��ѯ�����˺�
	public List<Member> listMember(){
		return memberDao.listMember();
	}
	
}
