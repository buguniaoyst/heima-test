package com.heima.test.domain;

public class TestInfo {
    private Integer id;
    private String testId;
    private  String classType;
    private  String classNo;
    private String stuNumber;
    private String classTestNo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public String getClassNo() {
        return classNo;
    }

    public void setClassNo(String classNo) {
        this.classNo = classNo;
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getClassTestNo() {
        return classTestNo;
    }

    public void setClassTestNo(String classTestNo) {
        this.classTestNo = classTestNo;
    }

    @Override
    public String toString() {
        return "TestInfo{" +
                "id=" + id +
                ", testId='" + testId + '\'' +
                ", classType='" + classType + '\'' +
                ", classNo='" + classNo + '\'' +
                ", stuNumber='" + stuNumber + '\'' +
                ", classTestNo='" + classTestNo + '\'' +
                '}';
    }
}
