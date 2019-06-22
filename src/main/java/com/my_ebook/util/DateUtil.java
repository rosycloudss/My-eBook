package com.my_ebook.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName DateUtil
 * @Decsription TODO
 * @Author liwei
 * @Date 2019/5/7 15:33
 * @Version 1.0
 */
public class DateUtil {
    public static Date getCurrentDate() {
        //产生一个不带毫秒的时间,不然,SQL时间和JAVA时间格式不一致
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date tm = new Date();
        try {
            tm= sdf.parse(sdf.format(new Date()));
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        return tm;
    }

    public static Date formatDate(Date date){
        if(date != null){
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                return sdf.parse(sdf.format(date));
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return null;
    }
}
