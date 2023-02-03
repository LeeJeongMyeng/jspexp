package jspexp.a01_mvc;

import java.util.List;

import com.google.gson.Gson;

import jspexp.a13_database.A02_EmpDao;
import jspexp.a13_database.vo.Emp;

public class A08_empSercive {
	
		private A02_EmpDao dao;
		private Emp sch;
		
		public A08_empSercive() {
			dao=new A02_EmpDao();
		}
		
		
		public Emp getEmp(String ename,String job, String frSalS, String toSalS) {
			//sch = new Emp();
			if(ename==null) ename="";
			if(job==null) job="";
			if(frSalS==null || frSalS=="") frSalS="0";
	    	if(toSalS==null || toSalS=="") toSalS="9999";
	    	int frSal= Integer.parseInt(frSalS);
	    	int toSal= Integer.parseInt(toSalS);
	    	sch = new Emp(ename,job,frSal,toSal);
			return sch;
		}
		
		public List<Emp> empList(){
			return dao.getEmpSch(sch);

		}
		
		//================================================================
		
		public List<Emp> empList(String ename,String job, String frSalS, String toSalS){
			if(frSalS==null || frSalS=="") frSalS="0";
			if(toSalS==null || toSalS=="") toSalS="9999";
			int frSal= Integer.parseInt(frSalS);
			int toSal= Integer.parseInt(toSalS);
			Emp sch = new Emp(ename,job,frSal,toSal);
			return dao.getEmpSch(sch);
		}
		
		public List<Emp> empList(Emp sch){
			if(sch.getEname()==null) sch.setEname("");
			if(sch.getJob()==null) sch.setJob("");
			if(sch.getToSal()==0) sch.setToSal(9999);
			return dao.getEmpSch(sch);
		}
		
		//ajax로 처리
		public String empAjax(String ename,String job, String frSal, String toSal) {
			sch=getEmp(ename,job,frSal,toSal);//getEmp로 VO객체화
			Gson g = new Gson();
			//System.out.println(g.toJson(sch)); //json객체로 변환
			
			return g.toJson(empList());
		}
}
