package com.mctbl.webadmin.service.impltment;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.mapper.Usermapper;
import com.mctbl.webadmin.service.UserService;

@Service
public class UserServiceImpl extends ServiceImpl<Usermapper, User> implements UserService {

}
