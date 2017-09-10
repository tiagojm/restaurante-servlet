package br.com.medeiros.restaurante.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.medeiros.restaurante.model.Usuario;

public class UsuarioDAO {
	private Connection con;

	public UsuarioDAO(Connection con) {
		this.con = con;
	}
	
	public void inserir(Usuario u) throws SQLException{
		String sql = "Insert into Prj_Cliente(Codigo, Nome, Email, Senha, Telefone) values (?, ?, ?, ?, ?)";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, u.getCpf());
			ps.setString(2, u.getNome());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSenha());
			ps.setString(5, u.getTelefone());
			ps.execute();
			
			con.commit();
		} catch (Exception ex){
			ex.printStackTrace();
			con.rollback();
		}
	}
	
	public Usuario buscaPorEmailESenha(String email, String senha) throws SQLException{
		String sql = "select * from Prj_Cliente where email = ? and senha = ?";
		Usuario user = null;
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, email);
			ps.setString(2, senha);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				while(rs.next()){
					String codigo = rs.getString("Codigo");
					String nome = rs.getString("Nome");
					String sexo = rs.getString("Sexo");
					String telefone = rs.getString("Telefone");
					user = new Usuario(codigo, nome, sexo, email, senha, telefone);
				}
			}
		}
		return user;
	}

	public boolean buscaPorEmail(String email) throws SQLException {
		String sql = "select * from Prj_Cliente where email = ?";

		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, email);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				return rs.next();
				/*while(rs.next()){
					String codigo = rs.getString("Codigo");
					String nome = rs.getString("Nome");
					String sexo = rs.getString("Sexo");
					String senha = rs.getString("Senha");
					user = new Usuario(codigo, nome, sexo, email, senha);
				}*/
			}
		}
	}
	
	public boolean buscaPorCpf(String cpf) throws SQLException {
		String sql = "Select * from Prj_Cliente where codigo = ?";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, cpf);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				return rs.next();
			}
		} 
	}
}