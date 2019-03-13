package com.prince.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MissingPerson {
	@Id
	private String id;
	private String status;
	private String name;
	private String dob;
	private String gender;
	private String area;
	private String address;
	private String mobile;
	private String complextion;
	private String hair;
	private String identi_mark;
	private String build;
	private String height;
	private String outfit;
	private String lastseen;
	private String extra;
	private String image;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getComplextion() {
		return complextion;
	}
	public void setComplextion(String complextion) {
		this.complextion = complextion;
	}
	public String getHair() {
		return hair;
	}
	public void setHair(String hair) {
		this.hair = hair;
	}
	public String getIdenti_mark() {
		return identi_mark;
	}
	public void setIdenti_mark(String identi_mark) {
		this.identi_mark = identi_mark;
	}
	public String getBuild() {
		return build;
	}
	public void setBuild(String build) {
		this.build = build;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getOutfit() {
		return outfit;
	}
	public void setOutfit(String outfit) {
		this.outfit = outfit;
	}
	public String getLastseen() {
		return lastseen;
	}
	public void setLastseen(String lastseen) {
		this.lastseen = lastseen;
	}
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public MissingPerson(String id, String status, String name, String dob,
			String gender, String area, String address, String mobile,
			String complextion, String hair, String identi_mark, String build,
			String height, String outfit, String lastseen, String extra,
			String image) {
		super();
		this.id = id;
		this.status = status;
		this.name = name;
		this.dob = dob;
		this.gender = gender;
		this.area = area;
		this.address = address;
		this.mobile = mobile;
		this.complextion = complextion;
		this.hair = hair;
		this.identi_mark = identi_mark;
		this.build = build;
		this.height = height;
		this.outfit = outfit;
		this.lastseen = lastseen;
		this.extra = extra;
		this.image = image;
	}
	
	public MissingPerson(String id) {
		super();
		this.id = id;
	}
	public MissingPerson() {
		super();
	}
	@Override
	public String toString() {
		return "MissingPerson [id=" + id + ", name=" + name + ", dob=" + dob
				+ ", gender=" + gender + ", area=" + area + ", address="
				+ address + ", mobile=" + mobile + ", complextion="
				+ complextion + ", hair=" + hair + ", identi_mark="
				+ identi_mark + ", build=" + build + ", height=" + height
				+ ", outfit=" + outfit + ", lastseen=" + lastseen + ", extra="
				+ extra + ", image=" + image + "]";
	}
	
		
	
}
