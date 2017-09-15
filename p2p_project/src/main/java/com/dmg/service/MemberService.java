package com.dmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Member;
import com.dmg.dao.MemberDao;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;
//账号管理
@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	//查询所有账号
	public List<Member> listMember(Map map){
		return memberDao.listMember(map);
	}
	//根据id查询个人账号详情
	public List<Member> listMemberId(int id){
		List<Member> list = memberDao.listMemberId(id);
		return list;
	}
	
}
