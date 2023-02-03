package jspexp.a13_database.vo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jspexp.a13_database.DB;

public class A03_DeptDao {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public List<Dept> getDeptSch(){
		List<Dept> list = new ArrayList<Dept>();
		// 1. DB 연결
		try {
			con = DB.con();
//		   2. 대화
			String sql = "SELECT *\r\n"
					+ "FROM emp100\r\n";
					
			// ORA-00920: invalid relational operator 이 에러가
			// 나는 분들은 아래와 같이 출력해보시면 sql 구문의 에러를 보일 겁니다.
			// 적당하게 위 sql 문자열에 띄워쓰기가 필요한 겁니다.
			System.out.println(sql);
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			//select empno, ename, job, mgr, hiredate, sal, comm, deptno
			while(rs.next()) {
				Dept e = new Dept(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3)
						);
				list.add(e);
			}
			System.out.println("데이터 건수:"+list.size());
			
		} catch (SQLException e) {
			System.out.println("DB관련예외:"+e.getMessage());
		} catch(Exception e) {
			System.out.println("기본 예외:"+e.getMessage());
		}finally {
			DB.close(rs, stmt, con);
		}
		return list;
	}
	
	
	public static void main(String[] args) {
		

	}

}
