package br.com.rifando.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.rifando.entity.Usuario;
import br.com.rifando.service.UsuarioService;
import br.com.rifando.utils.Response;

@Controller
public class ProfileController {

	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping(value = "profile")
	public String showProfile(ModelMap theModal, HttpSession session) {

		theModal.addAttribute("usuario", new Usuario());
		if (session.getAttribute("usuarioLogado") != null) {
			return "profileUsuario";
		} else {
			return "login";
		}
	}

	/**
	 * Método que efetua o login;
	 * 
	 * @param usuario
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/efetuaAlteracao")
	public Response efetuaAlteracao(@RequestBody Usuario usuario, HttpSession session) {
		Response response = null;

		usuario.setCpf(usuario.getCpf().replaceAll("\\.", "").replaceAll("\\-", ""));
		usuario.setTelefone(usuario.getTelefone().replaceAll("\\(", "").replaceAll("\\)", "").replaceAll("\\+", "").replaceAll(" ", ""));
		
		// busca o usuário pelo email e senha;
		Usuario novoUsuario = this.usuarioService.save(usuario);

		// se encontrou retorna sucesso;
		if (novoUsuario != null) {

			// salva usuário na sessão;
			session.setAttribute("usuarioLogado", novoUsuario);
			response = new Response("Done", null);
		} else { 
			// retorna erro para página;
			session.setAttribute("usuarioLogado", null);
			response = new Response("Erro", null);
		}

		return response;
	}

}
