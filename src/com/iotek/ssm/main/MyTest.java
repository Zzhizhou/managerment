package com.iotek.ssm.main;

import com.iotek.ssm.dao.VisitorDao;
import com.iotek.ssm.entity.Visitor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2018/10/11.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class MyTest {
    @Autowired
    private VisitorDao visitorDao;
@Test
    public void login(){
    System.out.println(visitorDao.selectVisitorByName("zzz"));
    }
}
