package com.zcl.util.general.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * 获取当前时间工具类
 * @return
 */
public abstract class DateInFo {
    //获取当前时间
    public static String getNowTime(){
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        return time;
    }
    //字符串日期转换成时间戳
    public static Date dateReturnFomart(String date) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date time = format.parse(date);
            return time;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
    //时间戳转换为指定日期格式
    public static String StampReturnTime(Long Date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = format.format(Date);
        return str;
    }
    //格式化VUE时间
    public static String getTime(String date){
        String result = date.replace("-", "");
        return result;
    }

}
