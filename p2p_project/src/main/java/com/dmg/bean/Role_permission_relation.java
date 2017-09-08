package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Role_permission_relation {  //角色权限表

	private int id;  //id
	private String permission_ename;  //权限名称
	private String create_date;  //创建时间
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPermission_ename() {
		return permission_ename;
	}
	public void setPermission_ename(String permission_ename) {
		this.permission_ename = permission_ename;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	
	
}
