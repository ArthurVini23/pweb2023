package br.edu.ifgoiano.entidade;

import java.util.Date;

public class Usuario {

	private Integer incremento = 1;
	private Integer id;
	private String nome; 
	private String senha;
	private String email;
	private Date dataDeNascimento;
	
	public Usuario() {
		this.id = incremento++; 
	}
	

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Date dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}
	
	public Integer obterIdade() {
		return 0;
	}
	
}
