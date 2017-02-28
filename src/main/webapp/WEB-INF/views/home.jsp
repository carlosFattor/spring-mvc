<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %> 
<!doctype html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/favicon.png?16274241259376872695" type="image/png"/>
	<link href="https://plus.google.com/108540024862647200608" rel="publisher">
<title>Livros de Java, SOA, Android, iPhone, Ruby on Rails e muito mais - Casa do CÃ³digo</title>
	<meta property="og:site_name" content="casadocodigo.com.br"/>
    <meta property="og:title" content="Casa do CÃ³digo - Livros para o programador"/>
    <meta property="og:description" content="Casa do CÃ³digo Ã© uma editora feita de programadores para programadores. Android, iOS, Startups, JavaScript, jQuery, HTML, Agile, Java e mais"/>
	<meta property="og:type" content="book" />
    <meta property="og:url" content="https://www.casadocodigo.com.br"/>
    <meta property="og:image" content="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-social.jpg?16274241259376872695" />
    <meta itemprop="name" content="Livros de Java, SOA, Android, iPhone, Ruby on Rails e muito mais - Casa do CÃ³digo">
	<meta name="description" content="Os melhores livros sobre Java, Ruby, Rails, Android, iPhone, SOA, HTML, CSS, Empreendedorismo e muito mais. Feitos por programadores para programadores.">
	<meta itemprop="image" content="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/casa-do-codigo.svg?16274241259376872695">
	<link rel="stylesheet" media="all" href="//cdn.shopify.com/s/assets/storefront/additional-checkout-buttons-e666b0b8a20c90d1eaafcc0f38897f2b4ab8af21f68426b37926e48a2ae452c2.css" />

	<!-- inject:css -->
	<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/style.css?16274241259376872695">
	<!-- endinject -->

	<link rel="canonical" href="https://www.casadocodigo.com.br/" />
</head>
<body>
	<header role="banner" class="cabecalhoPrincipal container">
		<h1 class="cabecalhoPrincipal-titulo">
			<a tabindex="1" href="${s:mvcUrl('HC#home').build() }" class="cabecalhoPrincipal-linkTitulo">
				<svg class="logo" role="img" aria-labelledby="altLogo" width="157px" height="55px" viewBox="-181 211.4 207.5 55" preserveAspectRatio="xMinYMid slice">
	<title id="altLogo">Casa do código - Livros e Tecnologia</title>
	<rect class="logo-backgroundSimbolo" x="-181" y="211.4" class="st0" width="65" height="55"/>
	<g class="logo-simbolo">
		<path transform="translate(-0.1, 0)" class="logo-simboloParteInterna" d="M-133.6,234.2v-7.2l0,0.2h-22.6v24.7h22.6v0.3l0-7.2h-15.9v-10.8H-133.6"/>
		<path class="logo-simboloParteExterna" d="M-149.4,251.9h-6.9v-24.7h22.6v-6.9h-22.6l-6.7,6.9v24.7l6.7,6.9h22.6v-6.9H-149.4"/>
	</g>

		<div id="navegacaoCabecalho" class="cabecalhoPrincipal-navegacao">
			<div class="cabecalhoPrincipal-categoriasEBusca" role="presentation">
				<nav role="navigation" aria-label="Categorias de livros" class="colecoesDaCDC">
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="${s:mvcUrl('PC#form').build() }" class="colecoesDaCDC-colecaoLink">
								Cadastro de livros
							</a>
						</li>
						
						<li class="colecoesDaCDC-colecaoItem">
							<a href="${s:mvcUrl('PC#listar').build() }" class="colecoesDaCDC-colecaoLink">
								Lista de livros
							</a>
						</li>
					
				</nav>
				<form role="search"
					  aria-labelledby="rotuloBuscaPrincipal"
					  action="/search"
					  method="GET"
					  class="buscaPrincipal">
					<label id="rotuloBuscaPrincipal" class="buscaPrincipal-label" for="campoBuscaPrincipal">
						Busque por autor, tÃ­tulo, conteÃºdo...
					</label>
					<input type="hidden" name="type" value="product">
					<input id="campoBuscaPrincipal"
					       class="buscaPrincipal-campo"
					       placeholder="O que vocÃª procura?"
						   type="search"
						   name="q"
						   required
						   aria-required>
					   <button class="buscaPrincipal-submit" type="submit">
						Buscar
					</button>
				</form>
			</div>

			<a tabindex="2" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-mostraCategoriasEBusca" href="#navegacaoCabecalho">
				<img class="cabecalhoPrincipal-iconeItemNavegacao"
					 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?16274241259376872695"
					 alt="Abrir navegaÃ§Ã£o por categorias e busca"
				>
			</a>

			<a tabindex="-1" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-escondeCategoriasEBusca" href="#">
				<img class="cabecalhoPrincipal-iconeItemNavegacao"
					 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?16274241259376872695"
					 alt="Ir para ao topo da pÃ¡gina"
				>
			</a>

			<a tabindex="3" href="/cart" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
				<svg width="28px" height="34px" viewBox="0 0 28 34" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
					<title id="sacolaLabel">
						VocÃª tem 2 itens na sacola
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
	<section class="vitrineDestacao container">
		<ul class="vitrineDestacao-lista">
		  
			<li class="vitrineDestacao-item vitrineDestacao-itemPrincipal">
				<a class="vitrineDestacao-itemPrincipal-link" href="/products/livro-aspnet-mvc5">
