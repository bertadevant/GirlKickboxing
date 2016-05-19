package utilities;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SetUp {
	protected static Login_Register admin;
	protected static Classes[] monthlyClasses;
	protected static ArrayList<Login_Register> users;
	
	SetUp(){}
	
	public static void createAdmin(){
		admin = new Login_Register("admin", "1234");
	}
	
	public static void setUpMonthlyClasses(int classNum, String className, String classDay,int startTime, int endTime){
		for(int i=0; i<classNum; i++){
			monthlyClasses[i] = new Classes(className, 10, classDay,startTime,endTime);
		}
	}
	public static Classes[] getMonthlyClasses() {
		return monthlyClasses;
	}
	
	public static boolean isThereAnyClassesSet(){
		if(monthlyClasses == null)
			return false;
		else 
			return true;
	}
	
	public static boolean login(String user, String psswd, HttpServletRequest request) {
		for(int i =0; i<users.size(); i++){
			if (users.get(i).checkLoginInfo(user, psswd)) {
				request.getSession().setAttribute("loggedInUser", user);
				return true;
			}
		}
		return false;
	}
	
	protected void setNewUser(String user, String psswd) 
	{ 
		Login_Register new_user = new Login_Register(user,psswd);
		users.add(new_user);
	}
	
}
