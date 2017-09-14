package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Award_records {  //½±Àø¼ÇÂ¼±í
	
	private int id;  //id
	private int invitingid;  //ÑûÇëÈËID	
	private int byinvitingid;  //±»ÑûÈËID
	private int type;  //½±ÀøÀàĞÍ(0:×¢²á½±Àø,1:Í¶×Ê½±Àø)
	private int isaward;  //½±Àø×´Ì¬(0:Î´½±Àø 1:ÒÑ½±Àø)
	private String addtime; //Ìí¼ÓÊ±¼ä
	private Member member;
	
	@ManyToOne
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getInvitingid() {
		return invitingid;
	}
	public void setInvitingid(int invitingid) {
		this.invitingid = invitingid;
	}
	public int getByinvitingid() {
		return byinvitingid;
	}
	public void setByinvitingid(int byinvitingid) {
		this.byinvitingid = byinvitingid;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getIsaward() {
		return isaward;
	}
	public void setIsaward(int isaward) {
		this.isaward = isaward;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	
	
}
