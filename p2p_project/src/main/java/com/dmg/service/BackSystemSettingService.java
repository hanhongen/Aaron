package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Backtitle;
import com.dmg.bean.User_role;
import com.dmg.dao.BackSystemSettingDao;

@Service
@Transactional
public class BackSystemSettingService {

	@Autowired
	private BackSystemSettingDao backSystemSettingDao;
	
	//查询角色
	public List<User_role> listRole() {
		return backSystemSettingDao.listRole();
	}
	
	//添加角色
	public void addRole(User_role role) {
		backSystemSettingDao.addRole(role);
	}
}
