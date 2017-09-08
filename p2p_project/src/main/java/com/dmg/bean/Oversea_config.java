package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Oversea_config {  //�������ñ�)

	private int id;  //id
	private String title;  //����'
	private String content;  //����
	private int sortcolum;  //����ֵ
	private String child_title;  // �ӱ���
	private String description;  //����
	private String user_type;  //�û�Ⱥ��
	private String updtime;  //�޸�ʱ��
	private String addtime;  //����ʱ��
	private String oversea_icon;  //ͼ��
	private String start_date;  //��ʼʱ��
	private String end_date;  //����ʱ��
	private int status; //״̬   
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getSortcolum() {
		return sortcolum;
	}
	public void setSortcolum(int sortcolum) {
		this.sortcolum = sortcolum;
	}
	public String getChild_title() {
		return child_title;
	}
	public void setChild_title(String child_title) {
		this.child_title = child_title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getUpdtime() {
		return updtime;
	}
	public void setUpdtime(String updtime) {
		this.updtime = updtime;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public String getOversea_icon() {
		return oversea_icon;
	}
	public void setOversea_icon(String oversea_icon) {
		this.oversea_icon = oversea_icon;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	
}
