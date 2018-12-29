package br.com.rifando.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.rifando.entity.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

	Usuario findByEmailAndSenha(String email, String senha);

	Usuario findByEmail(String email);
	
}
