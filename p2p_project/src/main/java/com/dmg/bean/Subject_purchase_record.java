package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Subject_purchase_record {  //(锟斤拷墓锟斤拷锟斤拷)

	private int id;  //id
	private String serial_number;  //娴佹按鍙�
	private double amount;  //璐拱閲戦
	private String deal_ip;  //浜ゆ槗ip
	private Subject subject;  //鏍囩殑Id
	private Member member;  //浼氬憳ID
	private int delflag;  //鏄惁鍒犻櫎
	private String create_date;//娣诲姞鏃堕棿  
	private String update_date;//淇敼鏃堕棿
	private double interest;  //缁撶畻鍒╂伅
	private int ispayment;  //鏄惁杩樻', 0 鏈繕娆� 1 杩樻
	private int pay_interest_times;  // 璐拱鏌愪釜鏍囩殑娆℃暟
	private int last_profit_day;//鏈�鍚庤鎭棩', 杩樺墿澶氬皯澶�
	private String bonus_info;//绾㈠寘閲戦淇℃伅锛坅pp绔疄闄呮姇璧勯搴�+绾㈠寘棰濆害锛�
	private String result;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getDeal_ip() {
		return deal_ip;
	}
	public void setDeal_ip(String deal_ip) {
		this.deal_ip = deal_ip;
	}
	
	@ManyToOne()
	@JoinColumn(name="subject_id")
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	@ManyToOne()
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
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
	public double getInterest() {
		return interest;
	}
	public void setInterest(double interest) {
		this.interest = interest;
	}
	public int getIspayment() {
		return ispayment;
	}
	public void setIspayment(int ispayment) {
		this.ispayment = ispayment;
	}
	public int getPay_interest_times() {
		return pay_interest_times;
	}
	public void setPay_interest_times(int pay_interest_times) {
		this.pay_interest_times = pay_interest_times;
	}
	public int getLast_profit_day() {
		return last_profit_day;
	}
	public void setLast_profit_day(int last_profit_day) {
		this.last_profit_day = last_profit_day;
	}
	public String getBonus_info() {
		return bonus_info;
	}
	public void setBonus_info(String bonus_info) {
		this.bonus_info = bonus_info;
	}
	
	
}
