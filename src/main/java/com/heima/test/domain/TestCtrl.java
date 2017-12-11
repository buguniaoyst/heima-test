package com.heima.test.domain;

import javax.persistence.*;

@Entity
@Table(name = "testctrl")
public class TestCtrl {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", unique=true, nullable=false)
    private Integer id;
    private String testId;
    private  String classType;
    private  String classNo;
    private String stuNumber;
    private String classTestNo;
    private  String testStatus;


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

    public String getTestStatus() {
        return testStatus;
    }

    public void setTestStatus(String testStatus) {
        this.testStatus = testStatus;
    }

    @Override
    public String toString() {
        return "TestCtrl{" +
                "id=" + id +
                ", testId='" + testId + '\'' +
                ", classType='" + classType + '\'' +
                ", classNo='" + classNo + '\'' +
                ", stuNumber='" + stuNumber + '\'' +
                ", classTestNo='" + classTestNo + '\'' +
                ", testStatus='" + testStatus + '\'' +
                '}';
    }
}
