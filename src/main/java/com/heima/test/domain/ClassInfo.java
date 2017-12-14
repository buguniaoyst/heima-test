package com.heima.test.domain;

import javax.persistence.*;

@Entity
@Table(name = "class_info")
public class ClassInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Integer id;
    private  String classId;
    private  String testId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    @Override
    public String toString() {
        return "ClassInfo{" +
                "id=" + id +
                ", classId='" + classId + '\'' +
                ", testId='" + testId + '\'' +
                '}';
    }
}
