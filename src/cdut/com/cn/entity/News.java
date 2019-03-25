package cdut.com.cn.entity;

//定义实体类
public class News {
	private String newsTittle;
	private String newsContext;
	private String releaseTime;
	private String tittlePicture;
	private String releaseInstitution;
	private String newsType;
	private long id;
	private int page;
	private int row;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNewsTittle() {
		return newsTittle;
	}
	public void setNewsTittle(String newsTittle) {
		this.newsTittle = newsTittle;
	}
	public String getNewsContext() {
		return newsContext;
	}
	public void setNewsContext(String newsContext) {
		this.newsContext = newsContext;
	}
	public String getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}
	public String getTittlePicture() {
		return tittlePicture;
	}
	public void setTittlePicture(String tittlePicture) {
		this.tittlePicture = tittlePicture;
	}
	public String getReleaseInstitution() {
		return releaseInstitution;
	}
	public void setReleaseInstitution(String releaseInstitution) {
		this.releaseInstitution = releaseInstitution;
	}
	
	public String getNewsType() {
		return newsType;
	}
	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public News(String newsTittle, String newsContext, String releaseTime, String newsType, String releaseInstitution) {
		super();
		this.newsTittle = newsTittle;
		this.newsContext = newsContext;
		this.releaseTime = releaseTime;
		this.releaseInstitution = releaseInstitution;
		this.newsType = newsType;
	}
	
	public News(String newsTittle, String newsType) {
		super();
		this.newsTittle = newsTittle;
		this.newsType = newsType;
	}
	public News(String newsTittle) {
		super();
		this.newsTittle = newsTittle;
	}
	public News(long id) {
		super();
		this.id = id;
	}
	
	public News(String newsTittle, String newsContext, String releaseTime, String tittlePicture,
			String releaseInstitution, String newsType, long id, int page, int row) {
		super();
		this.newsTittle = newsTittle;
		this.newsContext = newsContext;
		this.releaseTime = releaseTime;
		this.tittlePicture = tittlePicture;
		this.releaseInstitution = releaseInstitution;
		this.newsType = newsType;
		this.id = id;
		this.page = page;
		this.row = row;
	}
}
