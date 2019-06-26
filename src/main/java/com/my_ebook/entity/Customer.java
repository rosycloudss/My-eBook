package com.my_ebook.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.Date;
/**
 * @ClassName:Customer
 * @Author:liwei
 * @Description: TODO 顾客类
 * @Date:2019/6/20 23:20
 * @Version: V1.0
 *
 */
@Component
public class Customer {

	/**
	 * 顾客编号
	 */
	private Integer ID;
	/**
	 * 顾客姓名
	 */
	private String name;


	/**
	 * 用户头像
	 */
	private String head;
	/**
	 * 昵称
	 */
	private String nickname;
	/**
	 * 性别
	 */
	private String gender;
	/**
	 * 电话号码
	 */
	private String phone;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 邮箱
	 */
	private String email;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 上次登录时间
	 */
	private Date lastLoginTime;
	/**
	 * 地址
	 */
	private String addr;
	/**
	 * 邮编
	 */
	private String zipCode;


	public Integer getID() {
		return ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@DateTimeFormat(pattern="yyyy-MM-ddHH:mm:ss")
	@JsonFormat(pattern="yyyy-MM-ddHH:mm:ss")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@DateTimeFormat(pattern="yyyy-MM-ddHH:mm:ss")
	@JsonFormat(pattern="yyyy-MM-ddHH:mm:ss")
	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}


	@Override
	public String toString() {
		return "Customer{" +
				"ID=" + ID +
				", name='" + name + '\'' +
				", nickname='" + nickname + '\'' +
				", gender='" + gender + '\'' +
				", phone='" + phone + '\'' +
				", password='" + password + '\'' +
				", email='" + email + '\'' +
				", createTime=" + createTime +
				", lastLoginTime=" + lastLoginTime +
				", addr='" + addr + '\'' +
				", zipCode='" + zipCode + '\'' +
				'}';
	}
}