package com.heima.test.service;

import com.heima.test.domain.TestCtrl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TestService extends BaseService<TestCtrl>{

    public void saveTestInfo(TestCtrl testInfo) {
        save(testInfo);
    }
}
