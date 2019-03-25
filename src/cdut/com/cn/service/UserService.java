package cdut.com.cn.service;

import java.util.List;

import cdut.com.cn.entity.User;

//定义服务层接口和增删改查方法
public interface UserService {

	public int add(User user);
	public int delete(User user);
	public User update(User user);
	public User findOne(User user);
	public List<User> findAll();
}
