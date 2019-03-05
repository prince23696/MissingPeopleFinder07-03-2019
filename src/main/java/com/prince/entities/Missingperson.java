package com.prince.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Missingperson {

	
	private String name;
	private String age;
	@Id
	private String register_no;
	private String date_of_missing;
	private String time_of_missing;
	private String mobile;
	private String gender;
	private String DOB;
	private String address;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getRegister_no() {
		return register_no;
	}
	public void setRegister_no(String register_no) {
		this.register_no = register_no;
	}
	public String getDate_of_missing() {
		return date_of_missing;
	}
	public void setDate_of_missing(String date_of_missing) {
		this.date_of_missing = date_of_missing;
	}
	public String getTime_of_missing() {
		return time_of_missing;
	}
	public void setTime_of_missing(String time_of_missing) {
		this.time_of_missing = time_of_missing;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Missingperson(String name, String age, String register_no,
			String date_of_missing, String time_of_missing, String mobile,
			String gender, String dOB, String address) {
		super();
		this.name = name;
		this.age = age;
		this.register_no = register_no;
		this.date_of_missing = date_of_missing;
		this.time_of_missing = time_of_missing;
		this.mobile = mobile;
		this.gender = gender;
		DOB = dOB;
		this.address = address;
	}
	
	public Missingperson(String register_no) {
		super();
		this.register_no = register_no;
	}

	public Missingperson() {
		super();
	}
	@Override
	public String toString() {
		return "Missingperson [name=" + name + ", age=" + age
				+ ", register_no=" + register_no + ", date_of_missing="
				+ date_of_missing + ", time_of_missing=" + time_of_missing
				+ ", mobile=" + mobile + ", gender=" + gender + ", DOB=" + DOB
				+ ", address=" + address + "]";
	}
	

}
