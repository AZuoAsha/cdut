package cdut.com.cn.dao;

import java.util.List;


import cdut.com.cn.entity.News;
//定义有增删改查方法的dao接口
public interface NewsDao {
	public News addNews(News news);
	public int update(News news);
	public List<News> findAll(String newsType);
	public int delete(News news);
	public News findOne(News news);
	public News findOneTo(News news);
}
