package com.aaa.springboot06.dao;

import com.aaa.springboot06.entiy.Pinfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface InfoDao {
    List<Pinfo> listAll(String txt);
    int add(Pinfo pinfo);
    Pinfo selectId(Integer pid);
    int upd(Pinfo pinfo);
    int delete(Integer pid);
}
