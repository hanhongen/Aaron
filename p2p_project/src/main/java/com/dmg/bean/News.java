package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class News {  //新闻列表)

	private int id;  //id
	private News_type news_type;    //所属类别 
	private String title;  //标题
	private String subtitle;  //副标题
	private int sort;  //排序
	private String info;  // 简介
	private String cphoto;  //封面图片
	private String link;  // 链接地址
	private String author;  //作者
	private String source;  //来源
	private String label;  //标签
	private int clicknumber;  //点击数量
	private String text;  //内容
	private String filelink;  //附件地址
	private String seotitle;  //页面seo标题
	private String seokey;  //seo关键字
	private String seodes;  //seo描述
	private int plactop;  //是否置顶 0：为是  1为否
	private int recommend;  //是否推荐
	private int audit;  //是否审核
	private int addld;  //添加人ID
	private int updld;  // 修改人ID
	private String updtime;  //修改时间
	private String addtime;  //添加时间
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@ManyToOne()
	@JoinColumn(name="typeid")
	public News_type getNews_type() {
		return news_type;
	}
	public void setNews_type(News_type news_type) {
		this.news_type = news_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public int getClicknumber() {
		return clicknumber;
	}
	public void setClicknumber(int clicknumber) {
		this.clicknumber = clicknumber;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getFilelink() {
		return filelink;
	}
	public void setFilelink(String filelink) {
		this.filelink = filelink;
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
	public int getPlactop() {
		return plactop;
	}
	public void setPlactop(int plactop) {
		this.plactop = plactop;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public int getAudit() {
		return audit;
	}
	public void setAudit(int audit) {
		this.audit = audit;
	}
	public int getAddld() {
		return addld;
	}
	public void setAddld(int addld) {
		this.addld = addld;
	}
	public int getUpdld() {
		return updld;
	}
	public void setUpdld(int updld) {
		this.updld = updld;
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
