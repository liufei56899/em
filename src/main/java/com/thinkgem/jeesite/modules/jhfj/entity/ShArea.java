package com.thinkgem.jeesite.modules.jhfj.entity;

import java.util.List;

public class ShArea {
    
	private List<SArea> sAreas;
	
	private  String code;
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private  String name;

	public List<SArea> getsAreas() {
		return sAreas;
	}

	public void setsAreas(List<SArea> sAreas) {
		this.sAreas = sAreas;
	}
}
