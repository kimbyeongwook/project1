package com.myp.domain;

public class Member {
	private String userid;

	
	@Override
	public String toString() {
		return "Member [userid=" + userid + ", userpw=" + userpw + ", useremail=" + useremail + ", userage=" + userage
				+ "]";
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public int getUserage() {
		return userage;
	}
	public void setUserage(int userage) {
		this.userage = userage;
	}
	private String userpw;
	
	private String useremail;
	private int userage;
	

}
