package br.com.rifando.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "rifa_venda")
public class RifaVenda {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "status", nullable = false)
	private String status;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_numero_rifa", nullable = false)
	private RifaNumero rifaNumero;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_usuario", nullable = false)
	private Usuario usuario;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_rifa", nullable = false)
	private Rifa rifa;

	public RifaVenda() {
	}

	public RifaVenda(Integer id, String status, RifaNumero rifaNumero, Usuario usuario, Rifa rifa) {
		super();
		this.id = id;
		this.status = status;
		this.rifaNumero = rifaNumero;
		this.usuario = usuario;
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
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the rifaNumero
	 */
	public RifaNumero getRifaNumero() {
		return rifaNumero;
	}

	/**
	 * @param rifaNumero the rifaNumero to set
	 */
	public void setRifaNumero(RifaNumero rifaNumero) {
		this.rifaNumero = rifaNumero;
	}

	/**
	 * @return the usuario
	 */
	public Usuario getUsuario() {
		return usuario;
	}

	/**
	 * @param usuario the usuario to set
	 */
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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
}