<div class="imagemLivroNinja vitrineDestacao-item-imagem" role="img">
	<img class="imagemLivroNinja-principal" class="vitrineDestacao-itemPrincipal-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/oYMlie2WOSoSAAMXetzaSsfNxsomFDB7b8dbi8uVY6o_size_mode_3_size_1280x960_large.jpeg?v=1463777619" alt="Livro de ASP.NET MVC5" title="Livro de ASP.NET MVC5">
	<div class="imagemLivroNinja-tablet" style="" role="presentation">
		<svg width="181px" viewBox="0 0 181 242" style="width: 100%; height: 1px; padding-bottom: 133.7%; padding-bottom: calc(100%*242/181 - 1px); overflow: visible;" preserveAspectRatio="xMidYMin slice" role="presentation">
			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
				<path d="M69.1643321,12.5046687 L111.92731,12.5046687 L111.92731,26.1669056 L69.1643321,26.1669056 L69.1643321,12.5046687 Z" id="Fill-63" fill="#B9BBB8"></path>
				<path d="M174.00728,3.05307652 L6.83436313,3.05307652 C3.25784434,3.05307652 0.332198029,5.97166188 0.332198029,9.53882176 L0.332198029,234.576731 C0.332198029,238.144618 3.25784434,241.063203 6.83436313,241.063203 L174.00728,241.063203 C177.583799,241.063203 180.509445,238.144618 180.509445,234.576731 L180.509445,9.53882176 C180.509445,5.97166188 177.583799,3.05307652 174.00728,3.05307652 L174.00728,3.05307652 Z M85.8370175,19.5175625 L103.403286,19.5175625 C104.367569,19.5175625 105.159111,20.3064676 105.159111,21.2684229 C105.159111,22.2420118 104.367569,23.0200104 103.403286,23.0200104 L85.8370175,23.0200104 C84.8610732,23.0200104 84.0811924,22.2420118 84.0811924,21.2684229 C84.0811924,20.3064676 84.8610732,19.5175625 85.8370175,19.5175625 L85.8370175,19.5175625 Z M77.0484168,19.5175625 C78.0236323,19.5175625 78.8035131,20.3064676 78.8035131,21.2684229 C78.8035131,22.2420118 78.0236323,23.0200104 77.0484168,23.0200104 C76.0834054,23.0200104 75.2925917,22.2420118 75.2925917,21.2684229 C75.2925917,20.3064676 76.0834054,19.5175625 77.0484168,19.5175625 L77.0484168,19.5175625 Z M17.6302458,29.3028943 L163.201193,29.3028943 L163.201193,213.992488 L17.6302458,213.992488 L17.6302458,29.3028943 Z" id="Fill-64" fill="#ddd9d5"></path>
				<path d="M68.8676858,10.0463386 L111.630664,10.0463386 L111.630664,23.7085755 L68.8676858,23.7085755 L68.8676858,10.0463386 Z" id="Fill-65" fill="#ddd9d5"></path>
				<path d="M173.710634,0.594019308 L6.53771688,0.594019308 C2.96119809,0.594019308 0.0355517791,3.51260466 0.0355517791,7.08049164 L0.0355517791,232.117674 C0.0355517791,235.685561 2.96119809,238.604146 6.53771688,238.604146 L173.710634,238.604146 C177.287153,238.604146 180.212799,235.685561 180.212799,232.117674 L180.212799,7.08049164 C180.212799,3.51260466 177.287153,0.594019308 173.710634,0.594019308 L173.710634,0.594019308 Z M85.5403713,13.316114 L103.10664,13.316114 C104.070922,13.316114 104.862465,14.1057462 104.862465,15.0677014 C104.862465,16.0405632 104.070922,16.8185618 103.10664,16.8185618 L85.5403713,16.8185618 C84.5651558,16.8185618 83.7845462,16.0405632 83.7845462,15.0677014 C83.7845462,14.1057462 84.5651558,13.316114 85.5403713,13.316114 L85.5403713,13.316114 Z M76.7517706,13.316114 C77.726986,13.316114 78.5068668,14.1057462 78.5068668,15.0677014 C78.5068668,16.0405632 77.726986,16.8185618 76.7517706,16.8185618 C75.7867592,16.8185618 74.9959455,16.0405632 74.9959455,15.0677014 C74.9959455,14.1057462 75.7867592,13.316114 76.7517706,13.316114 L76.7517706,13.316114 Z M17.3335996,26.8438371 L162.904547,26.8438371 L162.904547,211.533431 L17.3335996,211.533431 L17.3335996,26.8438371 Z" id="Fill-99" fill="#ECE9E6"></path>
				<path d="M95.823865,225.577396 C95.823865,228.717747 93.2721242,231.263329 90.1241754,231.263329 C86.9762266,231.263329 84.4244857,228.717747 84.4244857,225.577396 C84.4244857,222.437772 86.9762266,219.892189 90.1241754,219.892189 C93.2721242,219.892189 95.823865,222.437772 95.823865,225.577396" id="Fill-100" fill="#ddd9d5"></path>
				<rect fill="#FFFFFE" x="17" y="27" width="146" height="185"></rect>
				<image xlink:href="//cdn.shopify.com/s/files/1/0155/7645/products/oYMlie2WOSoSAAMXetzaSsfNxsomFDB7b8dbi8uVY6o_size_mode_3_size_1280x960_large.jpeg?v=1463777619" x="17" y="27" height="185" width="146" preserveAspectRatio="xMidYMin slice" />
			</g>
		</svg>
	</div>
	<div class="imagemLivroNinja-cel" style="" role="presentation">
		<svg width="85px" viewBox="0 0 85 170" style="width: 100%; height: 1px; padding-bottom: 200%; padding-bottom: calc(100%*170/85 - 1px); overflow: visible;" preserveAspectRatio="xMidYMin slice" role="presentation">
			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
				<path d="M80.1653569,2.88154085 L5.01327291,2.88154085 C2.5052637,2.88154085 0.453521213,4.92833153 0.453521213,7.43028773 L0.453521213,164.734331 C0.453521213,167.236287 2.5052637,169.283078 5.01327291,169.283078 L80.1653569,169.283078 C82.6733661,169.283078 84.7258375,167.236287 84.7258375,164.734331 L84.7258375,7.43028773 C84.7258375,4.92833153 82.6733661,2.88154085 80.1653569,2.88154085 L80.1653569,2.88154085 Z M39.3746754,14.4286395 L51.6946055,14.4286395 C52.3709881,14.4286395 52.9263799,14.9819637 52.9263799,15.6567139 C52.9263799,16.3394622 52.3709881,16.8855154 51.6946055,16.8855154 L39.3746754,16.8855154 C38.6902753,16.8855154 38.142901,16.3394622 38.142901,15.6567139 C38.142901,14.9819637 38.6902753,14.4286395 39.3746754,14.4286395 L39.3746754,14.4286395 Z M33.2107016,14.4286395 C33.8943728,14.4286395 34.4417471,14.9819637 34.4417471,15.6567139 C34.4417471,16.3394622 33.8943728,16.8855154 33.2107016,16.8855154 C32.534319,16.8855154 31.9796561,16.3394622 31.9796561,15.6567139 C31.9796561,14.9819637 32.534319,14.4286395 33.2107016,14.4286395 L33.2107016,14.4286395 Z M5.21881159,25.4907615 L79.9532585,25.4907615 L79.9532585,148.197862 L5.21881159,148.197862 L5.21881159,25.4907615 Z" fill="#ddd9d5"></path>
				<path d="M35.6268744,148.956229 L51.2849859,148.956229 L51.2849859,163.096171 L35.6268744,163.096171 L35.6268744,148.956229 Z" fill="#ddd9d5"></path>
				<path d="M4.90685927,24.0532818 L80.1136078,24.0532818 L80.1136078,146.608418 L4.90685927,146.608418 L4.90685927,24.0532818 Z" fill="#000"></path>
				<image xlink:href="//cdn.shopify.com/s/files/1/0155/7645/products/oYMlie2WOSoSAAMXetzaSsfNxsomFDB7b8dbi8uVY6o_size_mode_3_size_1280x960_large.jpeg?v=1463777619" x="4.90685927" y="24.0532818" height="122.5551362" width="75.20674853" preserveAspectRatio="xMidYMin slice" />
				<path d="M80.2630243,0.606440311 L5.11021136,0.606440311 C2.60220216,0.606440311 0.550459668,2.65395809 0.550459668,5.15591429 L0.550459668,162.459231 C0.550459668,164.961914 2.60220216,167.008704 5.11021136,167.008704 L80.2630243,167.008704 C82.7703046,167.008704 84.8227759,164.961914 84.8227759,162.459231 L84.8227759,5.15591429 C84.8227759,2.65395809 82.7703046,0.606440311 80.2630243,0.606440311 L80.2630243,0.606440311 Z M53.0233183,13.3823405 C53.0233183,14.0650888 52.4679266,14.6104149 51.791544,14.6104149 L39.4716139,14.6104149 C38.7879426,14.6104149 38.2405684,14.0650888 38.2405684,13.3823405 C38.2405684,12.7075903 38.7879426,12.1542661 39.4716139,12.1542661 L51.791544,12.1542661 C52.4679266,12.1542661 53.0233183,12.7075903 53.0233183,13.3823405 L53.0233183,13.3823405 Z M34.5386855,13.3823405 C34.5386855,14.0650888 33.9920401,14.6104149 33.3076401,14.6104149 C32.6312574,14.6104149 32.0765946,14.0650888 32.0765946,13.3823405 C32.0765946,12.7075903 32.6312574,12.1542661 33.3076401,12.1542661 C33.9920401,12.1542661 34.5386855,12.7075903 34.5386855,13.3823405 L34.5386855,13.3823405 Z M42.6866178,162.07314 C39.8593677,162.07314 37.5641858,159.78277 37.5641858,156.962343 C37.5641858,154.141917 39.8593677,151.860272 42.6866178,151.860272 C45.5138679,151.860272 47.8017613,154.141917 47.8017613,156.962343 C47.8017613,159.78277 45.5138679,162.07314 42.6866178,162.07314 L42.6866178,162.07314 Z M5.31575004,23.216388 L80.050197,23.216388 L80.050197,145.923489 L5.31575004,145.923489 L5.31575004,23.216388 Z" fill="#ECE9E6"></path>
			</g>
		</svg>
	</div>
