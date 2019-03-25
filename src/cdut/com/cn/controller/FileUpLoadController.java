package cdut.com.cn.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cdut.com.cn.entity.FileUpLoad;
import cdut.com.cn.service.FileUpLoadToService;

@Controller
@RequestMapping(value = "/upLoad"/* ,method=RequestMethod.POST */)
public class FileUpLoadController {

	@Autowired
	private FileUpLoadToService fileUpLoadTo;

	// 文件上传
	@RequestMapping(value = "/addFile.do")
	public String addFile(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		// 拼接文件存储的目录
		String temp = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		int num = temp.indexOf(".metadata");
		// 文件保存路径
		String path = temp.substring(1, num).replace('/', '\\') + request.getContextPath().replaceAll("/", "")
				+ "\\WebContent\\filemannger\\upload\\";
		//String path ="C:\\Soft\\apache-tomcat-8.0.28-windows-x64\\apache-tomcat-8.0.28\\webapps\\cdut\\filemannger\\upload\\";
		System.out.println("path=" + path);
		// 上传文件
		int addResult = fileUpLoadTo.add(request, path);
		request.setAttribute("path", addResult);
		System.out.println(addResult);
		// 页面跳转
		return "redirect:/index.jsp";
	}

	@RequestMapping("/deleteFile.do")
	public String deleteFile(@RequestParam("showName") String showName, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		int fileUpLoad = fileUpLoadTo.delete(showName.trim());
		if (fileUpLoad == 1) {
			return "redirect:/index.jsp";
		}
		return "redirect:delete/deleteFail.jsp";
	}

	// 找出所有文件
	@RequestMapping("/findAllFiles.do")
	@ResponseBody
	public String findAllFiles(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		List<FileUpLoad> list = fileUpLoadTo.findAll();
		// 将找出的数据转换成json格式的数据传给前台
		String json = JSON.toJSONString(list);
		// 返回json格式的数据给前台
		return json;
	}

	// 根据前台传入的id去数据库找到对应的文件
	@RequestMapping("/findOneFile.do")
	public String findOneFile(Model model, @RequestParam("id") long id, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		FileUpLoad fLoad = fileUpLoadTo.findOne(id);
		String context = fLoad.getShowName();
		// 将找到的文件对象的的标题传给前台显示
		return context;
	}

	// 根据前台传入的id找到对应文件进行下载
	@RequestMapping(value = "/download.do"/* ,method=RequestMethod.GET */)
	public void download(@RequestParam("id") Long id, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("方法执行了id=" + id);
		FileUpLoad fLoad = fileUpLoadTo.findOne(id);
		String context = fLoad.getFileName();
		// String path =
		// request.getSession().getServletContext().getRealPath("filemannger\\upload")+"\\"+context;
		// 获取项目路径
		String temp = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		int num = temp.indexOf(".metadata");
		// 获取文件下载的路径
		String path = temp.substring(1, num).replace('/', '\\') + request.getContextPath().replaceAll("/", "")
				+ "\\WebContent\\filemannger\\upload\\" + context;
		//String path ="C:\\Soft\\apache-tomcat-8.0.28-windows-x64\\apache-tomcat-8.0.28\\webapps\\cdut\\filemannger\\upload\\"+ context;

		System.out.println("downPath=" + path);
		// 开始搭建读写桥梁
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
		// BufferedReader bis=new BufferedReader(new FileReader(new File(path)));
		context = URLEncoder.encode(context, "UTF-8");
		response.addHeader("Content-Disposition", "attachment;filename=" + context);
		// 判断文件类型
		response.setContentType("multipart/form-data");
		BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
		// 开始下载
		int str = 0;
		byte[] buffer = new byte[8192];
		while ((str = bis.read(buffer, 0, 8192)) != -1) {
			out.write(buffer, 0, str);
			out.flush();
		}
		out.close();
	}
}
