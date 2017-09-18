package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Subject {  //�����

	private int id;  //id
	private String serial_number;  // ��ˮ��
	private String serial_no;  //��ͬ��'
	private String name;  //�������
	private int type;  //�������'
	private int status;  //״̬
	private double floor_amount;  //��Ͷ���
	private double amount;  //��Ľ��
	private int first_id;  //ʼ��id
	private int parent_id;  //����id
	private int period;  //�������
	private String purpose;  //���Ŀ��
	private String raise_start;  //ļ����ʼ
	private String raise_end;  //ļ������
	private int refund_way;  //���ʽ
	private int safeguard_way;  //���Ϸ�ʽ
	private String start_date;//��Ŀ�ʼ����
	private String end_date;//��Ľ�������
	private double year_rate;  //�껯��',
	private String comment;  //��Ʒ����
	private Subject_folder subject_folder;  //�ļ���Id
	private int delflag;  //�Ƿ�ɾ��
	private String update_date;  //��������'
	private String create_date;  //��������
	private String borrowername;  //���������
	private int borrowerid;  //�����id
	private int bought;  //�ѹ�����
	private String projectdetails;  //��Ŀ����
	private String safetycontrol;  //��ȫ����
	private int exper_status;  //������Ƿ���Թ���(0����1����)
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public String getSerial_no() {
		return serial_no;
	}
	public void setSerial_no(String serial_no) {
		this.serial_no = serial_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public double getFloor_amount() {
		return floor_amount;
	}
	public void setFloor_amount(double floor_amount) {
		this.floor_amount = floor_amount;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getFirst_id() {
		return first_id;
	}
	public void setFirst_id(int first_id) {
		this.first_id = first_id;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public int getPeriod() {
		return period;
	}
	public void setPeriod(int period) {
		this.period = period;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getRaise_start() {
		return raise_start;
	}
	public void setRaise_start(String raise_start) {
		this.raise_start = raise_start;
	}
	public String getRaise_end() {
		return raise_end;
	}
	public void setRaise_end(String raise_end) {
		this.raise_end = raise_end;
	}
	public int getRefund_way() {
		return refund_way;
	}
	public void setRefund_way(int refund_way) {
		this.refund_way = refund_way;
	}
	public int getSafeguard_way() {
		return safeguard_way;
	}
	public void setSafeguard_way(int safeguard_way) {
		this.safeguard_way = safeguard_way;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public double getYear_rate() {
		return year_rate;
	}
	public void setYear_rate(double year_rate) {
		this.year_rate = year_rate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	@ManyToOne()
	@JoinColumn(name="folder_id")
	public Subject_folder getSubject_folder() {
		return subject_folder;
	}
	public void setSubject_folder(Subject_folder subject_folder) {
		this.subject_folder = subject_folder;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getBorrowername() {
		return borrowername;
	}
	public void setBorrowername(String borrowername) {
		this.borrowername = borrowername;
	}
	public int getBorrowerid() {
		return borrowerid;
	}
	public void setBorrowerid(int borrowerid) {
		this.borrowerid = borrowerid;
	}
	public int getBought() {
		return bought;
	}
	public void setBought(int bought) {
		this.bought = bought;
	}
	public String getProjectdetails() {
		return projectdetails;
	}
	public void setProjectdetails(String projectdetails) {
		this.projectdetails = projectdetails;
	}
	public String getSafetycontrol() {
		return safetycontrol;
	}
	public void setSafetycontrol(String safetycontrol) {
		this.safetycontrol = safetycontrol;
	}
	public int getExper_status() {
		return exper_status;
	}
	public void setExper_status(int exper_status) {
		this.exper_status = exper_status;
	}
	
	
	
}
