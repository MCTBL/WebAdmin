package com.mctbl.webadmin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mctbl.webadmin.bean.Dishes;

@Component
public interface Dishesmapper extends BaseMapper<Dishes> {

    @Select("SELECT * FROM `dishes` WHERE `dishes_category` = #{id}")
    List<Dishes> getByCategory(Integer id);

}
