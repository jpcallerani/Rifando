package br.com.rifando.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContatoController {

	/**
	 * 
	 * @param theModal
	 * @return
	 */
	@RequestMapping("/contato")
	public String showPage(ModelMap theModal) {
		return "contato";
	}
	
}
