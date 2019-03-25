package cdut.com.cn.dao;

import java.util.List;

import cdut.com.cn.entity.FileUpLoad;

//定义有增删改查方法的dao接口
public interface FileUpLoadDao {

	public int addFile(FileUpLoad upLoad);
	public int deleteFile(String showName);
	public FileUpLoad findOneFile(long id);
	public List<FileUpLoad> findAllFile();
}
