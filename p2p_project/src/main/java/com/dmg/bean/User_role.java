package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User_role {  //角色表

	private int id;  
	private String cname;  //中文名',
	private String ename;  //英文名',
	private int available;  //是否可用
	private String remark;  //备注'
	private String create_date;
	private String update_date;
	private String category;  //分类
	private int source_type;  //源型类别
	private int source_id;  //源ID
	private int del_flag;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getSource_type() {
		return source_type;
	}
	public void setSource_type(int source_type) {
		this.source_type = source_type;
	}
	public int getSource_id() {
		return source_id;
	}
	public void setSource_id(int source_id) {
		this.source_id = source_id;
	}
	public int getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(int del_flag) {
		this.del_flag = del_flag;
	}
	
}
