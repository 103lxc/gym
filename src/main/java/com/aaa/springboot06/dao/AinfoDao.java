package com.aaa.springboot06.dao;

import com.aaa.springboot06.entiy.Ainfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AinfoDao {
    List<Ainfo> list();
}
