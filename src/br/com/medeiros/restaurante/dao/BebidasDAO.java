package br.com.medeiros.restaurante.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import br.com.medeiros.restaurante.model.Bebidas;

public class BebidasDAO {
	private Connection con;

	public BebidasDAO(Connection con) {
		this.con = con;
	}
	
	public void listar(List<Bebidas> bebidas, String categoria){
		String sql = "select * from Prj_Bebidas where Cod_Categoria = ?";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, categoria);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				while(rs.next()){
					int codigo = rs.getInt("codigo");
					String descricao = rs.getString("descricao");
					String codCategoria = rs.getString("cod_categoria");
					double preco1 = rs.getDouble("preco_tipo1");
					double preco2 = rs.getDouble("preco_tipo2");
					Bebidas bebida = new Bebidas(codigo, descricao, codCategoria);
					
					if(preco2 == 0){
						bebida.adicionaPreco(preco1);
						bebidas.add(bebida);
					} else {
						bebida.adicionaPreco(preco1);
						bebida.adicionaPreco(preco2);
						bebidas.add(bebida);
					}
				}
			}
			
		} catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	
	public void listarVinhos(List<Bebidas> bebidas, String categoria){
		String sql = "select * from Prj_Bebidas_por_Tamanho where cod_categoria = ?";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, categoria);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				while(rs.next()){
					int codigo = rs.getInt("codigo");
					String descricao = rs.getString("descricao");
					double preco_pequena = rs.getDouble("preco_pequena");
					double preco_media = rs.getDouble("preco_media");
					Bebidas bebida = new Bebidas(codigo, descricao, categoria);
					bebida.adicionaPreco(preco_pequena);
					bebida.adicionaPreco(preco_media);
					bebidas.add(bebida);
				}
			}
		} catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	
	public void listarCervejas(List<Bebidas> bebidas, String categoria){
		String sql = "select * from Prj_Bebidas_por_Tamanho where cod_categoria = ?";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, categoria);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				while(rs.next()){
					int codigo = rs.getInt("codigo");
					String descricao = rs.getString("descricao");
					double preco_pequena = rs.getDouble("preco_pequena");
					double preco_media = rs.getDouble("preco_media");
					double preco_grande = rs.getDouble("preco_grande");
					Bebidas bebida = new Bebidas(codigo, descricao, categoria);
					bebida.adicionaPreco(preco_pequena);
					bebida.adicionaPreco(preco_media);
					bebida.adicionaPreco(preco_grande);
					bebidas.add(bebida);
				}
			}
		} catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	
	public void listarRefrigerantes(List<Bebidas> bebidas, String categoria){
		String sql = "select * from Prj_Bebidas_por_Tamanho where cod_categoria = ?";
		
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setString(1, categoria);
			ps.execute();
			
			try(ResultSet rs = ps.getResultSet()){
				while(rs.next()){
					int codigo = rs.getInt("codigo");
					String descricao = rs.getString("descricao");
					double preco_pequena = rs.getDouble("preco_pequena");
					double preco_media = rs.getDouble("preco_media");
					double preco_grande = rs.getDouble("preco_grande");
					double preco_muito_grande = rs.getDouble("preco_muito_grande");
					Bebidas bebida = new Bebidas(codigo, descricao, categoria);
					bebida.adicionaPreco(preco_pequena);
					bebida.adicionaPreco(preco_media);
					bebida.adicionaPreco(preco_grande);
					bebidas.add(bebida);
				}
			}
		} catch(SQLException ex){
			ex.printStackTrace();
		}
	}
}
