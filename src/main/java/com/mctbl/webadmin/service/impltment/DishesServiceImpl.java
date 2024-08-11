package com.mctbl.webadmin.service.impltment;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.mapper.Dishesmapper;
import com.mctbl.webadmin.service.DishesService;

@Service
public class DishesServiceImpl extends ServiceImpl<Dishesmapper, Dishes> implements DishesService {

}
