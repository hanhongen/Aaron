package com.dmg.service;

import org.hibernate.Session;
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
	public boolean saveMember(Member member){
		memberDao.saveMember(member);
		return true;
	}
	 //检查用户认证情况
	public List<Member> checkRZ(int id){
		return memberDao.checkRZ(id);	
	}
	//写这个方法解决一些历史遗留的问题，使用user表的id，在member中查询出member表的id，以此解决问题
	public int correct(int id){
			return memberDao.correct(id);
	}
}
