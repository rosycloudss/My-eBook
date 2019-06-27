package com.my_ebook.entity;

import org.springframework.stereotype.Component;

/**
 * @ClassName:Car
 * @Author:liwei
 * @Description: TODO 顾客购物车
 * @Date:2019/6/20 23:15
 * @Version: V1.0
 *
 */
@Component
public class Car {

	/**
	 * 购物车所属的顾客
	 */
	private Customer customer;
	/**
	 * 购物车中的图书
	 */
	private Book book;
	/**
	 * 编号
	 */
	private Integer ID;
	/**
	 * 数量
	 */
	private Integer orderMount;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
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

	public float getTotalPrice(){
		return book.getPrice() * orderMount;
	}

	@Override
	public String toString() {
		return "Car{" +
				"customer=" + customer +
				", book=" + book +
				", ID=" + ID +
				", orderMount=" + orderMount +
				'}';
	}
}