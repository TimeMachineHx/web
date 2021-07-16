package com.itheima.mapper;

import com.itheima.domain.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {
    @Select("select * from user where username=#{username} and password=#{pwd}")
    User findByUsernameAndPwd(@Param("username") String username,@Param("pwd") String pwd);
}
