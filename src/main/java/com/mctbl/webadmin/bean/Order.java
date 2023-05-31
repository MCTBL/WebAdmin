package com.mctbl.webadmin.bean;

import java.sql.Timestamp;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("`order`")
public class Order {

    // order_id,order_time,order_user_id,order_dishes_id,order_count,order_total_cost
    @TableId(type = IdType.INPUT)
    private Integer orderId;
    private Timestamp orderTime;
    private Integer orderUserId;
    private Integer orderDishesId;
    private Integer orderCount;
    private Double orderTotalCost;

}
