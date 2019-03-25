package cdut.com.cn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cdut.com.cn.dao.FileUpLoadDao;
import cdut.com.cn.entity.FileUpLoad;

//实现dao接口的方法，向数据库操作
@Repository("fileUpLoad")
public class FileUpLoadDaoImpl extends SqlSessionDaoSupport implements FileUpLoadDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public int addFile(FileUpLoad fileUpLoad) {
		String statement = "cdut.com.cn.mappers.NewsMapper.addFile";
		int insertResult = getSqlSession().insert(statement, fileUpLoad);
		return insertResult;
	}

	@Override
	public int deleteFile(String showName) {
		String statement = "cdut.com.cn.mappers.NewsMapper.deleteFile";
		int deleteResult = getSqlSession().delete(statement, showName);
		return deleteResult;
	}

	@Override
	public FileUpLoad findOneFile(long id) {
		String statement = "cdut.com.cn.mappers.NewsMapper.findOneFile";
		FileUpLoad findOneResult = getSqlSession().selectOne(statement, id);
		return findOneResult;
	}

	@Override
	public List<FileUpLoad> findAllFile() {
		String statement = "cdut.com.cn.mappers.NewsMapper.findAllFile";
		List<FileUpLoad> list = getSqlSession().selectList(statement);
		return list;
	}

}
