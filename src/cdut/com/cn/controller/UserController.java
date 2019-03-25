package cdut.com.cn.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cdut.com.cn.entity.User;
import cdut.com.cn.service.UserService;

@Controller
@RequestMapping("/userController")
public class UserController {

	@Autowired
	UserService userService;

	// 用户输入信息并进行注册
	@RequestMapping("/register.do")
	@ResponseBody
	public String register(String email, String password, String phone, String passwordcfg, HttpServletRequest req,
			HttpServletResponse resp) throws IOException, ServletException {
		Date currDate = Calendar.getInstance().getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");/**/
		String registerTime = sdf.format(currDate);
		int register = userService.add(new User(email, password, phone, passwordcfg, registerTime));
		System.out.println("register=" + register);
		// 判断注册是否成功返回不同的值给前台
		if (register == 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	// 用户输入信息并进行登陆
	@RequestMapping("/login.do")
	@ResponseBody
	public String login(User user, HttpServletRequest request) {
		User login = userService.findOne(user);
		System.out.println("user=" + user + ",login=" + login);
		// 如果登陆成功则进行存储到session会话中，否则不存储，并返回不同的值给 前台
		if (login != null) {
			HttpSession session = request.getSession();
			System.out.println("session.getAttribute=" + session.getAttribute("isLogin"));
			session.setAttribute("isLogin", "true");
			System.out.println("session.getAttribute=" + session.getAttribute("isLogin"));
			session.setAttribute("user", login);
			String userEmail = login.getEmail();
			session.setAttribute("userMail", userEmail);
			return "success";
		} else {
			return "fail";
		}
	}

	// 用户忘记密码则进行找回密码，进行更新信息
	@RequestMapping("/update.do")
	@ResponseBody
	public String update(User user) {
		User update = userService.update(user);
		System.out.println("update=" + update + ",user=" + user);
		if (update != null) {
			return "success";
		} else {
			return "fail";
		}
	}

	// 找出所有的用户和前台传入的用户信息进行对比判断该用户是否已经注册过
	@RequestMapping("/findAll.do")
	@ResponseBody
	public String findAll(HttpServletRequest request, @RequestParam("email") String email,
			@RequestParam("phone") String phone) {
		System.out.println("findAll执行了email=" + email + ",phone=" + phone);
		List<User> list = userService.findAll();
		System.out.println(list.size());
		// 将找到的用户进行遍历
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
			System.out.println("diaoyongle后" + i);
			System.out.println(list.get(i).getEmail().equals(email));
			// 判断用户是否存在
			if (list.get(i).getEmail().equals(email) == true || list.get(i).getPhone().equals(phone) == true) {
				System.out.println("这是返回true");
				return "true";
			}
		}

		return "false";
	}

	// 判断用户修改密码时用户是否存在
	@RequestMapping("/config.do")
	@ResponseBody
	public String configUser(User user) {
		User user2 = userService.findOne(user);
		System.out.println("user=" + user + ",user2=" + user2);
		if (user2 != null) {
			return "true";
		} else {
			return "fasle";
		}
	}
}
