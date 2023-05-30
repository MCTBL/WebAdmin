package com.mctbl.webadmin.bean;

import com.baomidou.mybatisplus.annotation.TableId;

import lombok.Data;

@Data
public class Dishes {

    @TableId
    private Integer dishesId;
    private Integer dishesCategory;
    private Double dishesPrice;
    private String dishesName;

}
