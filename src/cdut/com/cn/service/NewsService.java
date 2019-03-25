package cdut.com.cn.service;

import java.util.List;

import cdut.com.cn.entity.News;

//定义服务层接口和增删改查方法
public interface NewsService {
	public News add(News news);
	public int update(News news);
	public News findOne(News news);
	public List<News> findAll(String newsType);
	public int delete(News news);
	public News findOneTo(News news);
}
