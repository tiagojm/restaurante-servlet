package br.com.medeiros.restaurante.model;

import java.util.ArrayList;
import java.util.List;

public class Bebidas {
	private int codigo;
	private String descricao;
	private List<Double> precos;
	private String codCategoria;
	
	public Bebidas(String descricao, String codCategoria) {
		this.descricao = descricao;
		this.precos = new ArrayList<>();
		this.codCategoria = codCategoria;
	}

	public Bebidas(int codigo, String descricao, String codCategoria) {
		this.codigo = codigo;
		this.descricao = descricao;
		this.precos = new ArrayList<>();
		this.codCategoria = codCategoria;
	}
	
	public String getDescricao() {
		return descricao;
	}

	public String getCodCategoria() {
		return codCategoria;
	}

	public void adicionaPreco(double p){
		this.precos.add(p);
	}
	
	public List<Double> getPrecos() {
		return precos;
	}
	
}
