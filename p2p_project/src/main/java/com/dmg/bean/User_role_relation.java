package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class User_role_relation {  //�û���ɫ������

	private int id;
	private Users users;  //�û�id
	private User_role user_role;  //��ɫid',
	private String create_date;  //����ʱ��
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne()
	@JoinColumn(name="user_id")
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	
	@ManyToOne()
	@JoinColumn(name="role_id")
	public User_role getUser_role() {
		return user_role;
	}
	public void setUser_role(User_role user_role) {
		this.user_role = user_role;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	
	
}
