package com.bit.model;

import java.util.Date;

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
