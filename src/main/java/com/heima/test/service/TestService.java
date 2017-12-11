package com.heima.test.service;

import com.github.abel533.entity.Example;
import com.heima.test.domain.TestCtrl;
import com.heima.test.domain.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TestService extends BaseService<TestCtrl>{

    public void saveTestInfo(TestCtrl testInfo) {
        save(testInfo);
    }

    public TestCtrl queryListByExample(TestCtrl testCtrl) {
        Example ex = new Example(TestCtrl.class);
        ex.createCriteria().andEqualTo("testId", testCtrl.getTestId());
        List<TestCtrl> testCtrls = this.getMapper().selectByExample(ex);
        if(null != testCtrls && testCtrls.size()>0){
            return testCtrls.get(0);
        }
        return null;
    }

    public List<TestCtrl> queryFinishedTestByExample(TestCtrl testCtrl) {
        Example example = new Example(TestCtrl.class);
        example.createCriteria().andEqualTo("testStatus", testCtrl.getTestStatus());
        return this.getMapper().selectByExample(example);
    }

    public List<TestCtrl> queryOrderByTestStatus() {
        Example example = new Example(TestCtrl.class);
        example.setOrderByClause("test_status desc");
        return this.getMapper().selectByExample(example);
    }
}
