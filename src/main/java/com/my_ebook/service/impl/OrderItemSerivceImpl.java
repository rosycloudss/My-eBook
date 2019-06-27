package com.my_ebook.service.impl;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Order;
import com.my_ebook.entity.OrderItem;
import com.my_ebook.mapper.OrderItemMapper;
import com.my_ebook.service.BookService;
import com.my_ebook.service.OrderItemService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OrderItemSerivceImpl implements OrderItemService {

    @Resource
    private OrderItemMapper orderItemMapper;

    @Autowired
    private BookService bookService;

    public int add(List<OrderItem> orderItemList) {
        int result = 0;
        if (orderItemList != null && !orderItemList.isEmpty()) {
            for (OrderItem orderItem : orderItemList) {
                result += add(orderItem);
            }
        }
        return result;
    }

    public List<OrderItem> createOrderItems(List<Integer> bookIds, Map<Integer, Integer> OrderItemMountMap) {
        List<OrderItem> orderItemList = new ArrayList<OrderItem>();
        List<Book> bookList = bookService.findByIds(bookIds);
        if (bookList != null && !bookList.isEmpty()) {
            for (Book book:bookList){
                OrderItem orderItem = new OrderItem(book,null,null,OrderItemMountMap.get(book.getID()),Order.STATUS.UNSHIPPED);
                orderItemList.add(orderItem);
            }
        }
        return orderItemList;
    }

    public int deleteByOrderId(int orderId) {
        return orderItemMapper.deleteByOrderId(orderId);
    }
    @Override
    public List<OrderItem> findOrderItems(String orderId) {
        return orderItemMapper.selectByOrderId(orderId);
    }

    public int add(OrderItem orderItem) {
        return orderItemMapper.insert(orderItem);
    }

    public int delete(int id) {
        return orderItemMapper.deleteById(id);
    }

    public int update(OrderItem orderItem) {
        return orderItemMapper.update(orderItem);
    }

    /**
     * 方法未实现
     *
     * @param orderItem
     * @return
     */
    public int count(OrderItem orderItem) {
        return 0;
    }

    /**
     * 方法未实现
     *
     * @param orderItem
     * @param page
     * @return
     */
    public Page<OrderItem> findAll(OrderItem orderItem, Page page) {
        return null;
    }
}
