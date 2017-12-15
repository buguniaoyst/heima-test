package com.heima.test.service;

import com.github.abel533.entity.Example;
import com.heima.test.domain.ClassInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ClassInfoService extends  BaseService<ClassInfo>{

    public ClassInfo queryClassInfoByClassId(ClassInfo classInfo) {
        Example example = new Example(ClassInfo.class);
        example.createCriteria().andEqualTo("classId", classInfo.getClassId());
        List<ClassInfo> classInfoList = this.getMapper().selectByExample(example);
        if(null != classInfoList && classInfoList.size()>0){
            return classInfoList.get(0);
        }
        return null;
    }


    public void updatClassInfoByClassId(ClassInfo classInfo) {
        Example example = new Example(ClassInfo.class);
        example.createCriteria().andEqualTo("classId", classInfo.getClassId());
        this.getMapper().updateByExampleSelective(classInfo, example);
    }
}
