package com.dmg.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.User_role;
import com.dmg.bean.Users;
import com.dmg.dao.UserSettingDao;

@Service
@Transactional
public class UserSetttingService {

	@Autowired
	private UserSettingDao userSettingDao;
	
	//½ÇÉ«
	public List<User_role> listRole(){
		return userSettingDao.listRole();
	}

	public List<Users> showUsers(Map map){
		return userSettingDao.showUsers(map);
	}
	
	public void update(Users user) {
		userSettingDao.update(user);
	}
	
	public void delete(int id) {
		Users user=this.getUserById(id);
		userSettingDao.delete(user);
	}
	
	public Users getUserById(int id) {
		return userSettingDao.getUserById(id);
	}
	
	public void addUser(Users user) {
		userSettingDao.addUser(user);
	}
	
	public User_role getRoleById(int id) {
		return userSettingDao.getRoleById(id);
	}
}
