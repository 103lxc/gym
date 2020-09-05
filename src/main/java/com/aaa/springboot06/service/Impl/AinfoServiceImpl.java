package com.aaa.springboot06.service.Impl;

import com.aaa.springboot06.dao.AinfoDao;
import com.aaa.springboot06.entiy.Ainfo;
import com.aaa.springboot06.service.AinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AinfoServiceImpl implements AinfoService {
    @Autowired
    private AinfoDao dao;

    @Override
    public List<Ainfo> listAll() {
        return dao.list();
    }
}
