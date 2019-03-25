package cdut.com.cn.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cdut.com.cn.entity.FileUpLoad;

//定义服务层接口和增删改查方法
public interface FileUpLoadToService {

	public int add(HttpServletRequest request,String path);
	public int delete(String fileName);
	public FileUpLoad findOne(long id);
	public List<FileUpLoad> findAll();
}
