package com.aaa.springboot06.service;

import com.aaa.springboot06.entiy.Pinfo;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface InfoService {
    List<Pinfo> listAll(String txt);
    PageInfo<Pinfo> list(PageInfo<Pinfo> usersPageInfo, String txt);
    int add(Pinfo pinfo);
    Pinfo selectId(Integer pid);
    int delete(Integer pid);
}
