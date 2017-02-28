package br.com.casacodigo.loja.daos;

import javax.servlet.Filter;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import br.com.casacodigo.loja.conf.AppWebConfiguration;
import br.com.casacodigo.loja.conf.DataSourceConfigurationTest;
import br.com.casacodigo.loja.conf.JPAConfiguration;
import br.com.casacodigo.loja.conf.SecurityConf;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes={
		AppWebConfiguration.class,
		JPAConfiguration.class, 
		ProdutoDAO.class,
		DataSourceConfigurationTest.class,
		SecurityConf.class
		})
@ActiveProfiles("test")
public class ProdutosControllerTest {
	
	private MockMvc mockMvc;
	
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private Filter springSecurityFilterChain;
	
	@Before
	public void setup(){
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context)
				.addFilter(springSecurityFilterChain)
				.build();
	}
	
	@Test
	public void deveRetornarParaHomeComLivros() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/"))
			.andExpect(MockMvcResultMatchers
				.model().attributeExists("produtos"))
			.andExpect(MockMvcResultMatchers
					.forwardedUrl("/WEB-INF/views/home.jsp"));
	}
	
	@Test
	public void somenteAdminDeveAcessauProdutosForm() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/produtos/form")
				.with(SecurityMockMvcRequestPostProcessors
						.user("carlosfattor@hotmail.com")
						.password("123")
						.roles("USER")))
			.andExpect(MockMvcResultMatchers.status().is(403));
			
	}
}
