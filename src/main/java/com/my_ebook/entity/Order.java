package com.my_ebook.entity;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * @ClassName:Order
 * @Author:liwei
 * @Description: TODO 订单类
 * @Date:2019/6/20 23:21
 * @Version: V1.0
 */
@Component
public class Order {

    /**
     * 订单所属的顾客
     */
    private Customer customer;
    /**
     * 订单ID 用来查询订单
     */
    private Integer ID;
    /**
     * 订单编号
     */
    private String orderID;
    /**
     * 订单状态
     */
    private Integer orderStatus;
    /**
     * 收货人
     */
    private String receiver;
    /**
     * 收货地址
     */
    private String recevingAddr;
    /**
     * 收货人电话号码
     */
    private String phone;
    /**
     * 配送方式
     */
    private Integer delivery;
    /**
     * 发货状态
     */
    private Integer postStatus;
    /**
     * 支付状态
     */
    private Integer payStatus;
    /**
     * 订单生成时间
     */
    private Date orderDate;
    /**
     * 备注
     */
    private String remark;
    /**
     * 商品总数量
     */
    private Integer orderMount;
    /**
     * 总价
     */
    private float totalPrice;
    /**
     * 订单中的商品项
     */
    private List<OrderItem> orderItemList;


    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getRecevingAddr() {
        return recevingAddr;
    }

    public void setRecevingAddr(String recevingAddr) {
        this.recevingAddr = recevingAddr;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getDelivery() {
        return delivery;
    }

    public void setDelivery(Integer delivery) {
        this.delivery = delivery;
    }

    public Integer getPostStatus() {
        return postStatus;
    }

    public void setPostStatus(Integer postStatus) {
        this.postStatus = postStatus;
    }

    public Integer getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(Integer payStatus) {
        this.payStatus = payStatus;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getOrderMount() {
        return orderMount;
    }

    public void setOrderMount(Integer orderMount) {
        this.orderMount = orderMount;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
        if (orderItemList != null) {
            totalPrice = 0;
            for (OrderItem orderItem : orderItemList) {
                totalPrice += orderItem.getTotalPrice();
            }
        }
    }

    class STATUS {
        /*********************************************************
         订单状态
         **********************************************************/
        public final int TO_BE_CONFIRMED = 1; //待确认
        public final int CONFIRMED = 2;//已确认
        public final int RECEIVED = 3;//已收货
        public final int CANCLED = 4;//已取消
        public final int COMPLETED = 5;//已完成
        public final int DELETED = 6;//已作废


        /*********************************************************
         订单发货状态
         **********************************************************/
        public final int SHIPPED = 1;//已发货
        public final int UNSHIPPED = 2;//未发货

        /*********************************************************
         订单支付状态
         **********************************************************/

        public final int PAID = 1;//已支付
        public final int UNPAID = 2;//未支付

    }
}