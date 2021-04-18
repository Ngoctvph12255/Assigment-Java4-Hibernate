package edu.poly.domain;

public class LoginForm {
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isRemenber() {
		return remenber;
	}
	public void setRemenber(boolean remenber) {
		this.remenber = remenber;
	}
	private String username, password;
	private boolean remenber;
	public LoginForm(String username, String password, boolean remenber) {
		super();
		this.username = username;
		this.password = password;
		this.remenber = remenber;
	}
	public LoginForm() {

	}
}
