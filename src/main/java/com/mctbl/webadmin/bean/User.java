package com.mctbl.webadmin.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @TableId(type = IdType.INPUT)
    private Integer userId;
    private String userPhone;
    private String userName;
    private String userPass;
    private Integer userIsAdmin;
    private Integer userLevel;

}
