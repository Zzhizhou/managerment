package com.iotek.ssm.dao;

import com.iotek.ssm.entity.Visitor;

/**
 * Created by Administrator on 2018/10/11.
 */
public interface VisitorDao {
    Visitor selectVisitorByName(String name);
    void insertVisitor(Visitor visitor);
}
