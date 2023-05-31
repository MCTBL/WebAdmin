package com.mctbl.webadmin.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dishes {

    @TableId(type = IdType.INPUT)
    private Integer dishesId;
    private Integer dishesCategory;
    private Double dishesPrice;
    private String dishesName;

}
