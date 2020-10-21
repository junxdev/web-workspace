package com.web03;

interface InterTest {
	static final String a = "InterTest";
	
	void func1();
}

abstract class AbsTest {
	static final String a = "AbsTest";
	
	abstract void func1();
	
	void func2() {
		System.out.println("Abstract func2");
	}
}
public class Test extends AbsTest implements InterTest{

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InterTest me = new Test();
		//me.func2();
	}

	@Override
	public void func1() {
		// TODO Auto-generated method stub
		System.out.println(AbsTest.a);
	}

}
