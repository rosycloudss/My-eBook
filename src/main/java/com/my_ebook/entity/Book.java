package com.my_ebook.entity;

import com.my_ebook.util.DateUtil;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @ClassName:Book
 * @Author:liwei
 * @Description: TODO 图书类
 * @Date:2019/6/20 23:08
 * @Version: V1.0
 */
@Component
public class Book {
    /**
     * 图书编号
     */
    private Integer ID;

    private String name;
    /**
     * 图书封面地址
     */
    private String cover;
    /**
     * 图书ISBN
     */
    private String ISBN;
    /**
     * 图书页码
     */
    private Integer pages;
    /**
     * 图书简介
     */
    private String description;
    /**
     * 图书定价
     */
    private Float price;
    /**
     * 图书售价
     */
    private Float sellingPrice;
    /**
     * 折扣
     */
    private Float discount;
    /**
     * 出版商
     */
    private String publisher;
    /**
     * 出版日期
     */
    private Date publishDate;
    /**
     * 版次
     */
    private Integer edition;
    /**
     * 库存
     */
    private Integer reserve;
    /**
     * 作者
     */
    private String author;
    /**
     * 图书分类
     */
    private Category category;

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

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public Integer getPages() {
        return pages;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }


    public float getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(float sellingPrice) {
        this.sellingPrice = sellingPrice;
    }


    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Date getPublishDate() {

        return publishDate;

    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public Integer getEdition() {
        return edition;
    }

    public void setEdition(Integer edition) {
        this.edition = edition;
    }

    public Integer getReserve() {
        return reserve;
    }

    public void setReserve(Integer reserve) {
        this.reserve = reserve;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Book{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", ISBN='" + ISBN + '\'' +
                ", pages=" + pages +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", sellingPrice=" + sellingPrice +
                ", discount=" + discount +
                ", publisher='" + publisher + '\'' +
                ", publishDate=" + publishDate +
                ", edition=" + edition +
                ", reserve=" + reserve +
                ", author='" + author + '\'' +
                ", category=" + category +
                '}';
    }
}