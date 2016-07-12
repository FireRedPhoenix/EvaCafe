package cn.phoenix.evacafe.util;

import java.util.Calendar;

/**
 * Created by Phoenix on 2016/7/12.
 */
public class Tools {
    private static Calendar calendar = Calendar.getInstance();

    public static String getTime() {
        StringBuffer sb = new StringBuffer();
        sb.append(getYear()).append(":")
                .append(getMonth()).append(":")
                .append(getDay()).append(" ")
                .append(getHour()).append("-")
                .append(getMinute());
        return sb.toString();
    }

    public static int getMinute() {
        return calendar.get(Calendar.MINUTE);
    }

    public static int getHour() {
        return calendar.get(Calendar.HOUR_OF_DAY);
    }

    public static int getDay() {
        return calendar.get(Calendar.DAY_OF_MONTH);
    }

    public static int getYear() {
        return calendar.get(Calendar.YEAR);
    }

    public static int getMonth() {
        return calendar.get(Calendar.MONTH) + 1;
    }
}
