package br.com.rifando.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.rifando.entity.Rifa;

@Repository
public interface RifaRepository extends JpaRepository<Rifa, Integer> {

}
