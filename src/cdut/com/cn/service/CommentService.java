package cdut.com.cn.service;

import java.util.List;

import cdut.com.cn.entity.Comment;

public interface CommentService {

	public int add(Comment comment);
	public int delete(Comment comment);
	public Comment findOne(long id);
	public List<Comment> findAll(Comment comment);
}
