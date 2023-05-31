package com.mctbl.webadmin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mctbl.webadmin.bean.Order;

@Component
public interface Ordermapper extends BaseMapper<Order> {

    @Select("SELECT * FROM `order` WHERE DATE_SUB(NOW(), INTERVAL 30 DAY) < `order_time`;")
    List<Order> getMounthOrder();

    @Select("SELECT * FROM `order` WHERE DATE_SUB(NOW(), INTERVAL 7 DAY) < `order_time`;")
    List<Order> getWeekOrder();

}
