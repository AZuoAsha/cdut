package cdut.com.cn.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cdut.com.cn.entity.Comment;
import cdut.com.cn.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
//aa
	@Autowired
	CommentService commentService;

	@RequestMapping("/add.do")
	@ResponseBody
	public String add(String commentContext, String newsId, String commentUser, String newsTitle,
			HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		Date currDate = Calendar.getInstance().getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");/**/
		String commentTime = sdf.format(currDate);

		int add = commentService.add(new Comment(commentContext, commentTime, newsId, commentUser, newsTitle));
		HttpSession session = request.getSession();
		session.setAttribute("commentCntext", commentContext);
		System.out.println("add=" + add);
		if (add == 1) {
			return "success";
		}
		return "false";
	}

	@RequestMapping("/findAll.do")
	@ResponseBody
	public String findAll(Comment comment) {
		List<Comment> list = commentService.findAll(comment);
		String json = JSON.toJSONString(list);
		System.out.println("list=" + list + ",json=" + json);
		return json;
	}
}
