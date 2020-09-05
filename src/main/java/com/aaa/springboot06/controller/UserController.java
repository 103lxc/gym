/*
package com.aaa.springboot06.controller;

import com.aaa.springboot06.entiy.Users;
import com.aaa.springboot06.service.Impl.UserServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserServiceImpl service;
    @RequestMapping("show")
    public String show(Model model){
        List<Map> maps = service.listAll();
        model.addAttribute("map",maps);
        return "show";
    }

    @RequestMapping("insert")
    public String insert(Integer id,Model model){
        if(id!=null){
            List<Map> select = service.selectId(id);
            model.addAttribute("user",select);
        }
        List<Map> maps = service.listRole();
        model.addAttribute("role",maps);
        return "insert";
    }

    @RequestMapping("add")
    public String add(Users users){
        int add = service.add(users);
        return "redirect:show";
    }
    @RequestMapping("delete")
    public String delete(Integer id){
        int delete = service.delete(id);

        return "redirect:show";
    }


}
*/
