package com.prince.entities;

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
		private String gender;
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
		public User(String email, String password, String name, String address,
				String mobile, String gender) {
			super();
			this.email = email;
			this.password = password;
			this.name = name;
			this.address = address;
			this.mobile = mobile;
			this.gender = gender;
		}
		public User() {
			super();
		}
		public User(String email) {
			super();
			this.email = email;
		}
		@Override
		public String toString() {
			return "User [email=" + email + ", password=" + password
					+ ", name=" + name + ", address=" + address + ", mobile="
					+ mobile + ", gender=" + gender + "]";
		}
		
				
		
		
}
