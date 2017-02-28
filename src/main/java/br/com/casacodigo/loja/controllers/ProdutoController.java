package br.com.casacodigo.loja.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casacodigo.loja.daos.ProdutoDAO;
import br.com.casacodigo.loja.infra.FileSaver;
import br.com.casacodigo.loja.models.Produto;
import br.com.casacodigo.loja.models.TipoPreco;
import br.com.casacodigo.loja.validations.ProdutoValidation;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {

	@Autowired
	ProdutoDAO produtoDAO;
	
	@Autowired
	private FileSaver fileSaver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new ProdutoValidation());
	}
	
	@RequestMapping(value="form")
	public ModelAndView form(Produto produto){
		ModelAndView modelAndView = new ModelAndView("produtos/form");
		modelAndView.addObject("tipos", TipoPreco.values());
		return modelAndView;
	}
	
	@PostMapping()
	@CacheEvict(value="produtosHome", allEntries=true)
	public ModelAndView cadastrar(@RequestParam("resumo")MultipartFile resumo ,@Valid Produto produto,BindingResult result, RedirectAttributes redirectAttributes){
		
		if(result.hasErrors()){
			result.getAllErrors().forEach(error -> {
				System.out.println(error.toString());
			});
			return form(produto);
		}
		String path = fileSaver.write("arquivoResumo", resumo);
		
		produto.setResumoPath(path);
		produtoDAO.cadastrar(produto);
		redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");
		return new ModelAndView("redirect:produtos");
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
		List<Produto> lista = produtoDAO.listar();
		
		ModelAndView modelAndView = new ModelAndView("produtos/lista");
		modelAndView.addObject("produtos", lista);
		
		return modelAndView;
	}
	
	@RequestMapping("/detalhe/{id}")
	public ModelAndView detalhe(@PathVariable("id") Integer id){
		ModelAndView detalhe = new ModelAndView("produtos/detalhe");
		Produto produtoDetalhe = produtoDAO.find(id);
		produtoDetalhe.getPrecos().forEach(preco -> {
			System.out.println(preco);
		});
		detalhe.addObject("produto", produtoDetalhe);
		return detalhe;
	}
}
