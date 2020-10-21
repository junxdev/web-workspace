package model;

class User {
	String name = "user";
	int num = 1;
}

class Emp {
	String name = "emp";
	int empnum = 99;
}
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("why");
//		Integer x = new Integer(1);
//		Object z = x;
//		String y = "123";
//		Integer g;
//		try {
//			y = (String) z;
//			System.out.println(y.toString());
//			
//		} catch(ClassCastException e) {
//			g = (Integer) z;
//			System.out.println(g);
//		}
//		System.out.println(y.hashCode());
//		User user = new User();
		Emp user = new Emp();
		Object obj = user;
		User x = null;
		Emp y = null;
		try {
			x = (User) obj;
		} catch(ClassCastException e) {
			y = (Emp) obj;
		}
		if(x == null) {
			System.out.println(y.name);
		} else {
			System.out.println(x.name);
		}
		
//		기존: 공지사항 목록, 상세, 수정, 삭제
//		수정: 공지사항 목록, 상세 + LMS 안에서 공지사항 모록, 상세, 수정, 삭제
	}

}
