package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Backtitle;
import com.dmg.dao.BackSystemSettingDao;

@Service
@Transactional
public class BackSystemSettingService {

	@Autowired
	private BackSystemSettingDao backSystemSettingDao;
	
	//œ‘ æ
	public List<Backtitle> showTitle(){
		return backSystemSettingDao.showTitle();
	}
}
