package com.aaa.springboot06.controller;

import com.aaa.springboot06.entiy.Ainfo;
import com.aaa.springboot06.entiy.Pinfo;
import com.aaa.springboot06.service.AinfoService;
import com.aaa.springboot06.service.InfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class InfoController {
    @Autowired
    private InfoService service;
    @Autowired
    private AinfoService ainfoService;

    @RequestMapping("showp")
    private String show(String txt, Model model, PageInfo<Pinfo> pageInfo){
        if(txt==null){
            txt="";
        }
        if(pageInfo.getPageNum()==0){
            pageInfo.setPageNum(1);
        }
        pageInfo.setPageSize(2);
        pageInfo= service.list(pageInfo,txt);
        List<Pinfo> list = pageInfo.getList();
        model.addAttribute("txt",txt);
        model.addAttribute("pageInfo",pageInfo);
        return "showp";
    }

    @RequestMapping("addupdshow")
    public  String  addupdshow(Integer pid,Model model){
        if(pid!=null){
            Pinfo pinfo = service.selectId(pid);
            model.addAttribute("pinfo",pinfo);
        }
        List<Ainfo> ainfos = ainfoService.listAll();
        model.addAttribute("ainfo",ainfos);
        return "addupdshow";
    }
    @RequestMapping("addupd")
    public  String addupd(Pinfo pinfo){
        int add = service.add(pinfo);
        return "redirect:showp";
    }
    @RequestMapping("delete")
    public  String delete(Integer pid){
        int add = service.delete(pid);
        return "redirect:showp";
    }


}
