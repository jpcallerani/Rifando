package br.com.rifando.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;
import br.com.rifando.repository.RifaRepository;
import br.com.rifando.repository.RifaVendaRepository;

@Service
public class RifaService {

	@Autowired
	private RifaRepository rifaRepostory;

	@Autowired
	private RifaVendaRepository rifaVendaRepository;

	/**
	 * Busca todas as rifas cadastradas.
	 * 
	 * @return
	 */
	@Transactional
	public List<Rifa> findAll() {
		return this.rifaRepostory.findAll();
	}

	/**
	 * 
	 * @param rifa
	 * @return
	 */
	@Transactional
	public List<RifaVenda> findByRifa(Rifa rifa) {
		return this.rifaVendaRepository.findByRifa(rifa);
	}
}
