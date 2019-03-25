package cdut.com.cn.entity;

//定义实体类
public class User {

	private String email;
	private String password;
	private String phone;
	private String passwordcfg;
	private String registerTime;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String email, String password, String phone, String passwordcfg, String registerTime) {
		super();
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.passwordcfg = passwordcfg;
		this.registerTime = registerTime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPasswordcfg() {
		return passwordcfg;
	}
	public void setPasswordcfg(String passwordcfg) {
		this.passwordcfg = passwordcfg;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	
}
