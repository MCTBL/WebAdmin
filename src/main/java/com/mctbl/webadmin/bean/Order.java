package com.mctbl.webadmin.bean;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import lombok.Data;

@Data
public class Order {

    @TableId(type = IdType.INPUT)
    private Integer orderId;
    private Date orderTime;
    private Integer orderUserId;
    private Integer orderDishesId;
    private Integer orderCount;
    private Double orderTotalCost;

}
