package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Member_account {  //(��Ա�˻���)  

	private int id;  //id
	private Member member;  //�û�ID 
	private double useable_balance;  //�������  
	private double imuseale_balance;  //������� 
	private double totl_profit;  //�ۼ�����  
	private String create_date;  //����ʱ�� 
	private String update_date;  // �޸�ʱ�� 
	private double bonus_amount;  //����� 
	private double invest_amount;  //Ͷ���ܶ�   
	private int delflag;  // Ĭ��Ϊ0
	private double bbin_amount;  //�����  
	
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
	public double getUseable_balance() {
		return useable_balance;
	}
	public void setUseable_balance(double useable_balance) {
		this.useable_balance = useable_balance;
	}
	public double getImuseale_balance() {
		return imuseale_balance;
	}
	public void setImuseale_balance(double imuseale_balance) {
		this.imuseale_balance = imuseale_balance;
	}
	public double getTotl_profit() {
		return totl_profit;
	}
	public void setTotl_profit(double totl_profit) {
		this.totl_profit = totl_profit;
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
	public double getBonus_amount() {
		return bonus_amount;
	}
	public void setBonus_amount(double bonus_amount) {
		this.bonus_amount = bonus_amount;
	}
	public double getInvest_amount() {
		return invest_amount;
	}
	public void setInvest_amount(double invest_amount) {
		this.invest_amount = invest_amount;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public double getBbin_amount() {
		return bbin_amount;
	}
	public void setBbin_amount(double bbin_amount) {
		this.bbin_amount = bbin_amount;
	}
	@Override
	public String toString() {
		return "Member_account [id=" + id + ", member=" + member + ", useable_balance=" + useable_balance
				+ ", imuseale_balance=" + imuseale_balance + ", totl_profit=" + totl_profit + ", create_date="
				+ create_date + ", update_date=" + update_date + ", bonus_amount=" + bonus_amount + ", invest_amount="
				+ invest_amount + ", delflag=" + delflag + ", bbin_amount=" + bbin_amount + "]";
	}
	
	
}
