package com.test;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.shiro.authz.Permission;
import org.apache.shiro.authz.permission.AllPermission;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by dianjinzi on 29/12/15.
 */

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

import java.security.AccessControlContext;
import java.security.AccessController;

//@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestAuth1 {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestAuth1.class);


    @Test
    public void TestShiro(){
        MysqlDataSource datasource = new MysqlDataSource();
        datasource.setUser("root");
        datasource.setPassword("root");
        datasource.setServerName("localhost");
        datasource.setUrl("jdbc:mysql://localhost:3306/portal");
        org.apache.shiro.realm.jdbc.JdbcRealm jdbcRealm = new JdbcRealm();
        jdbcRealm.setDataSource(datasource);
        jdbcRealm.setPermissionsLookupEnabled(true);
        jdbcRealm.setAuthenticationQuery("SELECT PASSWORD FROM user WHERE username = ?");
        jdbcRealm.setUserRolesQuery("SELECT type from user where username = ?");
        jdbcRealm.setPermissionsQuery("SELECT username FROM user WHERE username = ?");
        DefaultSecurityManager security = new DefaultSecurityManager(jdbcRealm);
        SecurityUtils.setSecurityManager(security);
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("feiai123", "a123456");
        token.setRememberMe(true);
        currentUser.login(token);
        //AccessControlContext con = AccessController.getContext();
        if(currentUser.isAuthenticated()){
            System.out.println("***********************************login successfully");
        }
        if(currentUser.hasRole("2")){
            System.out.println("***********************************type = 2");
        }
        if(currentUser.isPermitted("1")){
            System.out.println("***********************************细腻度");
        }
        currentUser.logout();
    }

}
