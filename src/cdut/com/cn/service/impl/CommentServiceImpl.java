package cdut.com.cn.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdut.com.cn.dao.CommentDao;
import cdut.com.cn.entity.Comment;
import cdut.com.cn.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao commentDao;
	
	@Override
	public int add(Comment comment) {
		int add=commentDao.add(comment);
		return add;
	}

	@Override
	public int delete(Comment comment) {
		int delete=commentDao.delete(comment);
		return delete;
	}

	@Override
	public Comment findOne(long id) {
		Comment findOne=commentDao.findOne(id);
		return findOne;
	}

	@Override
	public List<Comment> findAll(Comment comment ) {
		List<Comment> list=commentDao.findAll(comment);
		Collections.reverse(list);
		return list;
	}

}
