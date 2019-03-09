package com.prince.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Police {

			@Id
			private String email;
			private String password;
			private String name;
			private String address;
			private String mobile;
			private String gender;
			private String dob;
			private String police_id;
			private String station_no;
			private String area;
			private String Acc_status="Activate";
			
			public String getEmail() {
				return email;
			}
			public void setEmail(String email) {
				this.email = email;
			}
			public String getPassword() {
				return password;
			}
			public void setPassword(String password) {
				this.password = password;
			}
			public String getName() {
				return name;
			}
			public void setName(String name) {
				this.name = name;
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
			public String getGender() {
				return gender;
			}
			public void setGender(String gender) {
				this.gender = gender;
			}
			public String getPolice_id() {
				return police_id;
			}
			public void setPolice_id(String police_id) {
				this.police_id = police_id;
			}
			public String getStation_no() {
				return station_no;
			}
			public void setStation_no(String station_no) {
				this.station_no = station_no;
			}
			public String getArea() {
				return area;
			}
			public void setArea(String area) {
				this.area = area;
			}
		
			public String getDob() {
				return dob;
			}
			public String getAcc_status() {
				return Acc_status;
			}

			public void setAcc_status(String acc_status) {
				Acc_status = acc_status;
			}

				
			public Police(String email, String password, String name,
					String address, String mobile, String gender, String dob,
					String police_id, String station_no, String area) {
				super();
				this.email = email;
				this.password = password;
				this.name = name;
				this.address = address;
				this.mobile = mobile;
				this.gender = gender;
				this.dob = dob;
				this.police_id = police_id;
				this.station_no = station_no;
				this.area = area;
			}
			public Police(String email, String password, String name,
					String address, String mobile, String gender, String dob,
					String police_id, String station_no, String area,
					String acc_status) {
				super();
				this.email = email;
				this.password = password;
				this.name = name;
				this.address = address;
				this.mobile = mobile;
				this.gender = gender;
				this.dob = dob;
				this.police_id = police_id;
				this.station_no = station_no;
				this.area = area;
				Acc_status = acc_status;
			}
			public void setDob(String dob) {
				this.dob = dob;
			}
			public Police(String email) {
				super();
				this.email = email;
			}
			public Police() {
				super();
			}
			@Override
			public String toString() {
				return "Police [email=" + email + ", password=" + password
						+ ", name=" + name + ", address=" + address
						+ ", mobile=" + mobile + ", gender=" + gender
						+ ", dob=" + dob + ", police_id=" + police_id
						+ ", station_no=" + station_no + ", area=" + area
						+ ", Acc_status=" + Acc_status + "]";
			}
			
			
}
