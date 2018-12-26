package br.com.rifando.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.rifando.entity.Usuario;
import br.com.rifando.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	/**
	 * 
	 * @param theModal
	 * @return
	 */
	@RequestMapping("/login")
	public String showPage(ModelMap theModal) {

		// Adiciona usuário no contexto da página para ser lido depois no login
		theModal.addAttribute("usuario", new Usuario());
		return "login";
	}

	/**
	 * 
	 * @param theModal
	 * @return
	 */
	@RequestMapping("/cadastro")
	public String showCadastro(ModelMap theModal) {

		// Adiciona usuário no contexto da página para ser lido depois no login
		theModal.addAttribute("usuario", new Usuario());
		return "cadastroNovoUsuario";
	}


	/**
	 * 
	 * @param usuario
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/efetuaLogin")
	public Response getSearchResultViaAjax(@RequestBody Usuario usuario) {
		Response response = null;
		Usuario novoUsuario = this.usuarioService.login(usuario);
		
		if (novoUsuario != null) {
			 response = new Response("Done", novoUsuario);
		} else {
			 response = new Response("Erro", novoUsuario);
		}
		
		
		//logic
		return response;

	}


	/**
	 * 
	 * @param usuario
	 * @param session
	 * @return
	 */
	/*
	 * @RequestMapping(value = "/cadastraNovoUsuario", method = RequestMethod.POST)
	 * public String cadastraNovoUsuario(ModelMap
	 * theModal, @ModelAttribute("usuario") Usuario usuario, HttpSession session) {
	 * 
	 * // Busca o usuário baseado nos dados inseridos na tela; Usuario novoUsuario =
	 * this.usuarioService.save(usuario);
	 * 
	 * // Se o usuário existe insere na sessão e redireciona para página; if
	 * (novoUsuario != null) { session.setAttribute("usuarioLogado", novoUsuario);
	 * return "menu"; } else { theModal.addAttribute("error",
	 * "Usuário/senha inválidos."); } theModal.addAttribute("usuario", new
	 * Usuario()); return "login"; }
	 */
}
