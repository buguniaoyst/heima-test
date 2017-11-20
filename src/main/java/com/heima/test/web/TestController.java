package com.heima.test.web;

import com.heima.test.domain.TestInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("test")
public class TestController {
    @RequestMapping("addTest")
    public ModelAndView addTest(TestInfo testInfo) {
        System.out.println("test testAdd");
        ModelAndView md = new ModelAndView("test_info");
        md.addObject("testinfo","本班的局域网ip+/views/register.jsp?testId="+testInfo.getClassType()+testInfo.getClassNo()+testInfo.getClassTestNo());
        return md;
    }
}
