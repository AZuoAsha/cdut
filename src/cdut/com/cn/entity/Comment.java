package cdut.com.cn.entity;

//创建评论的实体类
public class Comment {

	private String commentTime;
	private String commentContext;
	private String newsId;
	private long id;
	private String commentUser;
	private String newsTitle;
	
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getCommentUser() {
		return commentUser;
	}
	public void setCommentUser(String commentUser) {
		this.commentUser = commentUser;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentContext() {
		return commentContext;
	}
	public void setCommentContext(String commentContext) {
		this.commentContext = commentContext;
	}
	
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(String commentTime, String commentContext, String newsId, long id) {
		super();
		this.commentTime = commentTime;
		this.commentContext = commentContext;
		this.newsId = newsId;
		this.id = id;
	}
	
	public Comment(String commentContext, String commentTime, String newsId,String commentUser) {
		super();
		this.commentTime = commentTime;
		this.commentContext = commentContext;
		this.newsId = newsId;
		this.commentUser=commentUser;
	}
	
	public Comment(String commentContext, String commentTime, String newsId, String commentUser,
			String newsTitle) {
		super();
		this.commentTime = commentTime;
		this.commentContext = commentContext;
		this.newsId = newsId;
		this.commentUser = commentUser;
		this.newsTitle = newsTitle;
	}
	
}
