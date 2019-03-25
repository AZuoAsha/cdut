package cdut.com.cn.entity;

//定义实体类
public class FileUpLoad {

	private long id;
	private String fileName;
	private String fileType;
	private String releaseTime;
	private String releaser;
	private String filePath;
	private String showName;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}
	public String getReleaser() {
		return releaser;
	}
	public void setReleaser(String releaser) {
		this.releaser = releaser;
	}
	
	
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public FileUpLoad() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public String getShowName() {
		return showName;
	}
	public void setShowName(String showName) {
		this.showName = showName;
	}
	public FileUpLoad(String fileName,  String releaseTime, String releaser,String filePath,String showName) {
		super();
		this.fileName = fileName;
		this.releaseTime = releaseTime;
		this.releaser = releaser;
		this.filePath=filePath;
		this.showName=showName;
	}
	
}