</div>


					<div class="vitrineDestacao-item-info" role="presentation">
						<h2 class="vitrineDestacao-item-nome">
						  
							ASP.NET MVC5: Crie aplicaÃ§Ãµes web na plataforma MicrosoftÂ®
						  
						</h2>
						<span class="vitrineDestacao-item-maisDetalhes">Mais detalhes</span>
					</div>
				</a>
			</li>
		  
		  
			<li class="livroNaVitrine vitrineDestacao-item vitrineDestacao-itemSecundario">
				<a href="/products/livro-desconstruindo-web" class="livroNaVitrine-link">
					<img class="livroNaVitrine-imagem vitrineDestacao-item-imagem"
						 src="//cdn.shopify.com/s/files/1/0155/7645/products/Xchinb4LgqfBhX3PDCrk_1PhP-e8xqEQulmXt3l2Ubk_large.jpg?v=1472159580"
						 alt="Livro de requisiÃ§Ãµes Web"
						 title="Livro de requisiÃ§Ãµes Web"
					>
					<div class="vitrineDestacao-item-info" role="presentation">
						<h2 class="vitrineDestacao-item-nome livroNaVitrine-nome">
						  
							Desconstruindo a Web: As tecnologias por trÃ¡s de uma requisiÃ§Ã£o
						  
						</h2>
						<span class="vitrineDestacao-item-maisDetalhes">Mais detalhes</span>
					</div>
				</a>
			</li>
		  
			<li class="livroNaVitrine vitrineDestacao-item vitrineDestacao-itemSecundario">
				<a href="/products/colecao-codeigniter-zend-php" class="livroNaVitrine-link">
					<img class="livroNaVitrine-imagem vitrineDestacao-item-imagem"
						 src="//cdn.shopify.com/s/files/1/0155/7645/products/Colecao_CDC-CodeIgniter_Zend_large.jpg?v=1484687743"
						 alt="ColeÃ§Ã£o CodeIgniter + Zend PHP"
						 title="ColeÃ§Ã£o CodeIgniter + Zend PHP"
					>
					<div class="vitrineDestacao-item-info" role="presentation">
						<h2 class="vitrineDestacao-item-nome livroNaVitrine-nome">
						  
							ColeÃ§Ã£o CodeIgniter + Zend PHP
						  
						</h2>
						<span class="vitrineDestacao-item-maisDetalhes">Mais detalhes</span>
					</div>
				</a>
			</li>
		  
		</ul>
	</section>
	<h3 class="homeCall container">Conheça todos os nossos livros</h3>

	<section class="vitrineDaColecao container">
		<ul class="vitrineDaColecao-lista">
			<c:forEach items="${produtos }" var="produto">
				<li class="livroNaVitrine vitrineDaColecao-produto">
					
					<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }" class="livroNaVitrine-link" title="${produto.descricao }">
						<div class="livroNaVitrine-imagemContainer" role="presentation">
							<img class="livroNaVitrine-imagem " src="//cdn.shopify.com/s/files/1/0155/7645/products/zhQRY_vRi2-piaw5QkZpc552fcVQhN6fe4zLRb4fXV8_large.jpg?v=1486751361" alt="${produto.descricao }" title="${produto.descricao }">
						</div>
					<span class="livroNaVitrine-nome">
					${produto.nome }
					</span>
				</a>
				</li>
			</c:forEach>
		</ul>
	</section>


		<div class="buscaDoRodape container" role="presentation">
	<form role="search"
		  aria-labelledby="rotuloBuscaDoRodape"
		  action="/search"
		  method="GET"
		  class="buscaDoRodape-formulario">
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, tÃ­tulo, conteÃºdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">NÃ£o encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape"
				   class="buscaDoRodape-campo"
				   placeholder="O que vocÃª procura?"
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
				<a class="rodape-logo" href="#" title="Voltar ao topo da pÃ¡gina">
				<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-footer.svg?16274241259376872695" alt="altLogoFooter"/>
				</a>
			</section>
			<section class="rodape-secao rodape-secaoLinks">
				<h3 class="rodape-titulo">Links da <div role="presentation" class="rodape-titulo-espacador"></div>Casa do CÃ³digo</h3>
				<ul>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/sobre-a-casa-do-codigo"  >
							Sobre a Casa do CÃ³digo
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
							FÃ³rum de discussÃµes
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.caelum.com.br"  target="_blank">
							Caelum Ensino e InovaÃ§Ã£o
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.galandra.com.br"  target="_blank">
							Galandra - Reforce seu inglÃªs
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
							PolÃ­tica de Privacidade
						</a>
					</li>
					
				</ul>
			</section><!--

		 --><section class="rodape-secao rodape-secaoOutros">
				<h3 class="rodape-titulo">Receba as novidades, promoÃ§Ãµes e lanÃ§amentos</h3>
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
						<a class="compartilhar-facebook" href="http://www.facebook.com/casadocodigo" rel="nofollow" title="Casa do CÃ³digo no Facebook" rel="nofollow" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-twitter" href="http://www.twitter.com/casadocodigo" rel="nofollow" title="Casa do CÃ³digo no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
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
									
									
	GestÃ£o de Produtos

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
						<h3 class="categorias-titulo">Livros de TendÃªncias</h3>
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
					<p class="grupoCaelum-column-title">EducaÃ§Ã£o</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.caelum.com.br/grupo">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-caelum.svg?16274241259376872695">
								<span class="column-item-title">Caelum</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.casadocodigo.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-cdc.svg?16274241259376872695"><span class="column-item-title">Casa do CÃ³digo</span>					
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">EducaÃ§Ã£o Online</p>
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
