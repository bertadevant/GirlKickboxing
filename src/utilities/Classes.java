package utilities;

public class Classes {

	public String className;
	public int classSpace;
	private int startTime,endTime;
	private String classDay;
	
	Classes(String name, int space, String day, int start, int end)
	{
		className = name;
		classSpace = space;
		startTime = start;
		endTime = end;
		classDay = day;
	}
	
	
	
	protected boolean isClassFull() {
		if (classSpace == 0)
			return true;
		else
			return false;
	}
}
