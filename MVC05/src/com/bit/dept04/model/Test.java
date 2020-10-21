package com.bit.dept04.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Test {
	public static void main(String[] args) {
		try {
			OutputStream out = new FileOutputStream("D:\\WORKSPACE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MVC05\\up");
			String str = "Access Permitted";
			byte[] by = str.getBytes();
			out.write(by);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
