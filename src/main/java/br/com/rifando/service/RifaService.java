package br.com.rifando.service;

import java.util.List;

import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;

public interface RifaService {
	
	List<RifaVenda> findByRifaVendaIdRifa(int id);
	
	Rifa findById(int id);
	
	Rifa findValidRifa();

	Rifa findByIdProduto(String idProduto);

	void save(Rifa rifa);

	void deleteById(String id);

	List<Rifa> findAllRifas();
}
