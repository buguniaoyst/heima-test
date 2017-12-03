package com.heima.test.service;

import com.heima.test.domain.TestInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TestInfoService extends  BaseService<TestInfo>{
}
