package br.com.rifando.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.rifando.entity.Usuario;

@Controller
public class LogoutController {

	/**
	 * 
	 * @param theModal
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logoff(ModelMap theModal, HttpSession session) {

		Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");

		if (usuarioLogado != null) {
			session.setAttribute("usuarioLogado", null);
			return "logout";
		} else {
			return "login";
		}
	}

}
