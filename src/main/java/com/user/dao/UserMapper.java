package com.user.dao;

import com.base.mapper.SqlMapper;
import com.user.bean.User;
import java.util.List;

/**
 * Created by dianjinzi on 22/12/15.
 */


public interface UserMapper extends SqlMapper{

     List<User> findAll();

     List<User> findByUsername(String username);
}
