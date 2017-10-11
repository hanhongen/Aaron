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
	//检查手机号是否已绑定
	public String checkPhone(int id){
		String check = memberDao.checkPhone(id);
		return check;
	}
	//绑定手机号
	public boolean bdPhone(int id,String phone,String time){
		return memberDao.bdPhone(id, phone,time);	
	}
	//修改密码
	public boolean updatePwd(int id,String pwd){
		return memberDao.updatePwd(id, pwd);
	}
	//检查提款密码是否已设置
	public String checkTkpwd(int id){
		String check = memberDao.checkTkpwd(id);
		return check;
	}
	//修改提款密码
	public boolean updateTkPwd(int id,String pwd,String time){
		return memberDao.updateTkPwd(id, pwd, time);
	}
}

