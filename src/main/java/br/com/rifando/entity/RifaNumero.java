package br.com.rifando.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "rifa_numero")
public class RifaNumero {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "numero", nullable = false)
	private Integer numero;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_rifa", nullable = false)
	private Rifa rifa;

	/**
	 * 
	 */
	public RifaNumero() {
	}

	/**
	 * 
	 * @param id
	 * @param numero
	 * @param rifa
	 */
	public RifaNumero(Integer id, Integer numero, Rifa rifa) {
		super();
		this.id = id;
		this.numero = numero;
		this.rifa = rifa;
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
	 * @return the rifa
	 */
	public Rifa getRifa() {
		return rifa;
	}

	/**
	 * @param rifa the rifa to set
	 */
	public void setRifa(Rifa rifa) {
		this.rifa = rifa;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "RifaNumero [id=" + id + ", numero=" + numero + ", rifa=" + rifa + "]";
	}
}
