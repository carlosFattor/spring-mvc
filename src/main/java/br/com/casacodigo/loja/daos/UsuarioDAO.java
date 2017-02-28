package br.com.casacodigo.loja.daos;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casacodigo.loja.models.Usuario;

@Repository
@Transactional
public class UsuarioDAO implements UserDetailsService{

	@PersistenceContext
	private EntityManager manager;
	
	public UsuarioDAO() {
		super();
	}

	public Usuario loadUserByUsername(String email){
		Optional<Usuario> usuario = Optional.of(manager.createQuery("select u from Usuario u where u.email = :email", Usuario.class)
				.setParameter("email", email)
				.getSingleResult());
		if(!usuario.isPresent()){
			throw new UsernameNotFoundException("Usuário " + email +" não foi encontrado!");
		}
		
		return usuario.get();
	}
	
	public void cadastrar(Usuario usuario){
		manager.persist(usuario);
	}

	public List<Usuario> listar() {
		return manager.createQuery("select u from Usuario u", Usuario.class)
				.getResultList();
	}
	
}
