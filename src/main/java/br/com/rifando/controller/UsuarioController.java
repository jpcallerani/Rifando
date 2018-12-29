package br.com.rifando.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.rifando.entity.Usuario;
import br.com.rifando.service.UsuarioService;
import br.com.rifando.utils.Response;

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
	 *  Método para inclusão de novo usuário;
	 * @param theModal
	 * @return
	 */
	@RequestMapping(value = "/efetuaCadastro", method = RequestMethod.POST)
	public String efetuaCadastro(ModelMap theModal, @ModelAttribute("customer") Usuario usuario,
			final RedirectAttributes redirectAttributes, HttpSession session) {

		// salva usuário na base;
		Usuario novoUsuario = this.usuarioService.save(usuario);
		
		// salva usuário na sessão;
		session.setAttribute("usuarioLogado", usuario);
		
		// salva usuário na página;
		theModal.addAttribute("usuario", novoUsuario);
		
		return "cadastroSucesso";
	}

	/**
	 * Método para verificar se o email digitado é válido;
	 * @param usuario
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/checkEmail")
	public Response checkValidEmail(@RequestBody Usuario usuario) {
		Response response = null;
		
		// busca usuário pelo email digitado;
		Usuario novoUsuario = this.usuarioService.findByEmail(usuario);

		// se encontrou retorna "DONE", que para página é erro;
		if (novoUsuario != null) {
			response = new Response("Done", novoUsuario);
		} else { 
			// Se der erro quer dizer que o email está disponível;
			response = new Response("Erro", novoUsuario);
		}

		return response;

	}

	/**
	 * Método que efetua o login;
	 * @param usuario
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/efetuaLogin")
	public Response getSearchResultViaAjax(@RequestBody Usuario usuario, HttpSession session) {
		Response response = null;
		
		// busca o usuário pelo email e senha;
		Usuario novoUsuario = this.usuarioService.login(usuario);

		// se encontrou retorna sucesso;
		if (novoUsuario != null) {
			
			// salva usuário na sessão;
			session.setAttribute("usuarioLogado", novoUsuario);
			response = new Response("Done", novoUsuario);
		} else {
			
			// retorna erro para página;
			session.setAttribute("usuarioLogado", null);
			response = new Response("Erro", novoUsuario);
		}

		return response;

	}
}
