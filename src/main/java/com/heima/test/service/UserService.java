package com.heima.test.service;


import com.github.abel533.entity.Example;
import com.heima.test.dao.UserDao;
import com.heima.test.domain.ClassInfo;
import com.heima.test.domain.TestSource;
import com.heima.test.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yst on 2017/7/19.
 */
@Service("userService")
public class UserService extends BaseService<User> {


    public List<User> queryListByExample(User user) {
        Example ex = new Example(User.class);
        ex.createCriteria().andEqualTo("username", user.getUsername())
                .andEqualTo("password", user.getPassword());
        return this.getMapper().selectByExample(ex);
    }

    public User queryListByUserNameAndClassid(User user) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("username",user.getUsername())
                .andEqualTo("classid",user.getClassid());
        List<User> userList = this.getMapper().selectByExample(example);
        if(null != userList && userList.size()>0){
            return userList.get(0);
        }
        return null;
    }

    public List<User> queryListByClassid(User user) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("classid", user.getClassid());
        return this.getMapper().selectByExample(example);
    }

    public void associateTestWithSutdent(ClassInfo classInfo1, TestSource testSource) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("classid", classInfo1.getClassId());
        User user = new User();
        user.setTestid(testSource.getId()+"");
        this.getMapper().updateByExampleSelective(user,example);

    }
}
