package br.com.medeiros.restaurante.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Pratos {
	private int codigo;
	private String descricao;
	private String codCategoria;
	private List<Double> precos;
	private List<Ingrediente> ingredientes;
	
	public Pratos(String descricao, String codCategoria) {
		this.descricao = descricao;
		this.codCategoria = codCategoria;
		this.precos = new ArrayList<>();
		this.ingredientes = new ArrayList<>();
	}

	public Pratos(int codigo, String descricao, String codCategoria) {
		this.codigo = codigo;
		this.descricao = descricao;
		this.codCategoria = codCategoria;
		this.precos = new ArrayList<>();
		this.ingredientes = new ArrayList<>();
	}

	@Override
	public String toString() {
		return this.descricao;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public String getCodCategoria() {
		return codCategoria;
	}
	
	/*public double getPrecoMedia(){
		return this.precos.get(0);
	}
	
	public double getPrecoGrande(){
		return this.precos.get(1);
	}*/

	public void adicionaIngrediente(Ingrediente i){
		this.ingredientes.add(i);
	}
	
	public List<Double> getPrecos() {
		return precos;
	}

	public void adicionaPreco(double p){
		this.precos.add(p);
	}
	
	public List<Ingrediente> getIngredientes(){
		//return Collections.unmodifiableList(this.ingredientes);
		return this.ingredientes;
	}
	
	
}
