package br.com.medeiros.restaurante.model;

public class Ingrediente {
	private int codigo;
	private String descricao;
	private String codUnidade;
	private int qtde;
	
	public Ingrediente(int codigo, String descricao) {
		this.codigo = codigo;
		this.descricao = descricao;
	}

	public Ingrediente(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
	
}
