package br.com.rifando.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.rifando.entity.Usuario;
import br.com.rifando.repository.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	/**
	 * Método para efetuar o login
	 * 
	 * @param usuario
	 * @return
	 */
	public Usuario login(Usuario usuario) {
		return this.usuarioRepository.findByEmailAndSenha(usuario.getEmail(), usuario.getSenha());
	}
	
	/**
	 * 
	 * @param usuario
	 * @return
	 */
	public Usuario findByEmail(Usuario usuario) {
		return this.usuarioRepository.findByEmail(usuario.getEmail());
	}

	/**
	 * 
	 * @param usuario
	 * @return
	 */
	public Usuario save(Usuario usuario) {
		return this.usuarioRepository.saveAndFlush(usuario);
	}
}
