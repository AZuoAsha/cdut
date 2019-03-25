package cdut.com.cn.dao;

import java.util.List;

import cdut.com.cn.entity.User;

//定义有增删改查方法的dao接口
public interface UserDao {

	public int add(User user);
	public int delete(User user);
	public User update(User user);
	public User findOne(User user);
	public List<User> findAll();
}
