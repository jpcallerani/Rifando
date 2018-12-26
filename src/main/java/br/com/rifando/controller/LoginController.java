package br.com.rifando.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.rifando.entity.Usuario;
import br.com.rifando.service.UsuarioService;

@Controller
public class LoginController {

	@Autowired
	private UsuarioService usuarioService;

	/**
	 * 
	 * @param theModal
	 * @return
	 */
	@RequestMapping("/login")
	public String showPage(ModelMap theModal) {
		
		// Adiciona usu�rio no contexto da p�gina para ser lido depois no login
		theModal.addAttribute("usuario", new Usuario());
		return "login";
	}

	/**
	 * 
	 * @param usuario
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/efetuaLogin", method = RequestMethod.POST)
	public String efetuaLogin(@ModelAttribute("usuario") Usuario usuario, HttpSession session) {

		// Busca o usu�rio baseado nos dados inseridos na tela;
		Usuario novoUsuario = this.usuarioService.Login(usuario);

		// Se o usu�rio existe insere na sess�o e redireciona para p�gina;
		if (novoUsuario != null) {
			session.setAttribute("usuarioLogado", novoUsuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
}
