package br.com.casacodigo.loja.controllers;

import java.util.concurrent.Callable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casacodigo.loja.models.CarrinhoCompras;
import br.com.casacodigo.loja.models.DadosPagamento;
import br.com.casacodigo.loja.models.Usuario;

@Controller
@RequestMapping("/pagamento")
public class PagamentoController {
	
	@Autowired
	private MailSender sender;

	@Autowired
	private CarrinhoCompras carrinho;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@RequestMapping(value="/finalizar", method=RequestMethod.POST)
	public Callable<ModelAndView> finalizar(@AuthenticationPrincipal Usuario usuario, RedirectAttributes model) {
		return () -> {
			String uri = "http://book-payment.herokuapp.com/payment";
			
			
			try {
				String resp = restTemplate.postForObject(uri, new DadosPagamento(carrinho.getTotal()), String.class);
				model.addFlashAttribute("sucesso", resp);
				enviaEmailCompra(usuario);
				
			} catch (HttpClientErrorException e) {
				System.out.println(e.getCause());
				model.addFlashAttribute("falha", "valor maior que o permitido!");
			}
			
			return new ModelAndView("redirect:/produtos");
			
		};
	}

	private void enviaEmailCompra(Usuario usuario) {
		SimpleMailMessage email = new SimpleMailMessage();
		email.setSubject("Compra finalizada com sucesso");
		email.setTo(usuario.getEmail());
		email.setText("Compra aprovada com sucesso no valor de " + carrinho.getTotal());
		email.setFrom("carlos.fattor@gmail.com");
		
		
		sender.send(email);
		
	}
}
