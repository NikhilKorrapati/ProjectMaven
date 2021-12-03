package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bean.*;

public class UserValueObject {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1", "hr", "hr");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int validation(String name, String password) {
		String a;
		String b;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from users where name=?");
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				a = rs.getString(1);
				b = rs.getString(2);
			} else {
				return 0;
			}
			if (a.equals(name) && b.equals(password)) {
				return 1;

			} else {
				return 0;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return 1;
	}

	public static int save(User u, String uname) {
		int status = 0;

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into register(name,password,email,sex,country, modified_user) values(?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			ps.setString(6, uname);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(User u, String uname) {
		int status = 0;
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update register set name=?,password=?,email=?,sex=?,country=?, modified_user=?, modified_date=? where id=?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			ps.setString(6, uname);
			ps.setDate(7, date);
			ps.setInt(8, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(User u) {
		int status = 0;
		try {
			Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<User> getAllRecords() {
		List<User> list = new ArrayList<User>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				u.setDate(rs.getString("modified_date_time"));
				u.setModifiedBy(rs.getString("modified_user"));
				u.setModifiedDate(rs.getString("modified_date"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static User getRecordById(int id) {
		User u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				//u.setDate(rs.getString("date"));
				//u.setModifiedDate(rs.getString("modified_date"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}