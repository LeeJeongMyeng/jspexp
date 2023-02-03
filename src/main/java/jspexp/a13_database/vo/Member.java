package jspexp.a13_database.vo;


//id authority name pass point
public class Member {
private String id;
private String authority;
private String name;
private String pass;
private int point;
public Member() {
}




public Member(String id, String name,int point,String authority) {
	this.id = id;
	this.name = name;
	this.point = point;
	this.authority = authority;
}




public Member(String authority, String name) {
	this.authority = authority;
	this.name = name;
}



public Member(String id, String authority, String name, String pass, int point) {
	this.id = id;
	this.authority = authority;
	this.name = name;
	this.pass = pass;
	this.point = point;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAuthority() {
	return authority;
}
public void setAuthority(String authority) {
	this.authority = authority;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}


}
