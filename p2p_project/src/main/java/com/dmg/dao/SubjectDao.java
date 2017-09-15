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
		for (Subject subject : list) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("SubjectDao:");
			System.out.println("Subject [id=" + subject.getId() + ", serial_number=" + subject.getSerial_number() + ", serial_no=" + subject.getSerial_no() + ", name=" + subject.getName()
			+ ", type=" + subject.getType() + ", status=" + subject.getStatus() + ", floor_amount=" + subject.getFloor_amount() + ", amount=" + subject.getAmount()
			+ ", first_id=" + subject.getFirst_id() + ", parent_id=" + subject.getParent_id() + ", period=" + subject.getPeriod() + ", purpose=" + subject.getPurpose()
			+ ", raise_start=" + subject.getRaise_start() + ", raise_end=" + subject.getRaise_end() + ", refund_way=" + subject.getRefund_way()
			+ ", safeguard_way=" + subject.getSafeguard_way() + ", start_date=" + subject.getStart_date() + ", eng_date=" + subject.getEng_date()
			+ ", year_rate=" + subject.getYear_rate() + ", comment=" + subject.getComment() + ", subject_folder=" + subject.getSubject_folder()
			+ ", delflag=" + subject.getDelflag() + ", update_date=" + subject.getUpdate_date() + ", create_date=" + subject.getCreate_date()
			+ ", borrowername=" + subject.getBorrowername() + ", borrowerid=" + subject.getBorrowerid() + ", bought=" + subject.getBought()
			+ ", projectdetails=" + subject.getProjectdetails() + ", safetycontrol=" + subject.getSafetycontrol() + ", exper_status="
			+ subject.getExper_status() + "]");
			System.out.println("<------------------------------------------------------------------------------->");
		}
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
