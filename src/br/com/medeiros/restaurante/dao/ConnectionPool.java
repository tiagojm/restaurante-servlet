package br.com.medeiros.restaurante.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import oracle.jdbc.pool.OracleDataSource;

public class ConnectionPool {
	private DataSource dataSource;
	
	public ConnectionPool() throws SQLException{
		OracleDataSource pool = new OracleDataSource();
		pool.setURL("jdbc:oracle:thin:@localhost:1521:xe");
		pool.setUser("system");
		pool.setPassword("titofoda");
		this.dataSource = pool;
	}
	
	public Connection getConnection() throws SQLException{
		Connection con = dataSource.getConnection();
		return con;
	}
}
