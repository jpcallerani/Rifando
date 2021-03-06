package br.com.rifando.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rifando.entity.Rifa;
import br.com.rifando.service.RifaService;

@Controller
public class HomeController {

	@Autowired
	private RifaService rifaService;

	/**
	 * M�todo para mostrar a p�gina inicial;
	 * 
	 * @param theModal
	 * @return
	 */
	@RequestMapping("/")
	public String showPage(ModelMap theModal) {

		// Busca a �ltima rifa cadastrada como v�lida;
		List<Rifa> rifas = this.rifaService.findAll();
		for (Rifa rifa : rifas) {
			rifa.setRifaVenda(this.rifaService.findByRifa(rifa));
		}

		// Adiciona a rifa no par�metro da p�gina;
		theModal.addAttribute("rifas", rifas);

		return "index";
	}

	@RequestMapping("/rifa")
	public String showRifa() {

		return "rifa";
	}
}
