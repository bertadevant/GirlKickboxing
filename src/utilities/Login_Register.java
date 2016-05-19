package utilities;

public class Login_Register {

	private String username;
	private String password;
	
	Login_Register(String user, String psswd){
		username = user;
		password = psswd;
	}
	
	protected boolean checkLoginInfo(String user, String psswd) {
		if(user==username && psswd == password)
			return true;
		return false;
	}

}
