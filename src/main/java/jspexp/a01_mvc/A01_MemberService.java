package jspexp.a01_mvc;

import java.lang.reflect.Member;

import jspexp.a13_database.A06_PareparedDao;



public class A01_MemberService {
	private A06_PareparedDao dao;
	private Member member;
	
	public A01_MemberService() {
		dao= new A06_PareparedDao();
	}
	
	/*
	public MemberVO getMember(String id, String pass) {
		if(id==null) id="";
		if(pass==null) pass="";
		member = new MemberVO(id,pass) ;
		return member;
	}
	*/
	
	public boolean getLogin(String id,String pass) {
		if(id==null) id="";
		if(pass==null) pass="";
		return dao.login(id,pass);
	}
	
	
	
	
}
