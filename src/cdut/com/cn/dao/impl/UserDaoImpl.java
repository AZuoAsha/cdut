package cdut.com.cn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cdut.com.cn.dao.UserDao;
import cdut.com.cn.entity.User;

//实现dao接口的方法，向数据库操作
@Repository("userDao")
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public int add(User user) {
		String statement = "cdut.com.cn.mappers.UserMapper.register";
		int register = getSqlSession().insert(statement, user);
		return register;
	}

	@Override
	public int delete(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User update(User user) {
		String statement = "cdut.com.cn.mappers.UserMapper.update";
		int update = getSqlSession().update(statement, user);
		if (update == 1) {
			return user;
		} else {
			return null;
		}
	}

	@Override
	public User findOne(User user) {
		if (user.getPassword() != null) {
			String statement = "cdut.com.cn.mappers.UserMapper.login";
			User login = getSqlSession().selectOne(statement, user);
			return login;
		} else {
			String statement2 = "cdut.com.cn.mappers.UserMapper.config";
			User config = getSqlSession().selectOne(statement2, user);
			System.out.println("wo shi statement2");
			return config;
		}

	}

	@Override
	public List<User> findAll() {
		String statement = "cdut.com.cn.mappers.UserMapper.findAll";
		List<User> list = getSqlSession().selectList(statement);
		return list;
	}

}
