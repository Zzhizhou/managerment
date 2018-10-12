package com.iotek.ssm.service.impl;

import com.iotek.ssm.dao.VisitorDao;
import com.iotek.ssm.entity.Visitor;
import com.iotek.ssm.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/10/12.
 */
@Service("visitorService")
public class VisitorServiceImpl implements VisitorService {
    @Autowired
    private VisitorDao visitorDao;
    @Override
    public Visitor getVisitorByName(String name) {
        return visitorDao.selectVisitorByName(name);
    }

    @Override
    public void addVisitor(Visitor visitor) {
        visitorDao.insertVisitor(visitor);
    }
}
