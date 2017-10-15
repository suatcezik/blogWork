package com.suat.yetenek;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB {
	
	
	private String dbName = "blog?useUnicode=true&characterEncoding=UTF-8";
	private String dbUserName = "root";
	private String dbPass = "";

	private String url = "jdbc:mysql://localhost/";
	private String driver = "com.mysql.jdbc.Driver";
	
	private Connection conn = null;
	private Statement st = null;
	
	public Statement baglan(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName, dbUserName, dbPass);
			st = (Statement) conn.createStatement();
			System.out.println("Baglantı Basarılı");
		} catch (Exception e) {
			System.err.println("Baglantı hatası: " + e);
		}
		return st;
	}
	
	// db kapat
	public void kapat() {
		try {
			if (conn != null ) {
				conn.close();
			}
			if (st != null) {
				st.close();
			}
		} catch (Exception e) {
			System.err.println("Kapatma Hatası : " + e);
		}
	}
	
	
}
