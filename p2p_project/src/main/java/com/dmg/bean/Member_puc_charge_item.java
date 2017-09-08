package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Member_puc_charge_item { //�ɷ���Ŀ��

	private int id;  //id
	private Member member;  //��Աid
	private Member_puc_charge_home member_puc_charge_home;  //��ͥid
	private String charge_type;  //�ɷ����
	private int charge_institution_id;  //�ɷѻ���id
	private String charge_institution_name;  //�ɷѻ������� 
	private String charge_institytion_code;  //�ɷѻ�������
	private String customer;  //�ͻ�����
	private String comment;   //��ע
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@ManyToOne()
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	
	@ManyToOne()
	@JoinColumn(name="home_id")
	public Member_puc_charge_home getMember_puc_charge_home() {
		return member_puc_charge_home;
	}
	public void setMember_puc_charge_home(Member_puc_charge_home member_puc_charge_home) {
		this.member_puc_charge_home = member_puc_charge_home;
	}
	public String getCharge_type() {
		return charge_type;
	}
	public void setCharge_type(String charge_type) {
		this.charge_type = charge_type;
	}
	public int getCharge_institution_id() {
		return charge_institution_id;
	}
	public void setCharge_institution_id(int charge_institution_id) {
		this.charge_institution_id = charge_institution_id;
	}
	public String getCharge_institution_name() {
		return charge_institution_name;
	}
	public void setCharge_institution_name(String charge_institution_name) {
		this.charge_institution_name = charge_institution_name;
	}
	public String getCharge_institytion_code() {
		return charge_institytion_code;
	}
	public void setCharge_institytion_code(String charge_institytion_code) {
		this.charge_institytion_code = charge_institytion_code;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
