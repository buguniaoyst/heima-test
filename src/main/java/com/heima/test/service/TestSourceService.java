package com.heima.test.service;

import com.github.abel533.entity.Example;
import com.heima.test.domain.TestSource;
import com.heima.test.domain.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TestSourceService  extends  BaseService<TestSource>{
    public TestSource queryByTestId(String testId) {
        Example example = new Example(TestSource.class);
        example.createCriteria().andEqualTo("id", testId);
        List<TestSource> testSourceList = this.getMapper().selectByExample(example);
        if(null != testSourceList && testSourceList.size()>0){
            return testSourceList.get(0);
        }
        return  null;
    }

    public TestSource selectTestSourceByTestId(User user) {
        Example example = new Example(TestSource.class);
        example.createCriteria().andEqualTo("id", user.getTestid());
        List<TestSource> testSourceList = this.getMapper().selectByExample(example);
        if(null != testSourceList && testSourceList.size()>0){
            return testSourceList.get(0);
        }

        return  null;
    }
}
