package br.com.rifando.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usuario")
public class Usuario {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "cpf", length = 11, nullable = false)
	private String cpf;

	@Column(name = "nome", length = 80, nullable = false)
	private String nome;

	@Column(name = "telefone", length = 30, nullable = false)
	private String telefone;

	@Column(name = "rua", length = 100, nullable = false)
	private String rua;

	@Column(name = "numero", nullable = false)
	private Integer numero;

	@Column(name = "bairro", length = 50, nullable = false)
	private String bairro;

	@Column(name = "cidade", length = 50, nullable = false)
	private String cidade;

	@Column(name = "estado", length = 50, nullable = false)
	private String estado;

	@Column(name = "cep", length = 20, nullable = false)
	private String cep;

	@Column(name = "email", length = 45, nullable = false)
	private String email;

	@Column(name = "senha", length = 45, nullable = false)
	private String senha;

	/**
	 * 
	 */
	public Usuario() {
	}

	public Usuario(Integer id, String cpf, String nome, String telefone, String rua, Integer numero, String bairro,
			String cidade, String estado, String cep, String email, String senha) {
		super();
		this.id = id;
		this.cpf = cpf;
		this.nome = nome;
		this.telefone = telefone;
		this.rua = rua;
		this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
		this.cep = cep;
		this.email = email;
		this.senha = senha;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the cpf
	 */
	public String getCpf() {
		return cpf;
	}

	/**
	 * @param cpf the cpf to set
	 */
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}

	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}

	/**
	 * @return the telefone
	 */
	public String getTelefone() {
		return telefone;
	}

	/**
	 * @param telefone the telefone to set
	 */
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	/**
	 * @return the rua
	 */
	public String getRua() {
		return rua;
	}

	/**
	 * @param rua the rua to set
	 */
	public void setRua(String rua) {
		this.rua = rua;
	}

	/**
	 * @return the numero
	 */
	public Integer getNumero() {
		return numero;
	}

	/**
	 * @param numero the numero to set
	 */
	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	/**
	 * @return the bairro
	 */
	public String getBairro() {
		return bairro;
	}

	/**
	 * @param bairro the bairro to set
	 */
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	/**
	 * @return the cidade
	 */
	public String getCidade() {
		return cidade;
	}

	/**
	 * @param cidade the cidade to set
	 */
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}

	/**
	 * @return the cep
	 */
	public String getCep() {
		return cep;
	}

	/**
	 * @param cep the cep to set
	 */
	public void setCep(String cep) {
		this.cep = cep;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the senha
	 */
	public String getSenha() {
		return senha;
	}

	/**
	 * @param senha the senha to set
	 */
	public void setSenha(String senha) {
		this.senha = senha;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", cpf=" + cpf + ", nome=" + nome + ", telefone=" + telefone + ", rua=" + rua
				+ ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + ", cep="
				+ cep + ", email=" + email + ", senha=" + senha + "]";
	}
}
