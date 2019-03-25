package cdut.com.cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdut.com.cn.dao.UserDao;
import cdut.com.cn.entity.User;
import cdut.com.cn.service.UserService;

//实现服务层所有方法，并进行调用dao层
@Service("/userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public int add(User user) {
		int register=userDao.add(user);
		return register;
	}

	@Override
	public int delete(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User update(User user) {
		User update=userDao.update(user);
		return update;
	}

	@Override
	public User findOne(User user) {
		User login=userDao.findOne(user);
		return login;
	}

	@Override
	public List<User> findAll() {
		List<User> list=userDao.findAll();
		return list;
	}

}
