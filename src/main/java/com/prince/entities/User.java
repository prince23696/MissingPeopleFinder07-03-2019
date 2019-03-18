package com.prince.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
		@Id
		private String email;
		private String password;
		private String name;
		private String address;
		private String mobile;
		private String dob;
		private String gender;
		private String Acc_status="Activate";
	
		
		public String getEmail() {
			return email;
		}
		
		public String getDob() {
			return dob;
		}

		public void setDob(String dob) {
			this.dob = dob;
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
		
		public String getAcc_status() {
			return Acc_status;
		}

		public void setAcc_status(String acc_status) {
			Acc_status = acc_status;
		}

		
		public User(String email, String password, String name, String address,
				String mobile, String dob, String gender) {
			super();
			this.email = email;
			this.password = password;
			this.name = name;
			this.address = address;
			this.mobile = mobile;
			this.dob = dob;
			this.gender = gender;
		}

		public User(String email, String password, String name, String address,
				String mobile, String dob, String gender, String acc_status) {
			super();
			this.email = email;
			this.password = password;
			this.name = name;
			this.address = address;
			this.mobile = mobile;
			this.dob = dob;
			this.gender = gender;
			Acc_status = acc_status;
		}

		public User(String email) {
			super();
			this.email = email;
		}

		public User() {
			super();
		}

		@Override
		public String toString() {
			return "User [email=" + email + ", password=" + password
					+ ", name=" + name + ", address=" + address + ", mobile="
					+ mobile + ", dob=" + dob + ", gender=" + gender
					+ ", Acc_status=" + Acc_status + "]";
		}

				
		
		
}
