package com.mctbl.webadmin.bean;

import com.baomidou.mybatisplus.annotation.TableId;

import lombok.Data;

@Data
public class User {

    @TableId
    private Integer userId;
    private String userPhone;
    private String userName;
    private String userPass;
    private Integer userIsAdmin;
    private Integer userLevel;

}
