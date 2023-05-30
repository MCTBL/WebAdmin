package com.mctbl.webadmin.bean;

import java.util.Date;

import lombok.Data;

@Data
public class Order {

    private Integer orderId;
    private Date orderTime;
    private Integer orderUserId;
    private Integer orderDishesId;
    private Integer orderCount;
    private Double orderTotalCost;

}
