package cdut.com.cn.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdut.com.cn.dao.NewsDao;
import cdut.com.cn.entity.News;
import cdut.com.cn.service.NewsService;

//实现服务层所有方法，并进行调用dao层
@Service("newsService")
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsDao newsDao;

	@Autowired
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	@Override
	public News add(News news) {
		// System.out.println("service的add调用了news="+news);
		News result = newsDao.addNews(news);
		// System.out.println("resultDao="+result);
		return result;
	}

	@Override
	public int delete(News news) {
		int delete = newsDao.delete(news);
		// System.out.println("serviceDelete="+delete);
		return delete;
	}

	@Override
	public int update(News news) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public News findOne(News news) {
		News findOne = newsDao.findOne(news);
		// System.out.println("ServicefindOne="+findOne);
		return findOne;
	}

	@Override
	public News findOneTo(News news) {
		News findOne = newsDao.findOneTo(news);
		// System.out.println("ServicefindOne="+findOne);
		return findOne;
	}

	@Override
	public List<News> findAll(String newsType) {
		// System.out.println("service的findAll调用了");
		List<News> resultList = newsDao.findAll(newsType);
		// System.out.println("NewsServiceImpl的resultList="+resultList);
		Collections.reverse(resultList);
		// System.out.println("倒叙结果="+resultList);
		return resultList;
	}

}
