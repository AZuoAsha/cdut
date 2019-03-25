package cdut.com.cn.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cdut.com.cn.entity.News;
import cdut.com.cn.service.NewsService;

@Controller
@RequestMapping(value = "/receive")
public class NewsController {
	String releaseInstitution = "成都理工大学网上党支部";
	List<News> newsList;
	@Autowired
	private NewsService newsService;

	// 发布新闻，将前台传入的新闻对象存储到数据库中
	@RequestMapping(value = "/News.do")
	public String controllerReceiveNews(@RequestParam("context") String newsContext,
			@RequestParam("newsTittle") String newsTittle, @RequestParam("newsType") String newsType,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("方法调用了");
		// 获取新闻发布日期
		Date currDate = Calendar.getInstance().getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");/**/
		String releaseTime = sdf.format(currDate);
		News news = newsService
				.add(new News(newsTittle.trim(), newsContext, releaseTime, newsType, releaseInstitution));
		// 判断发布是否成功跳转不同的页面
		if (news != null) {
			// System.out.println("releaseTime="+releaseTime+",newsContext="+
			// newsContext+",newsTittle="+newsTittle+",newsType="+newsType+",releaseInstitution="+releaseInstitution);
			return "redirect:/index.jsp";

		} else {
			return "redirect:/deleteFail.html";
		}

	}

	// 将所有的新闻找出来传给前台
	@RequestMapping(value = "/jsonAjax.do")
	@ResponseBody // 要返回json数据给前台时一定要加此注解，否则返回的String字符串会被视图解析器加在网址的后面
	public String jsonAjax(HttpServletRequest request, @RequestParam("newsType") String newsType)
			throws UnsupportedEncodingException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		System.out.println("jsonAjax调用了");
		newsList = newsService.findAll(newsType);
		// 将找到的新闻进行存储到session里面
		request.getSession().setAttribute("newsAll", newsList);
		// 将找到的新闻转换成json格式传给前台
		String json = JSON.toJSONString(newsList);
		System.out.println("JSON=" + json);
		// 将json格式的结果数据返回给前台
		return json;
	}

	// 根据传入的新闻标题去数据库查询并且删除掉
	@RequestMapping("/delete.do")
	public String deleteNews(@RequestParam("deleteNews") String deleteNews, HttpServletRequest request)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("deleteNews=" + deleteNews);
		// 去掉两段的空格
		String delete = deleteNews.trim();
		System.out.println("delete=" + delete);
		int deleteResult = newsService.delete(new News(deleteNews));
		// 判断删除是否成功跳转不同的页面
		System.out.println("deleteCroller=" + deleteResult);
		if (deleteResult == 1) {
			return "redirect:/delete/deleteSuccess.html";
		} else {
			return "redirect:/delete/deleteFail.html";
		}

	}

	// 根据起那台传入的id到数据库找到对应新闻
	@RequestMapping(value = "/findOne.do")
	public String findOneNews(Model model, @RequestParam("id") long id, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		// ModelAndView view=new ModelAndView();
		News news = newsService.findOne(new News(id));
		// System.out.println("findOneNews="+news);
		// 获取新闻的正文内容
		String result = news.getNewsContext();
		// System.out.println("findOneresult="+result);
		// 将正文内容进行存储，并起个名字
		model.addAttribute("news", result);
		HttpSession session = request.getSession();
		// ServletContext application=request.getServletContext();
		System.out.println("存储前id=" + id);
		session.setAttribute("id", id);
		session.setAttribute("newsTitle", null);
		System.out.println("存储后id=" + session.getAttribute("id"));
		session.setAttribute("newsContext", result);
		if (session.getAttribute("isLogin") == "true") {
			System.out.println("此用户已登录session.getAttribute('isLogin')=" + session.getAttribute("isLogin"));

			return "forward:/WEB-INF/jsp/news.jsp";
		} else {
			session.setAttribute("isLogin", "false");
			System.out.println("他执行了这个");
			return "forward:/WEB-INF/jsp/news.jsp";// 转发才能够传递数据
		}

	}

	// 根据前台传入的新闻标题和新闻类型去数据库找到对应的新闻
	@RequestMapping("/findOneTo.do")
	public String findOneTo(Model model, @RequestParam("newsType") String newsType,
			@RequestParam("newsTittle") String newsTittle, HttpServletRequest request)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		News news = newsService.findOneTo(new News(newsTittle, newsType));
		// 获取新闻的正问呢内容
		String result = news.getNewsContext();
		// 存储并起名再跳转页面
		model.addAttribute("news", result);
		HttpSession session = request.getSession();
		session.setAttribute("newsContext", result);
		session.setAttribute("newsTitle", newsTittle);
		session.setAttribute("id", null);
		if (session.getAttribute("isLogin") == "true") {
			System.out.println("此用户已登录session.getAttribute('isLogin')=" + session.getAttribute("isLogin"));
		} else {
			session.setAttribute("isLogin", "false");
		}
		return "forward:/WEB-INF/jsp/news.jsp";
	}

	@RequestMapping(value = "/manner.do")
	public String manner() {
		System.out.println("manner执行了");
		return "forward:/releaseNews.jsp";
	}

}
