package com.prince.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NGO {

			@Id
			private String email;
			private String password;
			private String name;
			private String address;
			private String mobile;
			private String regi_no;
			private String trusty;
			private String area;
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
			public String getRegi_no() {
				return regi_no;
			}
			public void setRegi_no(String regi_no) {
				this.regi_no = regi_no;
			}
			public String getTrusty() {
				return trusty;
			}
			public void setTrusty(String trusty) {
				this.trusty = trusty;
			}
			public String getArea() {
				return area;
			}
			public void setArea(String area) {
				this.area = area;
			}
			public NGO(String email, String password, String name,
					String address, String mobile,String regi_no, String trusty, String area) {
				super();
				this.email = email;
				this.password = password;
				this.name = name;
				this.address = address;
				this.mobile = mobile;
				this.regi_no = regi_no;
				this.trusty = trusty;
				this.area = area;
			}
			public NGO(String email) {
				super();
				this.email = email;
			}
			public NGO() {
				super();
			}
			@Override
			public String toString() {
				return "NGO [email=" + email + ", password=" + password
						+ ", name=" + name + ", address=" + address
						+ ", mobile=" + mobile + ", regi_no=" + regi_no + ", trusty=" + trusty
						+ ", area=" + area + "]";
			}
			
					
}
