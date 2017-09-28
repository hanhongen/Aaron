package com.dmg.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Member {  //成员表

	private int id;  //用户id
	private Users user;  //真实姓名
	private String name;   //用户名 
	private String password;  //密码	
	private String salt;    //密码盐
	private String mobile_phone;  //手机号
	private int status;   //账号状态（正常，锁定，删除）
	private int del_flag;  //删除标志
	private String identity;  //身份
	private String create_date;  //创建时间
	private String update_date;  //修改时间
	private String weiboaccount;  //微博账号关联
	private String weixinaccount;  //微信账号关联
	private int headid;  //头像图片ID
	private String invitationcode;  //邀请码
	private String withdraw_password;  //提款密码
	private String qqaccount;   //QQ账号关联
	private String invitedcode;  //被邀请码
	private String qqnumber;   //QQ号码
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_name")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getMobile_phone() {
		return mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		this.mobile_phone = mobile_phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(int del_flag) {
		this.del_flag = del_flag;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
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
	public String getWeiboaccount() {
		return weiboaccount;
	}
	public void setWeiboaccount(String weiboaccount) {
		this.weiboaccount = weiboaccount;
	}
	public String getWeixinaccount() {
		return weixinaccount;
	}
	public void setWeixinaccount(String weixinaccount) {
		this.weixinaccount = weixinaccount;
	}
	public int getHeadid() {
		return headid;
	}
	public void setHeadid(int headid) {
		this.headid = headid;
	}
	public String getInvitationcode() {
		return invitationcode;
	}
	public void setInvitationcode(String invitationcode) {
		this.invitationcode = invitationcode;
	}
	public String getWithdraw_password() {
		return withdraw_password;
	}
	public void setWithdraw_password(String withdraw_password) {
		this.withdraw_password = withdraw_password;
	}
	public String getQqaccount() {
		return qqaccount;
	}
	public void setQqaccount(String qqaccount) {
		this.qqaccount = qqaccount;
	}
	public String getInvitedcode() {
		return invitedcode;
	}
	public void setInvitedcode(String invitedcode) {
		this.invitedcode = invitedcode;
	}
	public String getQqnumber() {
		return qqnumber;
	}
	public void setQqnumber(String qqnumber) {
		this.qqnumber = qqnumber;
	}
	
	
}
