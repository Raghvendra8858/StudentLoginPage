package dao;

import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.LoginBean;
import beans.RegsterBean;
import beans.SetIDBean;
import beans.StudentEditBean;
import beans.StudentViewBean;
/*import beans.SetIDBean;
import beans.StudentEditBean;
import beans.StudentViewBean;*/
import myconn.DBConnection;

public class StudentDAO {
	
	public boolean studentLogin(LoginBean lb) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs =  stmt.executeQuery("select *  from studentlogin where username='"+lb.getUserName()+"' and password='"+lb.getPassword()+"' ");
			if(rs.next()) {
				flag =true;
				System.out.println("username "+rs.getString(1));
				System.out.println("password "+rs.getString(2));
			}
				
		} catch (Exception e) {
			 e.printStackTrace();
		}
		
		return flag;
	}
	
	public int studentRegister(RegsterBean rb) {
		boolean flag = false;
		int x =0;
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			PreparedStatement ps = conn.prepareStatement("insert into studentregister values(?,?,?,?,?,?)");
			ps.setInt(1, rb.getId());
			ps.setString(2, rb.getName());
			ps.setString(3, rb.getEmail());
			ps.setString(4, rb.getAddress());
			ps.setString(5, rb.getDob());
			ps.setLong(6, rb.getMobno());
			int x1 = ps.executeUpdate();
		   	ps.close();	 
			if(x1 == 1) {
				PreparedStatement ps1 = conn.prepareStatement("insert into studentlogin values(?,?)");
				ps1.setString(1,rb.getUserName()); 
				ps1.setString(2,rb.getPassword()); 
				x = ps1.executeUpdate();
			   	ps.close();	 
				
			}
				
		} catch (Exception e) {
			 e.printStackTrace();
		}
		
		return x;
	}
	
	public int studentUpdate(StudentEditBean rb) {
 
		int x =0;;
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			//String uptqry= "update studentregister set name='"+e1.getName()+"',email='"+e1.getEmail()+"',address='"+e1.getAddress()+"'where id="+e1.getId()+" ";
			PreparedStatement ps = conn.prepareStatement("update studentregister set name=?,email=?,address=?,dob=?,mobno=? where id=?");
			
			ps.setString(1, rb.getName());
			ps.setString(2, rb.getEmail());
			ps.setString(3, rb.getAddress());
			ps.setString(4, rb.getDob());
			ps.setLong(5, rb.getMobno());
			ps.setInt(6, rb.getId());
			x = ps.executeUpdate();
			System.out.println("DAO UPT.....x =...."+x);
		   	ps.close();	 
			 
				
		} catch (Exception e) {
			
			 e.printStackTrace();
		}
		
		return x;
	}
	
	public RegsterBean studentGetRecords(SetIDBean sidb) {
		RegsterBean rb=null;
		int x =0;
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("select * from studentregister where id = "+sidb.getId()+""); 
			if(rs.next()) {
				rb =  new RegsterBean();
				rb.setId(rs.getInt(1));
				rb.setName(rs.getString(2));
				rb.setEmail(rs.getString(3));
				rb.setAddress(rs.getString(4));
				rb.setDob(rs.getString(5));
				rb.setMobno(rs.getLong(6));
			}
		} catch (Exception e) {
			 e.printStackTrace();
		}
		
		return rb;
	}
	public static List<StudentViewBean> getAllStudents(){
		List<StudentViewBean> list=new ArrayList<StudentViewBean>();
		
		try{
			Connection con= DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from studentregister");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				StudentViewBean svb=new StudentViewBean();
				svb.setId(rs.getInt(1));
				svb.setName(rs.getString(2));
				svb.setEmail(rs.getString(3));
				svb.setAdderss(rs.getString(4));
				svb.setDob(rs.getString(5));
				svb.setMobno(rs.getLong(6));
				 
				list.add(svb);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
	
	
	public int  deleteById(SetIDBean sidb) {
		 
		int x =0;
		try {
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			
			x= stmt.executeUpdate("delete  from studentregister where id = "+sidb.getId()+"");
		     System.out.println("Delete By Id Method  ....  x  "+x);	
			
		} catch (Exception e) {
			 e.printStackTrace();
		}
		
		return x;
	}

}