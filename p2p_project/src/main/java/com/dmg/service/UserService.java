package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Subject;
import com.dmg.bean.User_role;
import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Push_notice;
import com.dmg.bean.Users;
import com.dmg.dao.UserDao;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public User_role getRoleByid(int id) {
		return userDao.getRoleByid(id);
	}
	
	public Member getMemberByName(String name) {
		return userDao.getMemberByName(name);
	}
	
	public List<Subject> showSubject(){
		return userDao.showSubject();
	}
	
	public void saveUsers(Users users) {
		userDao.saveUsers(users);
	}
	public void saveMember(Member member) {
		userDao.saveMember(member);
	}
	public void saveMemberAccount(Member_account member_account) {
		userDao.saveMemberAccount(member_account);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		return userDao.getUsers(mobile_phone,password);
	}
	

	
	public Users getUsersById(int id) {
		return userDao.getUsersById(id);
	}
	
	//前台显示公告管理
	public List<Push_notice> listpush(){
		return userDao.listpush();
	}
	
	
}
