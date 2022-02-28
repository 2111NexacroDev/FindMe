package com.namuneulbo.findme.user.domain;

public class User {
	private int user_No; // 회원 번호 시퀀스
	private String user_Id; // 아이디
	private String user_Pwd; // 비밀번호
	private String user_Name; // 이름
	private String user_Phone; // 핸드폰번호
	private String user_Address; // 주소
	private String user_Email; // 이메일
	private int milage; // 마일리지
	private int discount; // 할인받은 월

	public User() {
	}

	public int getUser_No() {
		return user_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Pwd() {
		return user_Pwd;
	}

	public void setUser_Pwd(String user_Pwd) {
		this.user_Pwd = user_Pwd;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getUser_Phone() {
		return user_Phone;
	}

	public void setUser_Phone(String user_Phone) {
		this.user_Phone = user_Phone;
	}

	public String getUser_Address() {
		return user_Address;
	}

	public void setUser_Address(String user_Address) {
		this.user_Address = user_Address;
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

	public int getMilage() {
		return milage;
	}

	public void setMilage(int milage) {
		this.milage = milage;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "User [user_No=" + user_No + ", user_Id=" + user_Id + ", user_Pwd=" + user_Pwd + ", user_Name="
				+ user_Name + ", user_Phone=" + user_Phone + ", user_Address=" + user_Address + ", user_Email="
				+ user_Email + ", milage=" + milage + ", discount=" + discount + "]";
	}

}
