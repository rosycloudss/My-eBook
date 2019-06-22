package com.my_ebook.entity;

import org.springframework.stereotype.Component;

import java.util.Date;
/**
 * @ClassName:Reply
 * @Author:liwei
 * @Description: TODO 留言
 * @Date:2019/6/20 23:32
 * @Version: V1.0
 *
 */
@Component
public class Reply {

	private Integer ID;
	/**
	 * 留言者姓名
	 */
	private String cName;
	/**
	 * 留言者邮箱
	 */
	private String email;
	/**
	 * 留言内容
	 */
	private String content;
	/**
	 * 留言时间
	 */
	private Date replyDate;
	/**
	 * 留言者Ip
	 */
	private String ip;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "Reply{" +
				"ID=" + ID +
				", cName='" + cName + '\'' +
				", email='" + email + '\'' +
				", content='" + content + '\'' +
				", replyDate=" + replyDate +
				", ip='" + ip + '\'' +
				'}';
	}
}