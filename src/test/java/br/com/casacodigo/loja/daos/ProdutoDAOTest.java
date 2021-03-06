package br.com.casacodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import br.com.casacodigo.loja.builders.ProdutoBuilder;
import br.com.casacodigo.loja.conf.DataSourceConfigurationTest;
import br.com.casacodigo.loja.conf.JPAConfiguration;
import br.com.casacodigo.loja.models.Produto;
import br.com.casacodigo.loja.models.TipoPreco;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={
		JPAConfiguration.class, 
		ProdutoDAO.class,
		DataSourceConfigurationTest.class
		})
@ActiveProfiles("test")
public class ProdutoDAOTest {

	@Autowired
	private ProdutoDAO produtoDAO;

	@Test
	@Transactional
	public void deveSomarTodosPrecosPorTipoLivro(){
		
		List<Produto> LivrosImpressos = ProdutoBuilder
				.newProduto(TipoPreco.IMPRESSO, BigDecimal.TEN)
				.more(3)
				.buildAll();
		
		List<Produto> LivrosEbook = ProdutoBuilder
				.newProduto(TipoPreco.EBOOK, BigDecimal.TEN)
				.more(4)
				.buildAll();
		
		LivrosEbook.stream().forEach(produtoDAO::cadastrar);
		LivrosImpressos.stream().forEach(produtoDAO::cadastrar);
		
		BigDecimal valorImpresso = produtoDAO.somaPrecosPorTipo(TipoPreco.IMPRESSO);
		BigDecimal valorEbook = produtoDAO.somaPrecosPorTipo(TipoPreco.EBOOK);
		
		Assert.assertEquals(new BigDecimal(40).setScale(2), valorImpresso);
		Assert.assertEquals(new BigDecimal(40).setScale(2), valorEbook);
	}
	
}
