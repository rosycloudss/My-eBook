package com.my_ebook.entity;

import org.springframework.stereotype.Component;

import java.util.*;
/**
 * @ClassName:Category
 * @Author:liwei
 * @Description: TODO 图书分类
 * @Date:2019/6/20 23:18
 * @Version: V1.0
 *
 */
@Component
public class Category {

	/**
	 * 分类ID
	 */
	private Integer id;
	/**
	 * 上级分类Id
	 */
	private Integer parentId;
	/**
	 * 分类名称
	 */
	private String name;
	/**
	 * 下级分类
	 */
	private List<Category> subCategory;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Category> getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(List<Category> subCategory) {
		this.subCategory = subCategory;
	}

	@Override
	public String toString() {
		return "Category{" +
				"id=" + id +
				", parentId=" + parentId +
				", name='" + name + '\'' +
				", subCategory=" + subCategory +
				'}';
	}
}