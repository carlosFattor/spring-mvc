
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/favicon.png?16274241259376872695" type="image/png"/>
	<link href="https://plus.google.com/108540024862647200608" rel="publisher">

	<title>Seu carrinho de compras - Casa do Código</title>
	<meta property="og:site_name" content="casadocodigo.com.br"/>
    <meta property="og:title" content="Casa do Código - Livros para o programador"/>
    <meta property="og:description" content="Casa do Código é uma editora feita de programadores para programadores. Android, iOS, Startups, JavaScript, jQuery, HTML, Agile, Java e mais"/>
	<meta property="og:type" content="book" />
    <meta property="og:url" content="https://www.casadocodigo.com.br"/>
    <meta property="og:image" content="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-social.jpg?16274241259376872695" />
    <meta itemprop="name" content="Livros de Java, SOA, Android, iPhone, Ruby on Rails e muito mais - Casa do Código">
	<meta name="description" content="Os melhores livros sobre Java, Ruby, Rails, Android, iPhone, SOA, HTML, CSS, Empreendedorismo e muito mais. Feitos por programadores para programadores.">
	<meta itemprop="image" content="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/casa-do-codigo.svg?16274241259376872695">
	<!-- inject:css -->
	<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/style.css?16274241259376872695">
</head>
<body>
	<header role="banner" class="cabecalhoPrincipal container">
		<h1 class="cabecalhoPrincipal-titulo">
		<a tabindex="1" href="${s:mvcUrl('HC#home').build() }" class="cabecalhoPrincipal-linkTitulo">
		<svg class="logo" role="img" aria-labelledby="altLogo" width="157px" height="55px" viewBox="-181 211.4 207.5 55" preserveAspectRatio="xMinYMid slice">
		<title id="altLogo">Casa do c�digo - Livros e Tecnologia</title>
		<rect class="logo-backgroundSimbolo" x="-181" y="211.4" class="st0" width="65" height="55"/>
		<g class="logo-simbolo">
			<path transform="translate(-0.1, 0)" class="logo-simboloParteInterna" d="M-133.6,234.2v-7.2l0,0.2h-22.6v24.7h22.6v0.3l0-7.2h-15.9v-10.8H-133.6"/>
			<path class="logo-simboloParteExterna" d="M-149.4,251.9h-6.9v-24.7h22.6v-6.9h-22.6l-6.7,6.9v24.7l6.7,6.9h22.6v-6.9H-149.4"/>
		</g>
		<div id="navegacaoCabecalho" class="cabecalhoPrincipal-navegacao">
			<div class="cabecalhoPrincipal-categoriasEBusca" role="presentation">
				<nav role="navigation" aria-label="Categorias de livros" class="colecoesDaCDC">
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-java" class="colecoesDaCDC-colecaoLink">
							Java
						</a>
					</li>
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-desenvolvimento-web" class="colecoesDaCDC-colecaoLink">
							Web
						</a>
					</li>
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-front-e-design" class="colecoesDaCDC-colecaoLink">
							Front e Design
						</a>
					</li>
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-games" class="colecoesDaCDC-colecaoLink">
							Games
						</a>
					</li>
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-mobile" class="colecoesDaCDC-colecaoLink">
							Mobile
						</a>
					</li>
				
					<li class="colecoesDaCDC-colecaoItem">
						<a href="/collections/livros-de-startups" class="colecoesDaCDC-colecaoLink">
							Startups
						</a>
					</li>
				
				</nav>
			<form role="search"
				  aria-labelledby="rotuloBuscaPrincipal"
				  action="/search"
				  method="GET"
				  class="buscaPrincipal">
				<label id="rotuloBuscaPrincipal" class="buscaPrincipal-label" for="campoBuscaPrincipal">
					Busque por autor, título, conteúdo...
				</label>
				<input type="hidden" name="type" value="product">
				<input id="campoBuscaPrincipal"
				       class="buscaPrincipal-campo"
				       placeholder="O que você procura?"
					   type="search"
					   name="q"
					   required
					   aria-required
				><button class="buscaPrincipal-submit" type="submit">
					Buscar
				</button>
			</form>
		</div>

		<a tabindex="2" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-mostraCategoriasEBusca" href="#navegacaoCabecalho">
			<img class="cabecalhoPrincipal-iconeItemNavegacao"
				 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?16274241259376872695"
				 alt="Abrir navegação por categorias e busca"
			>
		</a>

		<a tabindex="-1" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-escondeCategoriasEBusca" href="#">
			<img class="cabecalhoPrincipal-iconeItemNavegacao"
				 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?16274241259376872695"
				 alt="Ir para ao topo da página"
			>
		</a>

		<a tabindex="3" href="/cart" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
			<svg width="28px" height="34px" viewBox="0 0 28 34" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
				<title id="sacolaLabel">
					Você tem ${carrinhoCompras.quantidade } itens na sacola
				</title>
				<path fill="#f8965d" d="M1.66666667,26.9714355 L18.3333333,26.9714355 C19.2533333,26.9714355 20,26.2247689 20,25.3047689 L20,6.97143555 C20,6.05143555 19.2533333,5.30476888 18.3333333,5.30476888 L14.9916667,5.30476888 C14.9516667,2.53643555 12.735,0.30476888 10,0.30476888 C7.265,0.30476888 5.04833333,2.53643555 5.00833333,5.30476888 L1.66666667,5.30476888 C0.746666667,5.30476888 0,6.05143555 0,6.97143555 L0,25.3047689 C0,26.2247689 0.746666667,26.9714355 1.66666667,26.9714355 L1.66666667,26.9714355 Z M12.5,10.3047689 L7.5,10.3047689 C7.04,10.3047689 6.66666667,9.93143555 6.66666667,9.47143555 C6.66666667,9.01143555 7.04,8.63810221 7.5,8.63810221 L12.5,8.63810221 C12.96,8.63810221 13.3333333,9.01143555 13.3333333,9.47143555 C13.3333333,9.93143555 12.96,10.3047689 12.5,10.3047689 L12.5,10.3047689 Z M10,1.97143555 C11.8116667,1.97143555 13.285,3.45976888 13.325,5.30476888 L6.675,5.30476888 C6.715,3.45976888 8.18833333,1.97143555 10,1.97143555 L10,1.97143555 Z"></path>
				<g>
					<circle cx="19.5" cy="24.8047689" r="8.5" role="presentation" fill="#FFF"/>
					<text text-decoration="none" text-anchor="middle" x="19.5" y="30" class="sacola-contador">2</text>
				</g>
			 </svg>
		</a>
	</div>
