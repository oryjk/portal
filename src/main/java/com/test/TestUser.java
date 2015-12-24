package com.test;

import com.media.dao.MediaMapper;
import com.user.dao.UserMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestUser {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestUser.class);

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private MediaMapper mediaMapper;
    @Autowired

    @Test
    public void testUser(){
 
//      List<User> list=userMapper.findAll(); 	
//      List list = mediaMapper.selectAllMedia();
//    	List<User> list=userMapper.selectUserByName("何婷婷");
//    	List<User> list=userMapper.selectShowUser();
//    	List<User> list=userMapper.selectHideUser();
    	
    	
    	
       //根据ID修改用户名和密码
//  	User user =new User();
//      user.setId(1);
//      user.setUsername("shang");
//      user.setPassword("2222");
//      userMapper.updateUserById(user);
   
  	
    	
    	//根据ID修改TYPE
// 	   User user =new User();
// 	   user.setId(1);
//     user.setType(1);
//     userMapper.updateUserTypeById(user);
    	
    	
    	//插入用户名和密码
//      User user=new User();
//      user.setType(1);       
//      user.setUsername("hhhhhh");
//      user.setPassword("4444");
//      userMapper.insertUser(user);

<<<<<<< HEAD

=======
       //List<User> list=userMapper.findAll();
        //List<User> list = userMapper.findByUsername("寮犱笁");
        // List list = mediaMapper.selectAllMedia();
       // System.out.print("2222222222222222222222222222"+list.get(0).getUsername());
>>>>>>> a90777ea3838f8bf088a5ac0524a6bad8a29a3b7

    }


}