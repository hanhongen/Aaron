package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Member_deposit_record {  //充值记录表)

	private int id;  //id
	private String seril_number;  //流水号',
	private Member member;  //会员id',
	private double amount;  //金额',
	private int status;  //状态(0:待付款;1:完成)',
	private String pay_channel_name;  //充值渠道名称',
	private String pay_channel_order_no;  //充值渠道订单号',
	private int delflag;  // 默认null
	private String create_date;  //创建时间 
	private String update_date;  //修改时间  
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSeril_number() {
		return seril_number;
	}
	public void setSeril_number(String seril_number) {
		this.seril_number = seril_number;
	}
	
	@ManyToOne()
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPay_channel_name() {
		return pay_channel_name;
	}
	public void setPay_channel_name(String pay_channel_name) {
		this.pay_channel_name = pay_channel_name;
	}
	public String getPay_channel_order_no() {
		return pay_channel_order_no;
	}
	public void setPay_channel_order_no(String pay_channel_order_no) {
		this.pay_channel_order_no = pay_channel_order_no;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	
	
}
