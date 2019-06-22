package com.my_ebook.entity;

import org.springframework.stereotype.Component;

/**
 * @ClassName:Website
 * @Author:liwei
 * @Description: TODO 网站基本信息
 * @Date:2019/6/20 23:32
 * @Version: V1.0
 *
 */
@Component
public class Website {

	private Integer ID;
	/**
	 * 网站名称
	 */
	private String name;
	/**
	 * 网站logo
	 */
	private String logo;
	/**
	 * 网站地址
	 */
	private String addr;
	/**
	 * 网站电话号码
	 */
	private String phone;
	/**
	 * 网站邮箱
	 */
	private String email;
	/**
	 * 网站访问次数
	 */
	private Integer count;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Website{" +
				"ID=" + ID +
				", name='" + name + '\'' +
				", logo='" + logo + '\'' +
				", addr='" + addr + '\'' +
				", phone='" + phone + '\'' +
				", email='" + email + '\'' +
				", count=" + count +
				'}';
	}
}