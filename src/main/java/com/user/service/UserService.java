package com.user.service;

import org.springframework.stereotype.Component;
 
import com.user.bean.User;
/**
 * 
 * @author HD 
 * on 26/12/15
 *
 */
@Component
public interface UserService {
	User findName(User user)throws Exception;

}
