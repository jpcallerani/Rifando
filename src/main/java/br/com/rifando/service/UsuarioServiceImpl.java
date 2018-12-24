package br.com.rifando.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.rifando.dao.UsuarioDao;
import br.com.rifando.entity.Usuario;

public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioDao usuarioRepository; 
	
	@Override
	public Usuario Login(Usuario usuario) {
		return this.usuarioRepository.Login(usuario);
	}

	@Override
	public Usuario findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario findByCPF(String cpf) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Usuario rifa) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Usuario> FindAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
