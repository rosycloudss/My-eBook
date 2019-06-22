package com.my_ebook.entity;

import org.springframework.stereotype.Component;

@Component
public class OrderItem {
	/**
	 * 订单项中的图书
	 */
	private Book book;

	/**
	 * 订单项所属订单
	 */
	private Order order;
	/**
	 * 订单项ID
	 */
	private Integer ID;
	/**
	 * 商品数量
	 */
	private Integer orderMount;
	/**
	 * 发货状态
	 */
	private Integer postStatus;
	/**
	 * 总价
	 */
	private float totalPrice;

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}

	public Integer getOrderMount() {
		return orderMount;
	}

	public void setOrderMount(Integer orderMount) {
		this.orderMount = orderMount;
	}

	public Integer getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(Integer postStatus) {
		this.postStatus = postStatus;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderItem{" +
				"book=" + book +
				", order=" + order +
				", ID=" + ID +
				", orderMount=" + orderMount +
				", postStatus=" + postStatus +
				", totalPrice=" + totalPrice +
				'}';
	}
}