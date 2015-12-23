package com.user.bean;

import java.io.Serializable;

/**
 * Created by dianjinzi on 22/12/15.
 */

public class User implements Serializable{
    private Integer id;
    private String username;
    private  String password;

    public String getPassword() {
        return password;
    }

    public Integer getId() {
        return id;
    }

    public String getUserName() {
        return username;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUserName(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
