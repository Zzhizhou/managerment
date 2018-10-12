package com.iotek.ssm.service;

import com.iotek.ssm.entity.Visitor;

/**
 * Created by Administrator on 2018/10/12.
 */
public interface VisitorService {
    Visitor getVisitorByName(String name);
    void addVisitor(Visitor visitor);
}
