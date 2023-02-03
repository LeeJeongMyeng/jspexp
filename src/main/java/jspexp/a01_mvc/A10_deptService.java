package jspexp.a01_mvc;

import java.util.List;

import com.google.gson.Gson;

import jspexp.a13_database.A06_PareparedDao;
import jspexp.a13_database.vo.Dept;

public class A10_deptService {
  private A06_PareparedDao Ddao;
  private Dept sch;
  
  public A10_deptService() {
	  Ddao= new A06_PareparedDao();
	  
  }
  
  public Dept getDept(String dname, String loc) {
	  if(dname==null) dname="";
	  if(loc==null) loc="";
	  return  new Dept(dname,loc);
	 
  }
  
  public List<Dept> deptList(){
	  return Ddao.getDeptList(sch);
  }
  // 힐반 호출
  public List<Dept> getDeptList(Dept sch){
	  if(sch.getDname()==null) sch.setDname("");
	  if(sch.getLoc()==null) sch.setLoc("");
	  return Ddao.getDeptList(sch);
  }
  
  //ajax호출
 public String deptAjax(String dname,String loc) {
	 	sch = getDept(dname, loc);
	 	Gson g = new Gson();
	 return g.toJson(deptList());
 }
}
