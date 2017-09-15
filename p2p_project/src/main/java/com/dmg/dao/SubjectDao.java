package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
//付息计划
@Component
public class SubjectDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 列表显示：
  	 * 序号 合同编号 标的类别 标的名称 标的总金额  起投金额 已投人数 
     * 标的期限 年化收益 标的状态 可体验金购买
	 * @return
	 */
	public List<Subject> listSubject(Map map){
		String hql = "from Subject where 0=0 ";
		Session session = getSession();
		hql=listSubjectlike(map, hql);
		List<Subject> list = session.createQuery(hql).list();
		
		return list;
	}
	//模糊查询
	public String listSubjectlike(Map map,String hql){
		String sname = (String)map.get("sname");
		String stype = (String)map.get("stype");
		String sstatus = (String)map.get("sstatus");
		if (sname!=null && !sname.equals("")) {
			hql+=" and name like '%"+sname+"%'";
		}else if (stype!=null && !stype.equals("")) {
			hql+=" and type like '%"+stype+"%'";
		}else if (sstatus!=null && !sstatus.equals("")) {
			hql+=" and status like '%"+sstatus+"%'";
		}
		return hql;
	}
	
}
