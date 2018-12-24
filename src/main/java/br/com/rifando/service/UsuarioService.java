package br.com.rifando.service;

import java.util.List;

import br.com.rifando.entity.Usuario;

public interface UsuarioService {
	
	Usuario Login(Usuario usuario);
	
	Usuario findById(int id);

	Usuario findByCPF(String cpf);

	void save(Usuario rifa);

	void deleteById(String id);

	List<Usuario> FindAll();
}
