package com.dmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Member;
import com.dmg.dao.MemberDao;
import java.util.List;
import javax.transaction.Transactional;
//账号管理
@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	//查询所有账号
	public List<Member> listMember(){
		return memberDao.listMember();
	}
	
}
