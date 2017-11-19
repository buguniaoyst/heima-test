package com.heima.test.service;


import com.github.abel533.entity.Example;
import com.heima.test.dao.UserDao;
import com.heima.test.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yst on 2017/7/19.
 */
@Service("userService")
public class UserService extends BaseService<User> {
    @Autowired
    private UserDao userDao;

    public List<User> queryListByExample(User user) {
        Example ex = new Example(User.class);
        ex.createCriteria().andEqualTo("username", user.getUsername())
                .andEqualTo("password", user.getPassword());
        return userDao.selectByExample(ex);
    }
}
