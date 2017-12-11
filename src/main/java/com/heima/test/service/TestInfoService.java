package com.heima.test.service;

import com.github.abel533.entity.Example;
import com.heima.test.domain.TestInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TestInfoService extends  BaseService<TestInfo>{
    public List<TestInfo> queryListByExample(TestInfo testInfo) {
        Example example = new Example(TestInfo.class);
        example.setOrderByClause("total_score desc");
        example.createCriteria().andEqualTo("testid", testInfo.getTestid());
        return this.getMapper().selectByExample(example);
    }
}
