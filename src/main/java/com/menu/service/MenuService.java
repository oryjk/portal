package com.menu.service;

import java.util.List;


import com.menu.bean.Menu;

public interface MenuService {
	List<Menu>findAll()throws Exception;
}
