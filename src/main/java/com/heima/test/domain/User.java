package com.heima.test.domain;

import javax.persistence.*;

/**
 * Created by yst on 2017/7/19.
 */
@Entity
@Table(name = "userinfo")
public class User {
    private Integer id;
    private String username;
    private String password;
    private String testid;

    @Id @GeneratedValue
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getTestid() {
        return testid;
    }

    public void setTestid(String testid) {
        this.testid = testid;
    }
}
