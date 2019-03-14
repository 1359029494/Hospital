package com.hospital.init;

import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.hospital.db.DBHelper;
import com.hospital.util.TimeGuaHAo;
import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * Servlet implementation class InitDBPoolAction
 */
public class InitDBPoolAction extends HttpServlet {
	
    public InitDBPoolAction() {
		InputStream in=this.getClass().getClassLoader().getResourceAsStream("db.properties");
		Properties pro=new Properties();
		try {
			pro.load(in);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String DRIVER=pro.getProperty("DRIVER");
		String URL=pro.getProperty("URL");
		String USERNAME=pro.getProperty("USERNAME");
		String USERPASS=pro.getProperty("USERPASS");	
		//
		ComboPooledDataSource ds=new ComboPooledDataSource();

		try {
			ds.setDriverClass(DRIVER);
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ds.setJdbcUrl(URL);
		ds.setUser(USERNAME);
		ds.setPassword(USERPASS);
		ds.setInitialPoolSize(10);
		ds.setMaxPoolSize(100);
		ds.setAcquireIncrement(10);
		DBHelper.ds=ds;
		try {
			Connection conn=ds.getConnection();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		TimeGuaHAo.timer();
    }
}
