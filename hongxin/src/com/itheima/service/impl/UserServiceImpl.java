package com.itheima.service.impl;

import com.itheima.domain.User;
import com.itheima.mapper.UserMapper;
import com.itheima.service.UserService;
import com.itheima.utils.SqlSessionUtils;
import org.apache.ibatis.session.SqlSession;

public class UserServiceImpl implements UserService {
    @Override
    public User login(User user) {
        try {
            //
            SqlSession sqlSession = SqlSessionUtils.openSession();
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            User login = mapper.findByUsernameAndPwd(user.getUsername(), user.getPassword());
            return login;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            SqlSessionUtils.close();
        }
        return null;
    }
}
