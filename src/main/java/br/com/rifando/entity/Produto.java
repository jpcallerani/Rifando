package br.com.rifando.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "produto")
public class Produto {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "nome", length=10, nullable=false)
	private String nome;

	@Column(name = "desc1", length=15, nullable=false)
	private String desc1;

	@Column(name = "desc2", length=40, nullable=false)
	private String desc2;

	@Column(name = "desc3", length=800, nullable=false)
	private String desc3;

	public Produto() {
	}

	public Produto(Integer id, String nome, String desc1, String desc2, String desc3) {
		super();
		this.id = id;
		this.nome = nome;
		this.desc1 = desc1;
		this.desc2 = desc2;
		this.desc3 = desc3;
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
	 * @return the desc1
	 */
	public String getDesc1() {
		return desc1;
	}

	/**
	 * @param desc1 the desc1 to set
	 */
	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}

	/**
	 * @return the desc2
	 */
	public String getDesc2() {
		return desc2;
	}

	/**
	 * @param desc2 the desc2 to set
	 */
	public void setDesc2(String desc2) {
		this.desc2 = desc2;
	}

	/**
	 * @return the desc3
	 */
	public String getDesc3() {
		return desc3;
	}

	/**
	 * @param desc3 the desc3 to set
	 */
	public void setDesc3(String desc3) {
		this.desc3 = desc3;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", desc1=" + desc1 + ", desc2=" + desc2 + ", desc3=" + desc3
				+ "]";
	}
}
