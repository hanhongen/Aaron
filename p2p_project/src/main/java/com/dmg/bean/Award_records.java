package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Award_records {  //������¼��
	
	private int id;  //id
	private int invitingid;  //������ID	
	private int byinvitingid;  //������ID
	private int type;  //��������(0:ע�ά��,1:Ͷ�ʽ���)
	private int isaward;  //����״̬(0:δ���� 1:�ѽ���)
	private String addtime; //���ʱ��
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
