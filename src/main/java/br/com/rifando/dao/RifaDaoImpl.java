package br.com.rifando.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.rifando.entity.Rifa;
import br.com.rifando.entity.RifaVenda;

@Repository
public class RifaDaoImpl implements RifaDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Rifa findById(int id) {
		Session sessao = sessionFactory.getCurrentSession();
		return sessao.get(Rifa.class, id);
	}

	@Override
	public void save(Rifa rifa) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Rifa> findAllRifas() {
		Session sessao = sessionFactory.getCurrentSession();
		try {
			List<Rifa> users = sessao.createQuery("SELECT u FROM Rifa u", Rifa.class).list();
			return users;
		} catch (NoResultException ex) {
			return null;
		}
	}

	@Override
	public Rifa findByIdProduto(String idProduto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Rifa findValidRifa() {
		Session sessao = sessionFactory.getCurrentSession();
		try {
			Rifa rifa = sessao.createQuery("select u from Rifa u where u.finalizada = 'N'", Rifa.class)
					.getSingleResult();
			;
			return rifa;
		} catch (NoResultException ex) {
			return null;
		}
	}

	@Override
	public List<RifaVenda> findByRifaVendaIdRifa(int id) {
		Session sessao = sessionFactory.getCurrentSession();
		try {
			List<RifaVenda> rifaVenda = sessao
					.createQuery("select u from RifaVenda u where u.rifa.id = :id", RifaVenda.class)
					.setParameter("id", id).list();
			;
			return rifaVenda;
		} catch (NoResultException ex) {
			return null;
		}
	}

}