</header>


	<main>
		<p class="destaqueDoCupom">
  Use o c�digo <strong class="destaqueDoCupom-codigo"></strong> e tenha <strong class="destaqueDoCupom-desconto">10%</strong> de desconto!
  <button class="destaqueDoCupom-remover" title="Remover banner" onclick="removeDiscountBanner()"><?xml version="1.0" encoding="iso-8859-1"?>
<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="15px" height="15px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
<g>
	<path fill="#ffffff" d="M387.128,170.748L306,251.915l-81.128-81.167l-54.124,54.124L251.915,306l-81.128,81.128l54.085,54.086L306,360.086
		l81.128,81.128l54.086-54.086L360.086,306l81.128-81.128L387.128,170.748z M522.38,89.62
		c-119.493-119.493-313.267-119.493-432.76,0c-119.493,119.493-119.493,313.267,0,432.76
		c119.493,119.493,313.267,119.493,432.76,0C641.873,402.888,641.873,209.113,522.38,89.62z M468.295,468.295
		c-89.62,89.619-234.932,89.619-324.551,0c-89.62-89.62-89.62-234.932,0-324.551c89.62-89.62,234.931-89.62,324.551,0
		C557.914,233.363,557.914,378.637,468.295,468.295z"/>
</g>
</svg>
</button>
</p>

		<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th></th>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carrinhoCompras.itens }" var="item" >
				<tr>
					<td class="formularioDoCarrinho-item">
						<a href="/products/livro-rest">
							<img class="formularioDoCarrinho-item-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/rest-featured_small.png?v=1411566684" />
						</a>
					</td>
					<td class="formularioDoCarrinho-item">
						<h2 class="formularioDoCarrinho-item-titulo">${item.produto.nome }</h2>
					</td>
					<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">R$ ${item.preco }</td>
					<td class="formularioDoCarrinho-item">
						<input class="formularioDoCarrinho-item-quantidade"
							   type="number"
							   min="0"
							   id="quantidade"
							   name="quantidade"
							   value="${carrinhoCompras.getQuantidade(item) }">
					</td>
					<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="Preço unitário: R$69,90">
						${carrinhoCompras.getTotal(item) }
					</td>
					<td class="formularioDoCarrinho-item">""
						<form:form servletRelativeAction="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).arg(1, item.tipoPreco).build() }" method="POST">
							<input type="image" class="formularioDoCarrinho-item-remover-imagem" src="http:////cdn.shopify.com/s/files/1/0155/7645/t/227/assets/trash.png?16274241259376872695" alt="X" title="Remover" />
						</form:form>
					</td>
				</tr>	
			</c:forEach>	
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
				<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
					<form:form action="${s:mvcUrl('PC#finalizar').build() }" method="POST">
						<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="checkout">Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span></button>
					</form:form>
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					${carrinhoCompras.total }
				</td>
				<td></td>
			</tr>
		</tfoot>
	</table>
	
