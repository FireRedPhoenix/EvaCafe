package cn.phoenix.evacafe.util;

import org.junit.Test;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class ConfigUtils {
    private static Properties properties = null;

    static {
        try {
            properties = new Properties();
            properties.load(new FileReader(ConfigUtils.class.getClassLoader().getResource("cafe_db.properties").getPath()));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getDriverName() {
        return properties.getProperty("driver_name");
    }

    public static String getDao() {
        return properties.getProperty("user_dao");
    }


    public static String getConnecitonUrl() {
        return properties.getProperty("connection_url");
    }

    public static String getUsername() {
        return properties.getProperty("username");
    }

    public static String getPassword() {
        return properties.getProperty("password");
    }
}
