package com.p0wdr.example.service.soap;

import java.util.Date;

public class ExampleComplexType {
	
	
	private String foo;
	private String bar;
	private Date date;
	private int number;
	
	public ExampleComplexType(){}
	
	public ExampleComplexType(String Foo){
		this.setFoo(Foo);
		this.setBar("bar bar" + Foo);
		this.setDate(new Date());
		this.setNumber(123456);
	}
	
	
	public String getFoo() {
		return foo;
	}
	public void setFoo(String foo) {
		this.foo = foo;
	}
	public String getBar() {
		return bar;
	}
	public void setBar(String bar) {
		this.bar = bar;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "ExampleComplexType [foo=" + foo + ", bar=" + bar + ", date="
				+ date + ", number=" + number + "]";
	}
	
	

}