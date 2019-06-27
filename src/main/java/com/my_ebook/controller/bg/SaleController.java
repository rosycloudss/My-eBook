package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Order;
import com.my_ebook.service.OrderService;
import com.my_ebook.util.DateUtil;
import com.my_ebook.util.JsonUtils;
import com.my_ebook.util.StringUtil;
import com.my_ebook.vo.SaleStatistics;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * @ClassName:SaleController
 * @Author:liwei
 * @Description: TODO 销量统计
 * @Date:2019/6/27 10:25
 * @Version: V1.0
 */
@Controller
@RequestMapping("/bg/sale")
public class SaleController {

    @Autowired
    private OrderService orderService;

    private String datePattern = "yyyy-MM-dd";

    /**
     * 销量日统计
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/day", method = RequestMethod.POST)
    public JSONObject getDaySale(Map<String, String> map) {
        String startDay = map.get("startDay");
        String endDay = map.get("endDay");
        System.out.println("startDay=" + startDay + "  endDay=" + endDay);
        if (StringUtil.isNullOrEmpty(startDay)) {
            startDay = DateUtil.addDay(DateUtil.currentDate(datePattern), datePattern, -9);
        }
        if (StringUtil.isNullOrEmpty(endDay)) {
            endDay = DateUtil.addDay(DateUtil.currentDate(datePattern), datePattern, 1);
        }

        List<Order> orderList = orderService.selectByDate(startDay, endDay);

        Map<String, Integer> saleNumMap = new HashMap<String, Integer>();
        Map<String, Double> salesVolumeMap = new HashMap<String, Double>();
        for (Order order : orderList) {
            String orderDate = DateUtil.date2Str(order.getOrderDate(), datePattern);
            if (saleNumMap.get(orderDate) != null) {
                saleNumMap.put(orderDate, saleNumMap.get(orderDate) + order.getOrderMount());
            } else {
                saleNumMap.put(orderDate, order.getOrderMount());
            }

            if (salesVolumeMap.get(orderDate) != null) {
                salesVolumeMap.put(orderDate, salesVolumeMap.get(orderDate) + order.getTotalPrice());
            } else {
                salesVolumeMap.put(orderDate, new Double(order.getTotalPrice()));
            }
        }
        List<SaleStatistics> saleStatisticsList = new ArrayList<SaleStatistics>();
        System.out.println(startDay.compareTo(endDay) < 0);
        while (startDay.compareTo(endDay) < 0) {
            SaleStatistics saleStatistics = new SaleStatistics();
            saleStatistics.setDateStr(startDay);

            saleStatistics.setSaleNum(saleNumMap.get(startDay));
            saleStatistics.setSalesVolume(salesVolumeMap.get(startDay));

            saleStatisticsList.add(saleStatistics);

            startDay = DateUtil.addDay(startDay, datePattern, 1);
            System.out.println("startDay=" + startDay);

        }
        System.out.println(saleStatisticsList);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("saleStatistics", JSON.parse(JsonUtils.toJson(saleStatisticsList)));
        return jsonObject;
    }

}
