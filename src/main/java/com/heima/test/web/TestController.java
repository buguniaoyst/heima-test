package com.heima.test.web;

import com.heima.test.domain.TestCtrl;
import com.heima.test.domain.TestInfo;
import com.heima.test.domain.User;
import com.heima.test.service.TestInfoService;
import com.heima.test.service.TestService;
import com.heima.test.utils.ScoreUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.Request;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("test")
public class TestController {


    //注入service
    @Autowired
    private TestService testService;

    @Autowired
    private TestInfoService testInfoService;

    @RequestMapping("addTest")
    public ModelAndView addTest(TestCtrl testInfo) {
        System.out.println("test testAdd");
        testInfo.setTestId(testInfo.getClassNo()+testInfo.getClassTestNo());
        ModelAndView md = new ModelAndView("test_info");
        md.addObject("testinfo","本班的局域网ip+/rest/register.jsp?testid="+testInfo.getClassNo()+testInfo.getClassTestNo());
        //保存之前根据testid做幂等
        TestCtrl exitTestCtrl = testService.queryListByExample(testInfo);
        if(null != exitTestCtrl){
            //将试卷开启
            exitTestCtrl.setTestStatus("开启");
           testService.updateSelectiveById(exitTestCtrl);
            return md;
        }
        testInfo.setTestStatus("开启");
        testService.saveTestInfo(testInfo);
        return md;
    }


    @RequestMapping("listTest")
    @ResponseBody
    public Map<String, Object> listTest() {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        List<TestCtrl> testCtrls = testService.queryOrderByTestStatus();
        resultMap.put("pagesize", 10);
        resultMap.put("results", testCtrls);
        return  resultMap;
    }


    @RequestMapping("submit")
    public ModelAndView  submitTest(HttpSession session, TestInfo testInfo){
        //先判断是否登录
        User user = (User) session.getAttribute("loginUser");
        if(null == user){
            return new ModelAndView("login","message","请输入正确的用户名和密码");
        }
        //获取testid
        String testid = user.getTestid();
        Double score = null;
        if(StringUtils.isNotBlank(testid)){
            if(testid.endsWith("0")){
                 score = ScoreUtils.getPrimaryScore(testInfo);
            }else{
                score = ScoreUtils.getSeniorScore(testInfo);
            }
        }
        testInfo.setTotalScore(score);
        testInfo.setUsername(user.getUsername());
        testInfo.setTestid(user.getTestid());
        //防止重复提交
        TestInfo testInfoParam = new TestInfo();
        testInfoParam.setUsername(user.getUsername());
        testInfoParam.setTestid(user.getTestid());
        List<TestInfo> testInfos = testInfoService.queryListByWhere(testInfoParam);
        ModelAndView mv = new ModelAndView("score_info");
        mv.addObject("user", user);
        mv.addObject("testinfo", testInfo);
        if(null != testInfos && testInfos.size()>0){
            return mv;
        }
        testInfoService.save(testInfo);
        return  mv;
    }


    @RequestMapping("stopTest")
    public String stopTest(TestCtrl testCtrl) {
        //根据testid查询对应的试卷
        TestCtrl testCtrl1 = testService.queryOne(testCtrl);
        if(null != testCtrl1){
            testCtrl.setId(testCtrl1.getId());
            testCtrl.setTestStatus("已关闭");
            testService.updateSelectiveById(testCtrl);
        }
        return "redirect:/rest/testctrl_list";
    }

    @RequestMapping("startTest")
    public String startTest(TestCtrl testCtrl) {
        //根据testid查询对应的试卷
        TestCtrl testCtrl1 = testService.queryOne(testCtrl);
        if(null != testCtrl1){
            testCtrl.setId(testCtrl1.getId());
            testCtrl.setTestStatus("开启");
            testService.updateSelectiveById(testCtrl);
        }
        return "redirect:/rest/testctrl_list";
    }


    @RequestMapping(value = "scoreList")
    @ResponseBody
    public Map<String, Object> getFinishedTest(){
        TestCtrl testCtrl = new TestCtrl();
        testCtrl.setTestStatus("已关闭");
        List<TestCtrl> testCtrlList = testService.queryFinishedTestByExample(testCtrl);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("pagesize", 10);
        resultMap.put("results", testCtrlList);
        return resultMap;
    }

    @RequestMapping(value = "showScoreDetail")
    @ResponseBody
    public Map<String, Object> showScoreDetail(TestCtrl testCtrl){
        TestInfo testInfo = new TestInfo();
        testInfo.setTestid(testCtrl.getTestId());
        List<TestInfo> testInfoList = testInfoService.queryListByExample(testInfo);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("pagesize", 50);
        resultMap.put("results", testInfoList);
        return resultMap;
    }


    @RequestMapping(value = "exportScoreList",method = RequestMethod.POST)
    public ModelAndView exportScoreListByTestid(TestCtrl testCtrl) {
        TestInfo testInfo = new TestInfo();
        testInfo.setTestid(testCtrl.getTestId());
        ModelAndView mv = new ModelAndView("excelView");
        mv.addObject("scoreList",testInfoService.queryListByExample(testInfo));
        return mv;
    }

}
