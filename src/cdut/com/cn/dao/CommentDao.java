package cdut.com.cn.dao;

import java.util.List;

import cdut.com.cn.entity.Comment;

//定义DAO接口
public interface CommentDao {

	public int add(Comment comment);
	public int delete(Comment comment);
	public Comment findOne(long id);
	public List<Comment> findAll(Comment comment);
}
