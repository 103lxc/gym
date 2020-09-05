package com.aaa.springboot06.service.Impl;

import com.aaa.springboot06.dao.InfoDao;
import com.aaa.springboot06.entiy.Pinfo;
import com.aaa.springboot06.service.InfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InfroServiceImpl implements InfoService {
    @Autowired
    private InfoDao dao;

    @Override
    public List<Pinfo> listAll(String txt) {
        return dao.listAll(txt);
    }

    @Override
    public PageInfo<Pinfo> list(PageInfo<Pinfo> usersPageInfo, String txt) {
        PageHelper.startPage(usersPageInfo.getPageNum(),usersPageInfo.getPageSize());
        List<Pinfo> pinfos = dao.listAll(txt);
        usersPageInfo=new PageInfo<>(pinfos);
        return usersPageInfo;
    }

    @Override
    public int add(Pinfo pinfo) {
        if(pinfo.getPid()==null){
            return dao.add(pinfo);
        }else {
            return dao.upd(pinfo);
        }

    }

    @Override
    public Pinfo selectId(Integer pid) {
        return dao.selectId(pid);
    }

    @Override
    public int delete(Integer pid) {
        return dao.delete(pid);
    }
}
