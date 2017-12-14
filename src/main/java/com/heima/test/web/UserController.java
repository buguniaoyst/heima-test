package com.heima.test.web;

import com.heima.test.domain.TestCtrl;
import com.heima.test.domain.User;
import com.heima.test.service.TestService;
import com.heima.test.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.swing.StringUIClientPropertyKey;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {
    private Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private TestService testService;


    @RequestMapping(value = "regist",method = RequestMethod.POST)
    public String regist(User user) {
        //根据用户名和testid做幂等
        User exitUser = userService.queryListByUserNameAndClassid(user);
        if(null != exitUser){
            return "redirect:/rest/login.jsp?classid="+user.getClassid()+"&registMsg=you have registed,please login on now!";
        }

        userService.save(user);
        return "redirect:/rest/login.jsp?classid="+user.getClassid();
    }


    /**
     * 用户登录
     *
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public ModelAndView login(User user, HttpSession session) {

        if (StringUtils.isBlank(user.getUsername()) || StringUtils.isBlank(user.getPassword())) {
            return new ModelAndView("login","message","请输入正确的用户名和密码");
        }

        //查询
        List<User> userList = userService.queryListByExample(user);


        if(null != userList && userList.size()>0 ){
            session.setAttribute("loginUser",userList.get(0));
            String userType = userList.get(0).getUsertype();
            if(StringUtils.isNotBlank(userType) && "管理员".equals(userType)){
                return new ModelAndView("redirect:/rest/index");
            }


            //如果学员信息中既有classid又有testid则根据testid安排测试
            if(StringUtils.isNotBlank(userList.get(0).getTestid()) && StringUtils.isNotBlank(userList.get(0).getClassid())){
               //重定向到测试页面
                return new ModelAndView("redirect:/rest/stu_test_detail");
            }






            //根据testid查询试卷
            TestCtrl testCtrl = new TestCtrl();
            String classid = userList.get(0).getClassid();
            testCtrl.setTestId(classid);
            TestCtrl exitTestCtrl =  testService.queryListByExample(testCtrl);
            if(null != exitTestCtrl && "开启".equals(exitTestCtrl.getTestStatus())){
                if(StringUtils.isNotBlank(classid) && classid.endsWith("0")){
                    return new ModelAndView("primary_test");
                }else{
                    return new ModelAndView("senior_test");
                }
            }else{
                return new ModelAndView("login","message","此次考试已经结束");
            }
        }else{
            return new ModelAndView("login","message","请输入正确的用户名和密码");

        }

    }




    @RequestMapping(value = "loginOut")
    public String loginOut(HttpSession session){
        //销毁session
        session.invalidate();
        return "redirect:/rest/admin_login";
    }


    @RequestMapping(value = "addUser",method = RequestMethod.POST)
    public String addUser(User user) {
        user.setClassid("000");
        //根据用户名和classid做幂等
        User exitUser = userService.queryListByUserNameAndClassid(user);
        if(null != exitUser){
            return "redirect:/rest/login.jsp?classid="+user.getClassid()+"&registMsg=you have registed,please login on now!";
        }
        if("1".equals(user.getUsertype())){
            user.setUsertype("管理员");
        }else{
            user.setUsertype("普通用户");
        }

        userService.save(user);
        return "redirect:/rest/userctrl_List";
    }

    @RequestMapping(value = "userList",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> getUserList() {
       
        Map<String,Object> resultMap = new HashMap<>();
        User user = new User();
        user.setClassid("000");
        List<User> userList = userService.queryListByClassid(user);
        resultMap.put("pagesize", 20);
        resultMap.put("results", userList);
        return resultMap;
    }

}
