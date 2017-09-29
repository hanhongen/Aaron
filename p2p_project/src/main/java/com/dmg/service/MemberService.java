package com.dmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Member;
import com.dmg.dao.MemberDao;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;
//�˺Ź���
@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	//��ѯ�����˺�
	public List<Member> listMember(Map map){
		return memberDao.listMember(map);
	}
	//���id��ѯ�����˺�����
	public List<Member> listMemberId(int id){
		List<Member> list = memberDao.listMemberId(id);
		return list;
	}
	
	public Member getMemberId(int id){
		Member member=memberDao.getMemberId(id);
		return member;
	}
	
}
