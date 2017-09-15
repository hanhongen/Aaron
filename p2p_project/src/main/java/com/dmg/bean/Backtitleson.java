package com.dmg.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Backtitleson {   //后台子菜单

	private int id;
	private String bsname;
	private Backtitle backtitle;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBsname() {
		return bsname;
	}
	public void setBsname(String bsname) {
		this.bsname = bsname;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="btitle_id")
	public Backtitle getBacktitle() {
		return backtitle;
	}
	public void setBacktitle(Backtitle backtitle) {
		this.backtitle = backtitle;
	}
	
	
}
