package br.com.rifando.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.Entity;

@Entity
@Table(name = "rifa")
public class Rifa {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "quantidade_numero", nullable = false)
	private Integer quantidadeNumero;

	@Column(name = "data_sorteio", nullable = false)
	private Date dataSorteio;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_produto", nullable = false)
	private Produto idProduto;

	@Column(name = "finalizada", nullable = false)
	private String finalizada;

	@Transient
	private List<RifaVenda> rifaVenda;

	public Rifa() {
	}

	/**
	 * 
	 * @param id
	 * @param quantidadeNumero
	 * @param quantidadeReservado
	 * @param quantidadePago
	 * @param dataSorteio
	 * @param idProduto
	 * @param finalizada
	 */
	public Rifa(Integer id, Integer quantidadeNumero, Date dataSorteio, Produto idProduto, String finalizada) {
		this.id = id;
		this.quantidadeNumero = quantidadeNumero;
		this.dataSorteio = dataSorteio;
		this.idProduto = idProduto;
		this.finalizada = finalizada;
	}

	/**
	 * @return the rifaVenda
	 */
	public List<RifaVenda> getRifaVenda() {
		return rifaVenda;
	}

	/**
	 * @param rifaVenda the rifaVenda to set
	 */
	public void setRifaVenda(List<RifaVenda> rifaVenda) {
		this.rifaVenda = rifaVenda;
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
	 * @return the quantidadeNumero
	 */
	public Integer getQuantidadeNumero() {
		return quantidadeNumero;
	}

	/**
	 * @param quantidadeNumero the quantidadeNumero to set
	 */
	public void setQuantidadeNumero(Integer quantidadeNumero) {
		this.quantidadeNumero = quantidadeNumero;
	}

	/**
	 * @return the dataSorteio
	 */
	public Date getDataSorteio() {
		return dataSorteio;
	}

	/**
	 * @param dataSorteio the dataSorteio to set
	 */
	public void setDataSorteio(Date dataSorteio) {
		this.dataSorteio = dataSorteio;
	}

	/**
	 * @return the idProduto
	 */
	public Produto getIdProduto() {
		return idProduto;
	}

	/**
	 * @param idProduto the idProduto to set
	 */
	public void setIdProduto(Produto idProduto) {
		this.idProduto = idProduto;
	}

	/**
	 * @return the finalizada
	 */
	public String getFinalizada() {
		return finalizada;
	}

	/**
	 * @param finalizada the finalizada to set
	 */
	public void setFinalizada(String finalizada) {
		this.finalizada = finalizada;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Rifa [id=" + id + ", quantidadeNumero=" + quantidadeNumero + ", dataSorteio=" + dataSorteio
				+ ", idProduto=" + idProduto + ", finalizada=" + finalizada + "]";
	}

}
