package com.test;

import com.media.dao.MediaMapper;
import com.user.dao.UserMapper;
import com.user.bean.User;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

//@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestUser {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private MediaMapper mediaMapper;

    @Test
    public void testUser(){
 
//      List<User> list=userMapper.findAll(); 	
//      List list = mediaMapper.selectAllMedia();
//    	List<User> list=userMapper.selectUserByName("������");
//    	List<User> list=userMapper.selectShowUser();
//    	List<User> list=userMapper.selectHideUser();
    	
    	
    	
       //����ID�޸��û���������
//   	User user =new User();
//   	user.setId(1);
//    user.setUsername("shang");
//    user.setPassword("2222");
//   	List<User> list=userMapper.updateUserById(user);
//        System.out.print(list);
//    	
    	
    	//����ID�޸�TYPE
//   	User user =new User();
//  	user.setId(1);
//    user.setType(1);
//   	List<User> list=userMapper.updateUserTypeById(user);
    	
    	
    	//�����û���������
//       User user=new User();
//       user.setType(1);       
//       user.setUsername("hhhhhh");
//       user.setPassword("4444");
//       List<User> list=userMapper.insertUser(user);



    }






}