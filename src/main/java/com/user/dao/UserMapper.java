package com.user.dao;

import com.base.mapper.SqlMapper;
import com.user.bean.User;
import java.util.List;

/**
 * Created by dianjinzi on 22/12/15.
 */


public interface UserMapper extends SqlMapper{

     List<User> findAll();

	 List<User> selectUserByName(String string);

	 List<User> selectShowUser();

	 List<User> selectHideUser();
	
	 void updateUserById(User user);
	
     void updateUserTypeById(User user);

	 void insertUser(User user);
}
