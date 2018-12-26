package br.com.rifando.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;

@Repository
public interface RifaVendaRepository extends JpaRepository<RifaVenda, Integer> {
	
	List<RifaVenda> findByRifa(Rifa rifa); 
}
