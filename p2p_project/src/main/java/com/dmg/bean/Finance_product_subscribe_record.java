package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Finance_product_subscribe_record {  //金融产品订阅记录表)

	private int id;  //id
	private Member member;  //会员ID  
	private Finance_product_subscribe finance_product_subscribe;  //私募预约记录ID
	private String tech_user_id;  //e签宝个人账号 
	private String tech_user_seal;  // e签宝个人印章
	private String org_path;  //原签署文档路径
	private String new_path;  //新签署文档路径
	private int status;  //状态	
	private String create_date;  //创建时间	
	private String update_date;  //修改时间
	private String filed1;  //备用字段
	
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
	@JoinColumn(name="subscribe_id")
	public Finance_product_subscribe getFinance_product_subscribe() {
		return finance_product_subscribe;
	}
	public void setFinance_product_subscribe(Finance_product_subscribe finance_product_subscribe) {
		this.finance_product_subscribe = finance_product_subscribe;
	}
	public String getTech_user_id() {
		return tech_user_id;
	}
	public void setTech_user_id(String tech_user_id) {
		this.tech_user_id = tech_user_id;
	}
	public String getTech_user_seal() {
		return tech_user_seal;
	}
	public void setTech_user_seal(String tech_user_seal) {
		this.tech_user_seal = tech_user_seal;
	}
	public String getOrg_path() {
		return org_path;
	}
	public void setOrg_path(String org_path) {
		this.org_path = org_path;
	}
	public String getNew_path() {
		return new_path;
	}
	public void setNew_path(String new_path) {
		this.new_path = new_path;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
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
	public String getFiled1() {
		return filed1;
	}
	public void setFiled1(String filed1) {
		this.filed1 = filed1;
	}
	
	
	
	
}
