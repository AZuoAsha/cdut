package cdut.com.cn.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import cdut.com.cn.dao.FileUpLoadDao;
import cdut.com.cn.entity.FileUpLoad;
import cdut.com.cn.service.FileUpLoadToService;

//实现服务层所有方法
@Service("fileUpLoadTo")
public class FileUpLoadToServiceImpl implements FileUpLoadToService {

	private static final String releaser = "成都理工大学网上党支部";
	@Autowired
	private FileUpLoadDao fileUpLoad;

	@Override
	public int add(HttpServletRequest request, String path) {
		List<String> list = new ArrayList<String>(); // 存放结果
		// 1、将当前上下文初始化给CommonMutipartResolver
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		// 2、检查Form中encType是否为multipart/form-data
		if (multipartResolver.isMultipart(request)) {
			// 将request转为MultipartHttpServletRequest
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 获取迭代器遍历multipartRequest里的文件名
			Iterator<String> iter = multipartRequest.getFileNames();
			while (iter.hasNext()) {
				// 获取文件并向下遍历
				MultipartFile file = multipartRequest.getFile(iter.next().toString());
				System.out.println("file=" + file);
				if (file != null) {
					// 获取文件类型，即后缀名
					String str = file.getOriginalFilename();
					String suffix = str.substring(str.lastIndexOf("."));
					System.out.println("str=" + str);
					// 用 当前日期+UUID作为文件名避免重名
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String dateStr = sdf.format(new Date()).replaceAll("-", "");
					System.out.println("dateStr=" + dateStr);

					String name = dateStr + UUID.randomUUID().toString().replaceAll("-", "");

					// 拼接文件绝对路径
					String filePath = path + name + suffix;

					String fileName = name + suffix;
					String myPath = "filemannger/upload/" + fileName;
					System.out.println("filePath=" + filePath);
					fileUpLoad.addFile(new FileUpLoad(fileName, dateStr, releaser, myPath, str.trim()));
					try {
						file.transferTo(new File(filePath));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					list.add(filePath);
				}
			}
		}

		return 1;

	}

	@Override
	public int delete(String showName) {
		int deleteResult = fileUpLoad.deleteFile(showName);
		return deleteResult;
	}

	@Override
	public FileUpLoad findOne(long id) {
		FileUpLoad findOneResult = fileUpLoad.findOneFile(id);
		return findOneResult;
	}

	@Override
	public List<FileUpLoad> findAll() {
		List<FileUpLoad> listResult = fileUpLoad.findAllFile();
		Collections.reverse(listResult);
		return listResult;
	}

}
