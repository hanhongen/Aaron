package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Finance_product_subscribe {  //理财类基金产品预约记录表)

	private int id;  //id
	private String name;  //名称
	private Member member;  //会员ID
	private String phone;  //联系电话
	private Finance_product_funds finance_product_funds;  //理财产品ID 
	private String addr;  //所在地区
	private int status;  //是否处理(0:签署拍照|1:已签约|2:审核中|3:签署失败)
	private String comment;  //电子签署文档信息
	private String risk_reveal;  //风险揭示书
	private String create_date;  //添加时间
	private String update_date;  //修改时间
	private double amount;  //私募购买金额
	private double interest;  // 私募结算收益
	private String start_date;  //开始时间
	private String end_date;  //结束时间
	private String signed_photos;  // 签署拍照
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne()
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@ManyToOne()
	@JoinColumn(name="product_id")
	public Finance_product_funds getFinance_product_funds() {
		return finance_product_funds;
	}
	public void setFinance_product_funds(Finance_product_funds finance_product_funds) {
		this.finance_product_funds = finance_product_funds;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getRisk_reveal() {
		return risk_reveal;
	}
	public void setRisk_reveal(String risk_reveal) {
		this.risk_reveal = risk_reveal;
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
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getInterest() {
		return interest;
	}
	public void setInterest(double interest) {
		this.interest = interest;
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
	public String getSigned_photos() {
		return signed_photos;
	}
	public void setSigned_photos(String signed_photos) {
		this.signed_photos = signed_photos;
	}
	
}
