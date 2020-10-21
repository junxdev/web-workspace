package com.bit.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex02")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public class JavaBean {
		private int num;
		private double digit;
		private String name;
		private char gender;
		private Date date;
		private boolean tf;
		
		public JavaBean() {
		}

		public int getNum() {
			return num;
		}

		public void setNum(int num) {
			this.num = num;
		}

		public double getDigit() {
			return digit;
		}

		public void setDigit(double digit) {
			this.digit = digit;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public char getGender() {
			return gender;
		}

		public void setGender(char gender) {
			this.gender = gender;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public boolean isTf() {
			return tf;
		}

		public void setTf(boolean tf) {
			this.tf = tf;
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JavaBean bean = new JavaBean();
		bean.setDate(new Date());
		bean.setNum(10);
		bean.setDigit(10.0);
		bean.setName("bean");
		bean.setTf(false);
		bean.setGender('M');
		request.setAttribute("msg2", "request.setAttribute");
		request.setAttribute("bean", bean);
		request.getRequestDispatcher("ex02.jsp").forward(request, response);
	}

}
