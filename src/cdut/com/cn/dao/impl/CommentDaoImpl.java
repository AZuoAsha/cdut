package cdut.com.cn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cdut.com.cn.dao.CommentDao;
import cdut.com.cn.entity.Comment;

@Repository("commentDao")
public class CommentDaoImpl extends SqlSessionDaoSupport implements CommentDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public int add(Comment comment) {
		String statement = "cdut.com.cn.mappers.CommentMapper.add";
		int add = getSqlSession().insert(statement, comment);
		return add;
	}

	@Override
	public int delete(Comment comment) {
		String statement = "cdut.com.cn.mappers.CommentMapper.delete";
		int delete = getSqlSession().delete(statement, comment);
		return delete;
	}

	@Override
	public Comment findOne(long id) {
		String statement = "cdut.com.cn.mappers.CommentMapper.findOne";
		Comment findOne = getSqlSession().selectOne(statement, id);
		return findOne;
	}

	@Override
	public List<Comment> findAll(Comment comment) {
		if (comment.getNewsId() != null) {
			String statement = "cdut.com.cn.mappers.CommentMapper.findAll";
			List<Comment> list = getSqlSession().selectList(statement, comment);
			System.out.println("newsId=" + comment.getNewsId());
			return list;
		} else {
			String statement = "cdut.com.cn.mappers.CommentMapper.findAllTitle";
			List<Comment> list = getSqlSession().selectList(statement, comment);
			System.out.println("newsTitle=" + comment.getNewsTitle());
			return list;
		}

	}

}
