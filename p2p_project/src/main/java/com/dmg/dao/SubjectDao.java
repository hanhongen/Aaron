package com.dmg.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Subject;
//��Ϣ�ƻ�
@Component
public class SubjectDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * �б���ʾ��
  	 * ��� ��ͬ��� ������ ������� ����ܽ��  ��Ͷ��� ��Ͷ���� 
     * ������� �껯���� ���״̬ ���������
	 * @return
	 */
	public List<Subject> listSubject(Map map){
		String hql = "from Subject where 0=0 ";
		Session session = getSession();
		hql=listSubjectlike(map, hql);
		List<Subject> list = session.createQuery(hql).list();
		
		return list;
	}
	//ģ����ѯ
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
