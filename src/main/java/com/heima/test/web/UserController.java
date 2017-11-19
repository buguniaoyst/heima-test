package com.heima.test.web;

import com.heima.test.domain.User;
import com.heima.test.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    private Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;


    @RequestMapping(value = "regist",method = RequestMethod.POST)
    public String regist(User user) {
        userService.save(user);
        return "redirect:/views/login.jsp";
    }


    /**
     * 用户登录
     *
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public ModelAndView login(User user, HttpSession session) {

        //查询
        List<User> userList = userService.queryListByExample(user);
        if (null != userList && userList.size() > 0) {
            session.setAttribute("loginUser",userList.get(0));
            return new ModelAndView("primary_test");
        }

        return new ModelAndView("login","message","请输入正确的用户名和密码");
    }




    @RequestMapping(value = "loginOut")
    public String loginOut(HttpSession session){
        //销毁session
        session.invalidate();
        return "redirect:/rest/page/login";
    }

}
