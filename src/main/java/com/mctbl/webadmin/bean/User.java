package com.mctbl.webadmin.bean;

import lombok.Data;

@Data
public class User {

    private Integer userId;
    private String userPhone;
    private String userName;
    private String userPass;
    private Integer userIsAdmin;
    private Integer userLevel;

}
