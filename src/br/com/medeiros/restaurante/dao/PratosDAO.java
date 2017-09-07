package br.com.medeiros.restaurante.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import br.com.medeiros.restaurante.model.Ingrediente;
import br.com.medeiros.restaurante.model.Pratos;

public class PratosDAO {
	private Connection con;

	public PratosDAO(Connection con) {
		this.con = con;
	}

	public void listar(List<Pratos> pratos, String categoria) {
		String sql = "select * from Prj_Pratos where Cod_Categoria = ?";
		/* List<Pratos> pasteis = new ArrayList<>(); */

		try (PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, categoria);
			ps.execute();

			try (ResultSet rs = ps.getResultSet()) {
				while (rs.next()) {
					int codigo = rs.getInt("codigo");
					String descricao = rs.getString("descricao");
					String codCategoria = rs.getString("Cod_Categoria");
					double precoM = rs.getDouble("preco_media");
					double precoG = rs.getDouble("preco_grande");
					// System.out.println("Preco Média: " + precoM +
					// " Preco Grande: " + precoG);
					Pratos prato = new Pratos(codigo, descricao, codCategoria);

					/*
					 * se o preçoM for igual a zero, não se trata de uma pizza,
					 * se trata de outro prato
					 */
					if (precoM == 0) {
						prato.adicionaPreco(precoG);
						pratos.add(prato);
					} else {
						prato.adicionaPreco(precoM);
						prato.adicionaPreco(precoG);
						pratos.add(prato);
					}
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		/* return Collections.unmodifiableList(pizzas); */
		/* return pasteis; */
	}

	public List<Pratos> listarPratosComIngredientes(String categoria) {
		List<Pratos> pratos = new ArrayList<>();
		String sql = "select p.codigo as p_codigo, p.descricao as p_descricao, p.cod_categoria as p_cod_categoria, "
				+ "p.preco_media as p_preco_media, p.preco_grande as p_preco_grande, i.codigo as i_codigo, "
				+ "i.descricao as i_descricao from Prj_Pratos p "
				+ "inner join Prj_IngredientesPrato a on p.codigo = a.cod_prato "
				+ "inner join Prj_Ingredientes i on i.codigo = a.cod_ingrediente "
				+ "where p.cod_categoria = ?";
		Ingrediente i;
		Pratos ant = null;
		Pratos p;

		try (PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, categoria);
			ps.execute();

			try (ResultSet rs = ps.getResultSet()) {
				while (rs.next()) {
					int codigo = rs.getInt("p_codigo");
					String descricaoP = rs.getString("p_descricao");
					String descricaoI = rs.getString("i_descricao");
					String codCategoria = rs.getString("p_cod_categoria");
					double precoM = rs.getDouble("p_preco_media");
					double precoG = rs.getDouble("p_preco_grande");
					/*
					 * se o preçoM for igual a zero, não se trata de uma pizza,
					 * se trata de outro prato
					 */
					if (precoM == 0) {
						if (ant == null || !ant.getDescricao().equals(descricaoP)) {
							p = new Pratos(codigo, descricaoP, codCategoria);
							p.adicionaPreco(precoG);
							
							if(ant!=null)
								pratos.add(ant);
							
							ant = p;
						}
						i = new Ingrediente(rs.getInt("i_codigo"), rs.getString("i_descricao"));
						ant.adicionaIngrediente(i);

					} else {

						if (ant == null || !ant.getDescricao().equals(descricaoP)) {
							p = new Pratos(codigo, descricaoP, codCategoria);
							p.adicionaPreco(precoM);
							p.adicionaPreco(precoG);
							
							if(ant!=null)
								pratos.add(ant);
							
							ant = p;
						}
						i = new Ingrediente(rs.getInt("i_codigo"), rs.getString("i_descricao"));
						ant.adicionaIngrediente(i);
					}
				}
			if(!rs.next())
				pratos.add(ant);
			
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return pratos;
	}
}
