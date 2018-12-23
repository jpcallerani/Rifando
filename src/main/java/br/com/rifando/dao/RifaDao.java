package br.com.rifando.dao;

import java.util.List;

import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;

public interface RifaDao {
	
	List<RifaVenda> findByRifaVendaIdRifa(int id);
	
	Rifa findById(int id);
	
	Rifa findValidRifa();

	Rifa findByIdProduto(String idProduto);

	void save(Rifa rifa);

	void deleteById(String id);

	List<Rifa> findAllRifas();
}
