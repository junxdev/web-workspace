package com.bit.web02;

class Target {
	
	public Target() {
		// TODO Auto-generated constructor stub
		System.out.println("Constructor Target");
	}
	void func() {
		System.out.println("Targeting...");
	}
}
public class Ex01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.out.println("test");
//		Target me = new Target();
//		me.func();
		
		String info = "com.bit.web02.Target";
		try {
			java.lang.Class you = java.lang.Class.forName(info);
			Target result = (Target) you.newInstance();
			result.func();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
