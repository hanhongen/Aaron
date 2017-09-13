package com.dmg.dao;

import java.util.List;

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
	public List<Subject> listSubject(){
		String hql = "from Subject";
		Session session = getSession();
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
	
}