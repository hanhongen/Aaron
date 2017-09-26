package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmg.bean.Subject;
import com.dmg.bean.Users;
import com.dmg.dao.UserDao;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public List<Subject> showSubject(){
		return userDao.showSubject();
	}
	
	public void save(Users users) {
		userDao.save(users);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		return userDao.getUsers(mobile_phone,password);
	}
	

	
	public Users getUsersById(int id) {
		return userDao.getUsersById(id);
	}
}
