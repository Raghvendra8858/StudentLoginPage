package beans;

import dao.StudentDAO;

public class LoginBean {
	private String userName;
	private String password;
	
	public LoginBean() {
	   System.out.println("Def. const....");
	
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public boolean loingveryfy() {
		boolean flag = false ;
		StudentDAO dao = new StudentDAO();
	     flag = dao.studentLogin(this);
		return flag;
	}

}
