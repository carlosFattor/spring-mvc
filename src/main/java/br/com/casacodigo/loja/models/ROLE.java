package br.com.casacodigo.loja.models;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.security.core.GrantedAuthority;

@Entity
public class ROLE implements GrantedAuthority{

	private static final long serialVersionUID = 1L;
	
	@Id
	private String role;

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String getAuthority() {
		return this.role;
	}
	
}
