package br.com.rifando.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.rifando.dao.RifaDao;
import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;

@Service
public class RifaServiceImpl implements RifaService {

	@Autowired
	private RifaDao rifaRepository;

	@Override
	@Transactional
	public Rifa findById(int id) {
		return this.rifaRepository.findById(id);
	}

	@Override
	@Transactional
	public Rifa findByIdProduto(String idProduto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void save(Rifa rifa) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public void deleteById(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public List<Rifa> findAllRifas() {
		return this.rifaRepository.findAllRifas();
	}

	@Override
	@Transactional
	public Rifa findValidRifa() {
		return this.rifaRepository.findValidRifa();
	}

	@Override
	@Transactional
	public List<RifaVenda> findByRifaVendaIdRifa(int id) {
		return this.rifaRepository.findByRifaVendaIdRifa(id);
	}
}