</section>



		<div class="buscaDoRodape container" role="presentation">
	<form role="search"
		  aria-labelledby="rotuloBuscaDoRodape"
		  action="/search"
		  method="GET"
		  class="buscaDoRodape-formulario"
	>
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, título, conteúdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">Não encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape"
				   class="buscaDoRodape-campo"
				   placeholder="O que você procura?"
				   type="search"
				   name="q"
				   required
				   aria-required
			>
			<button class="buscaDoRodape-enviar" type="submit">
				Buscar
			</button>
		</fieldset>
	</form>
</div>
	</main>
	<footer class="rodape">
	<div class="container" role="presentation">
		<div class="rodape-conteudo" role="presentation">
			<section class="rodape-secao">
				<a class="rodape-logo" href="#" title="Voltar ao topo da página">
				<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-footer.svg?16274241259376872695" alt="altLogoFooter"/>
				</a>
			</section>
			<section class="rodape-secao rodape-secaoLinks">
				<h3 class="rodape-titulo">Links da <div role="presentation" class="rodape-titulo-espacador"></div>Casa do Código</h3>
				<ul>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/sobre-a-casa-do-codigo"  >
							Sobre a Casa do Código
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/quero-ser-um-autor"  >
							Quero ser um autor
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="https://feedback.userreport.com/500b990e-9d86-4af5-ad72-3be3151b8dc0/"  target="_blank">
							Quero ler um livro sobre...
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://suporte.casadocodigo.com.br"  >
							Perguntas frequentes
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://forum.casadocodigo.com.br"  >
							Fórum de discussões
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.caelum.com.br"  target="_blank">
							Caelum Ensino e Inovação
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.galandra.com.br"  target="_blank">
							Galandra - Reforce seu inglês
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://livros.casadocodigo.com.br" rel="nofollow" >
							Meus E-books
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.codecrushing.com" rel="nofollow" >
							Code Crushing
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/politica-de-privacidade" rel="nofollow" >
							Política de Privacidade
						</a>
					</li>
					
				</ul>
			</section><!--

		 --><section class="rodape-secao rodape-secaoOutros">
				<h3 class="rodape-titulo">Receba as novidades, promoções e lançamentos</h3>
				<form class="rodape-formularioDaNewsletter" action="https://docs.google.com/spreadsheet/formResponse?formkey=dFhxZ2tDalFiclU4T2FLZVY4UXVUc2c6MQ&embedded=true&ifq" method="POST">
					<input type="hidden" name="pageNumber" value="0">
					<input type="hidden" name="backupCache" value="">
					<input class="rodape-campoDaNewsletter" type="email" name="entry.0.single" value="" id="entry_0" placeholder="seu@email.com"><!--
				 --><button class="rodape-botaoDaNewsletter" type="submit" name="submit" id="submit-newsletter">ok</button>
				</form>

				<h3 class="rodape-titulo rodape-tituloSecundario">Este site aceita</h3>
				<ul>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/pagseguro.png?16274241259376872695" border="0" alt="pag seguro"/>
					</li>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/paypal.png?16274241259376872695" border="0" alt="paypal"/>
					</li>
				</ul>

				<h3 class="rodape-titulo rodape-tituloSecundario">Nas redes sociais</h3>
				<ul>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-facebook" href="http://www.facebook.com/casadocodigo" rel="nofollow" title="Casa do Código no Facebook" rel="nofollow" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-twitter" href="http://www.twitter.com/casadocodigo" rel="nofollow" title="Casa do Código no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
					</li>
				</ul>
			</section>
		</div>
	</div>
