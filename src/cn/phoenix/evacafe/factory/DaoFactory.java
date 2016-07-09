package cn.phoenix.evacafe.factory;

import cn.phoenix.evacafe.dao.UserDao;
import cn.phoenix.evacafe.util.ConfigUtils;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by Phoenix on 2016/7/8.
 */
public enum DaoFactory {
    INSTANCE;

    public UserDao getDao() {
        String clazz = ConfigUtils.getDao();
        try {
            Class<?> aClass = Class.forName(clazz);
            return (UserDao) aClass.newInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
