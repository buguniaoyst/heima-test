package com.heima.test.domain;

import org.omg.CORBA.portable.IDLEntity;

import javax.persistence.*;

@Entity
@Table(name = "test_source")
public class TestSource {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Integer id;
    private  String  testName;
    private  String  testType;
    private  String testStatus = "1";
    private  String testItems;
    private  String testSourcesId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestType() {
        return testType;
    }

    public void setTestType(String testType) {
        this.testType = testType;
    }

    public String getTestStatus() {
        return testStatus;
    }

    public void setTestStatus(String testStatus) {
        this.testStatus = testStatus;
    }

    public String getTestItems() {
        return testItems;
    }

    public void setTestItems(String testItems) {
        this.testItems = testItems;
    }

    public String getTestSourcesId() {
        return testSourcesId;
    }

    public void setTestSourcesId(String testSourcesId) {
        this.testSourcesId = testSourcesId;
    }

    @Override
    public String toString() {
        return "TestSource{" +
                "id=" + id +
                ", testName='" + testName + '\'' +
                ", testType='" + testType + '\'' +
                ", testStatus='" + testStatus + '\'' +
                ", testItems='" + testItems + '\'' +
                ", testSourcesId='" + testSourcesId + '\'' +
                '}';
    }
}
