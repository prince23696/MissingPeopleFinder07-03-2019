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
			private String dor;
			private String trusty;
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
			public String getRegi_no() {
				return regi_no;
			}
			public void setRegi_no(String regi_no) {
				this.regi_no = regi_no;
			}
			
			public String getDor() {
				return dor;
			}
			public void setDor(String dor) {
				this.dor = dor;
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
			public String getAcc_status() {
				return Acc_status;
			}

			public void setAcc_status(String acc_status) {
				Acc_status = acc_status;
			}


			public NGO(String email, String password, String name,
					String address, String mobile, String regi_no, String dor,
					String trusty, String area) {
				super();
				this.email = email;
				this.password = password;
				this.name = name;
				this.address = address;
				this.mobile = mobile;
				this.regi_no = regi_no;
				this.dor = dor;
				this.trusty = trusty;
				this.area = area;
			}
			public NGO(String email, String password, String name,
					String address, String mobile, String regi_no, String dor,
					String trusty, String area, String acc_status) {
				super();
				this.email = email;
				this.password = password;
				this.name = name;
				this.address = address;
				this.mobile = mobile;
				this.regi_no = regi_no;
				this.dor = dor;
				this.trusty = trusty;
				this.area = area;
				Acc_status = acc_status;
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
						+ ", mobile=" + mobile + ", regi_no=" + regi_no
						+ ", dor=" + dor + ", trusty=" + trusty + ", area="
						+ area + ", Acc_status=" + Acc_status + "]";
			}
			
			
					
}
