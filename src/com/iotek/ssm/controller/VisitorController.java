package com.iotek.ssm.controller;

import com.iotek.ssm.entity.Visitor;
import com.iotek.ssm.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2018/10/12.
 */
@RequestMapping("visitor")
@Controller("visitorController")
public class VisitorController {
    @Autowired
    private VisitorService visitorService;
    @RequestMapping("regist")
    public String regist(Visitor visitor){
        visitorService.addVisitor(visitor);
        return "visitor/login";
    }
    @ResponseBody
    @RequestMapping("queryByName")
    public String queryByName(String name){
        Visitor visitor=visitorService.getVisitorByName(name);
        if(visitor!=null){
            return "1";
        }else {
            return "2";
        }
    }
    @RequestMapping("login")
    public String login(Visitor visitor ,Model model){
        System.out.println(visitor);
        Visitor visitor1=visitorService.getVisitorByName(visitor.getName());
        if(visitor1!=null&&visitor1.getPassword().equals(visitor.getPassword())){
            return "visitor/show";
        }else {
            model.addAttribute("error","error");
            return "visitor/login";
        }
    }
}
