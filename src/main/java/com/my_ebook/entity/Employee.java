package com.my_ebook.entity;

import org.springframework.stereotype.Component;

import java.util.Date;
/**
 * @ClassName:Employee
 * @Author:liwei
 * @Description: TODO 员工类
 * @Date:2019/6/20 23:21
 * @Version: V1.0
 *
 */
@Component
public class Employee {

	/**
	 * 员工编号
	 */
	private Integer ID;
	/**
	 * 员工姓名
	 */
	private String name;
	/**
	 * 员工电话号码 也是员工登录时的账号
	 */
	private String phone;
	/**
	 * 员工职位 1 表示管理员  2 普通员工
	 */
	private Integer position;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 创建时间
	 */
	private Date createTime;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Employee{" +
				"ID=" + ID +
				", name='" + name + '\'' +
				", phone='" + phone + '\'' +
				", position=" + position +
				", password='" + password + '\'' +
				", createTime=" + createTime +
				'}';
	}
}