package com.july.networkdisk.vo;

public class Categorie {
	private String id;
	private String name;
	private String reid;
	
	public Categorie(){
		
	}

	public Categorie(String id, String name, String reid) {
		super();
		this.id = id;
		this.name = name;
		this.reid = reid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getReid() {
		return reid;
	}

	public void setReid(String reid) {
		this.reid = reid;
	}

	
	
}
