/*
package com.aaa.springboot06.service.Impl;

import com.aaa.springboot06.dao.UsersDao;
import com.aaa.springboot06.entiy.Users;
import com.aaa.springboot06.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UsersService {
    @Autowired
    private UsersDao dao;

    @Override
    public List<Map> listAll() {
        return dao.listAll();
    }

    @Override
    public List<Map> listRole() {
        return dao.listRole();
    }

    @Override
    public int delete(Integer id) {
        return dao.delete(id);
    }

    @Override
    public int add(Users users) {
        if(users.getId()==null){
            return dao.add(users);
        }else {
            return dao.upd(users);
        }

    }

    @Override
    public  List<Map> selectId(Integer id) {
        return dao.selectId(id);
    }
}
*/
