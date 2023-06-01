package com.mctbl.webadmin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mctbl.webadmin.bean.User;

@Component
public interface Usermapper extends BaseMapper<User> {

    @Select("SELECT * FROM `user` WHERE `user_is_admin` = #{isAdmin}")
    List<User> getByIsAdmin(Integer isAdmin);

}
