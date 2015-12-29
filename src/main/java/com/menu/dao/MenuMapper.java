package com.menu.dao;

import java.util.List;

import com.base.mapper.SqlMapper;
import com.menu.bean.Menu;

public interface MenuMapper  extends SqlMapper {
	List<Menu> findAll()throws Exception;
}
