package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Award_records {  //奖励记录表
	
	private int id;  //id
	private int invitingid;  //邀请人ID	
	private int byinvitingid;  //被邀人ID
	private int type;  //奖励类型(0:注册奖励,1:投资奖励)
	private int amount;//充值金额
	private int isaward;  //奖励状态(0:未奖励 1:已奖励)
	private String addtime; //添加时间
	private Member member;
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
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
