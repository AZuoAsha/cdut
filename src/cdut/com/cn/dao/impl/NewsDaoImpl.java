package cdut.com.cn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cdut.com.cn.dao.NewsDao;
import cdut.com.cn.entity.News;

//实现dao接口的方法，向数据库操作
@Repository("newsDao")
public class NewsDaoImpl extends SqlSessionDaoSupport implements NewsDao {
	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public News addNews(News news) {
		// System.out.println("addNews执行了news="+news);
		String statement = "cdut.com.cn.mappers.NewsMapper.addNews";
		int result = getSqlSession().insert(statement, news);
		return news;
	}

	@Override
	public int delete(News news) {
		String statement = "cdut.com.cn.mappers.NewsMapper.delete";
		int deleteResult = getSqlSession().delete(statement, news);
		// System.out.println("deleteDao="+deleteResult);
		return deleteResult;

	}

	@Override
	public int update(News news) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public News findOne(News news) {
		String statement = "cdut.com.cn.mappers.NewsMapper.findOne";
		News result = getSqlSession().selectOne(statement, news);
		return result;
	}

	@Override
	public News findOneTo(News news) {
		String statement = "cdut.com.cn.mappers.NewsMapper.findOneTo";
		News result = getSqlSession().selectOne(statement, news);
		return result;
	}

	@Override
	public List<News> findAll(String newsType) {
		// System.out.println("findAll执行了");
		String statement = "cdut.com.cn.mappers.NewsMapper.findAll";
		List<News> list = getSqlSession().selectList(statement, newsType);
		// System.out.println("list="+list);
		return list;
	}

}
