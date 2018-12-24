package br.com.rifando.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.rifando.entity.Usuario;

@Repository
public class UsuarioDaoImpl implements UsuarioDao {

	@Autowired
	private SessionFactory sessionFactory;

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

	@Override
	public Usuario Login(Usuario usuario) {
		Session sessao = sessionFactory.getCurrentSession();
		try {
			Usuario novoUsuario = (Usuario) sessao
					.createQuery("select u from Usuario u where u.email = :email and u.senha = :senha", Usuario.class)
					.setParameter("email", usuario.getEmail()).setParameter("senha", usuario.getSenha()).getSingleResult();
			;
			return novoUsuario;
		} catch (NoResultException ex) {
			return null;
		}
	}

}
