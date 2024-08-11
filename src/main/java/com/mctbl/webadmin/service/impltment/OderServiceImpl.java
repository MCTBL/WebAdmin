package com.mctbl.webadmin.service.impltment;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mctbl.webadmin.bean.Order;
import com.mctbl.webadmin.mapper.Ordermapper;
import com.mctbl.webadmin.service.OrderService;

@Service
public class OderServiceImpl extends ServiceImpl<Ordermapper, Order> implements OrderService {

}
