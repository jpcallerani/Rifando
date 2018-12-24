package br.com.rifando.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rifando.entity.Usuario;
import br.com.rifando.service.UsuarioService;

@Controller
public class LoginController {

	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping("/login")
	public String showPage(ModelMap theModal) {
		return "login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		Usuario novoUsuario = this.usuarioService.Login(usuario);
		if (usuario != null) {
			session.setAttribute("usuarioLogado", usuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
}
