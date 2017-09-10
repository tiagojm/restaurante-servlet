package br.com.medeiros.restaurante.model;

public class Usuario {
	private String cpf;
	private String nome;
	private String sexo;
	private String email;
	private String senha;
	private String telefone;
	
	public Usuario(String cpf, String nome, String sexo, String email, String senha, String telefone) {
		this.cpf = cpf;
		this.nome = nome;
		this.sexo = sexo;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
	}

	public Usuario(String cpf, String nome, String email, String senha, String telefone) {
		this.cpf = cpf;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
	}

	@Override
	public String toString() {
		return "Cpf: " + this.cpf + " Nome: " + this.nome + " Sexo: " + this.sexo + " Email: " + this.email + " Senha: " + this.senha + " Telefone: " + this.telefone;
	}
	
	public String getCpf() {
		return cpf;
	}

	public String getNome() {
		return nome;
	}

	public String getSexo() {
		return sexo;
	}

	public String getEmail() {
		return email;
	}

	public String getSenha() {
		return senha;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	
}
