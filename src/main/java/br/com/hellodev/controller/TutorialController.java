package br.com.hellodev.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.hellodev.dao.TutorialDAO;
import br.com.hellodev.enums.Categorias;
import br.com.hellodev.models.Tutorial;

@Controller
@RequestMapping("/tutorial")
public class TutorialController {
	
	@Autowired
    private TutorialDAO tutorialDAO;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView init(){
		ModelAndView modelAndView = new ModelAndView("cadastro_tutorial");
		modelAndView.addObject("categorias", Categorias.values());
		return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView cadastrarNovoTutorial(Tutorial tutorial, RedirectAttributes redirectAttributes){
		tutorialDAO.gravar(tutorial);
		redirectAttributes.addFlashAttribute("sucesso","Post cadastrado com sucesso!");
		ModelAndView modelAndView = new ModelAndView("redirect:tutorial");
		return modelAndView;
	}
	
}