</footer>
<footer class="categorias">
	<div class="container" role="presentation">
		<div class="categorias-footer" role="presentation">
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-agile">
						<h3 class="categorias-titulo">Livros de Agile</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-tdd">
									
									
	TDD com Java

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-scrum">
									
									
	Scrum

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-agile">
									
									
	Agile

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-testes-de-software">
									
									
	Testes de Software

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-arquitetura">
						<h3 class="categorias-titulo">Livros de Arquitetura</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-soa-webservices">
									
									
	SOA, web services e al&#233;m

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-arquitetura-java">
									
									
	Arquitetura Java

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-apis-nodejs">
									
									
	APIs Node.js

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-bancos-de-dados">
						<h3 class="categorias-titulo">Livros de Bancos de Dados</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mongodb">
									
									
	MongoDB

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-sql-oracle">
									
									
	SQL e banco de dados Oracle

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-plsql">
									
									
	Banco de Dados PL/SQL

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-banco-mysql">
									
									
	Banco MySQL

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-conceitos-iniciais">
						<h3 class="categorias-titulo">Livros de Conceitos Iniciais</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-programacao">
									
									
	L&#243;gica de Programa&#231;&#227;o

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-programador-apaixonado">
									
									
	O Programador Apaixonado

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-guia-frontend">
									
									
	Guia Front-End

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jogos-html-javascript">
									
									
	Jogos com HTML5

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-desenvolvimento-web">
						<h3 class="categorias-titulo">Livros de Desenvolvimento Web</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jsf-jpa">
									
									
	JSF e JPA

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-nodejs">
									
									
	Node.js

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ruby-on-rails">
									
									
	Rails 4

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-design">
						<h3 class="categorias-titulo">Livros de Design</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ux-user-experience">
									
									
	UX Design

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-photoshop">
									
									
	Adobe Photoshop

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-adobe-lightroom">
									
									
	Adobe Lightroom

								</a>
							</li>
							
						
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-devops-e-infraestrutura">
						<h3 class="categorias-titulo">Livros de Devops e Infraestrutura</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-git-github">
									
									
	Git e GitHub

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-devops">
									
									
	DevOps

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-docker">
									
									
	Ambientes com Docker

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ferramentas-devops">
									
									
	Ferramentas DevOps

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-empreendedorismo">
						<h3 class="categorias-titulo">Livros de Empreendedorismo</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-startup-guia">
									
									
	Guia da Startup

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-direto-ao-ponto">
									
									
	Direto ao Ponto

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-seo">
									
									
	SEO na Pr&#225;tica

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-gestao-produtos">
									
									
	Gestão de Produtos

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-front-end">
						<h3 class="categorias-titulo">Livros de Front End</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-html-css">
									
									
	HTML5 e CSS3

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-javascript-jquery">
									
									
	jQuery e JavaScript

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-web-design-responsivo">
									
									
	Web Design Responsivo

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-web-mobile">
									
									
	Web Mobile

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-java">
						<h3 class="categorias-titulo">Livros de Java</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jsf-jpa">
									
									
	JSF e JPA

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-design-patterns">
									
									
	Design Patterns

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-spring-framework">
									
									
	Spring Framework

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-linguagens">
						<h3 class="categorias-titulo">Livros de Linguagens</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-html-css">
									
									
	HTML5 e CSS3

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-orientacao-objetos-java">
									
									
	Java e OO

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ruby">
									
									
	Ruby

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-java8">
									
									
	Java 8 Pr&#225;tico

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-mobile">
						<h3 class="categorias-titulo">Livros de Mobile</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-android">
									
									
	Google Android

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-web-design-responsivo">
									
									
	Web Design Responsivo

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-swift-ios">
									
									
	Swift e iOS

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-iphone-ipad-ios">
									
									
	iOS, iPhone e iPad

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-tendencias">
						<h3 class="categorias-titulo">Livros de Tendências</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mean">
									
									
	MEAN

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mongodb">
									
									
	MongoDB

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-meteor">
									
									
	Meteor

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-google-go">
									
									
	Google Go

								</a>
							</li>
							
								
					</ul>
				</section>
			
		</div>
	</div>
</footer>
<footer class="caelum-footer">
	<div class="grupoCaelum">
		<div class="container">
			<p class="grupoCaelum-title"><a href="http://www.caelum.com.br/grupo">Grupo Caelum</a></p>
			<ul class="grupoCaelum-list">
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.caelum.com.br/grupo">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-caelum.svg?16274241259376872695">
								<span class="column-item-title">Caelum</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.casadocodigo.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-cdc.svg?16274241259376872695"><span class="column-item-title">Casa do Código</span>					
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação Online</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.alura.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-alura.svg?16274241259376872695#alura"><span class="column-item-title">Alura</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.musicdot.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-musicdot.svg?16274241259376872695"><span class="column-item-title">MusicDot</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.galandra.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-galandra.svg?16274241259376872695"><span class="column-item-title">Galandra</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Comunidade</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://hipsters.tech">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-pontotech.svg?16274241259376872695"><span class="column-item-title">Hipsters ponto Tech</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://hipsters.jobs">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-jobs.svg?16274241259376872695"><span class="column-item-title">Hipsters ponto Jobs</span>
							</a>
						</li>				
						<li class="column-item">
							<a href="http://www.guj.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-guj.svg?16274241259376872695"><span class="column-item-title">GUJ</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Parceiros</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.imasters.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-imasters.svg?16274241259376872695"><span class="column-item-title">iMasters</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

</footer>

	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/trackExternalLinks.js?16274241259376872695"></script>
	
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/userreport.js?16274241259376872695"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/discount.js?16274241259376872695"></script>
</body>
</html>
