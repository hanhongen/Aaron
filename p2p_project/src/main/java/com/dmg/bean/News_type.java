package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class News_type {  //��������б�

	private int id;  //id
	private String name;  //����
	private String link;  //����
	private String note;  //��ע
	private int sort;  //����
	private String pagetype;  //ҳ������
	private int suptype;  //�ϼ����
	private String info;  //���
	private String cphoto;  //����ͼƬ
	private String text;  //����
	private String seotitle;  //ҳ��seo����
	private String seokey;  //seo�ؼ���
	private String seodes; // seo����
	private int addid;  //�����ID
	private int updid;  //�޸���ID
	private String updtime;  //�޸�ʱ��'
	private String addtime;  //���ʱ��
	
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getPagetype() {
		return pagetype;
	}
	public void setPagetype(String pagetype) {
		this.pagetype = pagetype;
	}
	public int getSuptype() {
		return suptype;
	}
	public void setSuptype(int suptype) {
		this.suptype = suptype;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getCphoto() {
		return cphoto;
	}
	public void setCphoto(String cphoto) {
		this.cphoto = cphoto;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getSeotitle() {
		return seotitle;
	}
	public void setSeotitle(String seotitle) {
		this.seotitle = seotitle;
	}
	public String getSeokey() {
		return seokey;
	}
	public void setSeokey(String seokey) {
		this.seokey = seokey;
	}
	public String getSeodes() {
		return seodes;
	}
	public void setSeodes(String seodes) {
		this.seodes = seodes;
	}
	public int getAddid() {
		return addid;
	}
	public void setAddid(int addid) {
		this.addid = addid;
	}
	public int getUpdid() {
		return updid;
	}
	public void setUpdid(int updid) {
		this.updid = updid;
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
	
	
	
}
