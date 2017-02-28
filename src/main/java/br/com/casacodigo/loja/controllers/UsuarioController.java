package br.com.casacodigo.loja.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.casacodigo.loja.daos.UsuarioDAO;
import br.com.casacodigo.loja.models.ROLE;
import br.com.casacodigo.loja.models.Tipo;
import br.com.casacodigo.loja.models.Usuario;

@Controller
@RequestMapping("usuarios")
public class UsuarioController {

	@Autowired
	UsuarioDAO usuarioDAO;
	
	@RequestMapping("form")
	public ModelAndView form(){
		ModelAndView modelAndView = new ModelAndView("usuarios/form");
		modelAndView.addObject("tipos", Tipo.values());
		
		return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String cadastrar(Usuario usuario) {
		ROLE role = new ROLE();
		role.setRole("ROLE_ADMIN");
		List<ROLE> roles = new ArrayList<>();
		roles.add(role);
		usuario.setRoles(roles);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		usuario.setPassword(passwordEncoder.encode(usuario.getPassword()));
		System.out.println(usuario);
		usuarioDAO.cadastrar(usuario);
		return "usuarios/ok";
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
		
		ModelAndView modelAndView = new ModelAndView("usuarios/lista");
		List<Usuario> usuarios = usuarioDAO.listar();
		modelAndView.addObject("usuarios", usuarios);
		
		return modelAndView;
	}
	
}
