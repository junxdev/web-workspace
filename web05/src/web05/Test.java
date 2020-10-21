package web05;

import java.nio.charset.StandardCharsets;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		byte[] kor = "호호".getBytes(StandardCharsets.UTF_8);
		byte[] eng = "abc".getBytes(StandardCharsets.UTF_8);
		byte[] digit = "123".getBytes(StandardCharsets.UTF_8);
		byte[] mix = "호a1!아b8=".getBytes(StandardCharsets.UTF_8);
		System.out.println(java.util.Arrays.toString(kor));
		System.out.println(new String(kor, StandardCharsets.UTF_8));
		System.out.println(java.util.Arrays.toString(eng));
		System.out.println(new String(eng, StandardCharsets.UTF_8));
		System.out.println(java.util.Arrays.toString(digit));
		System.out.println(new String(digit, StandardCharsets.UTF_8));
		System.out.println(java.util.Arrays.toString(mix));
		System.out.println(new String(mix, StandardCharsets.UTF_8));
		
		for(int b : mix) {
			System.out.print(Integer.toHexString(b) + " ");
			
		}
		int x = 0x61;
		System.out.println("\n" + (byte)Integer.parseInt(Integer.toString(x)));
	}

}
