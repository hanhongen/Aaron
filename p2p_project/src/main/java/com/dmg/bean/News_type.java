package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class News_type {  //新闻类别列表

	private int id;  //id
	private String name;  //名称
	private String link;  //链接
	private String note;  //备注
	private int sort;  //排序
	private String pagetype;  //页面类型
	private int suptype;  //上级类别
	private String info;  //简介
	private String cphoto;  //封面图片
	private String text;  //内容
	private String seotitle;  //页面seo标题
	private String seokey;  //seo关键字
	private String seodes; // seo描述
	private int addid;  //添加人ID
	private int updid;  //修改人ID
	private String updtime;  //修改时间'
	private String addtime;  //添加时间
	
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
