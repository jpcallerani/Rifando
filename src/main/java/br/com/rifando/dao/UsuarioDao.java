package br.com.rifando.dao;

import java.util.List;

import br.com.rifando.entity.Usuario;

public interface UsuarioDao {

	Usuario Login(Usuario usuario);
	
	Usuario findById(int id);

	Usuario findByCPF(String cpf);

	void save(Usuario rifa);

	void deleteById(String id);

	List<Usuario> FindAll();
}
