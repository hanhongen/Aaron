package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Subject_file {   //������

	private int id;  //id
	private Subject_folder subject_folder; //��������id
	private String path;  //�ļ�·��
	private String original;  //�ļ���
	private String create_date;  //����ʱ��
	private String update_date;  //�޸�ʱ��
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@ManyToOne()
	@JoinColumn(name="folder_id")
	public Subject_folder getSubject_folder() {
		return subject_folder;
	}
	public void setSubject_folder(Subject_folder subject_folder) {
		this.subject_folder = subject_folder;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginal() {
		return original;
	}
	public void setOriginal(String original) {
		this.original = original;
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
	
	
	
}
