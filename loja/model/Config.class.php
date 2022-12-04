<?php 

Class Config{

	//INFORMÃÇÕES BÁSICAS DO SITE
	/*const SITE_URL = "http://localhost";
	const SITE_PASTA = "loja";
	const SITE_NOME = "Loja Fashion Moda";
	const SITE_EMAIL_ADM = "lojatccfashionmoda@hotmail.com";
	const BD_LIMIT_POR_PAG = 6;
	const SITE_CEP = '75600000';


	//INFORMAÇÕES DO BANCO DE DADOS
	const BD_HOST = "localhost",
		  BD_USER = "root",
		  BD_SENHA = "",
		  BD_BANCO = "lojatcc",
		  BD_PREFIX = "qc_"; */


	//INFORMÃÇÕES BÁSICAS DO SITE HOSPEDADO
	const SITE_URL = "http://lojatccfashionmoda-com.umbler.net/";
	const SITE_PASTA = "";
	const SITE_NOME = "Loja Fashion Moda";
	const SITE_EMAIL_ADM = "lojatccfashionmoda@hotmail.com";
	const BD_LIMIT_POR_PAG = 6;
	const SITE_CEP = '75600000';


	//INFORMAÇÕES DO BANCO DE DADOS HOSPEDADO
	const BD_HOST = "mysql836.umbler.com",
		  BD_USER = "fashion_moda",
		  BD_SENHA = "Flamengo08?",
		  BD_BANCO = "lojatcc",
		  BD_PREFIX = "qc_"; 	  


	//INFORMAÇÕES PARA PHP MAILLER
	const EMAIL_HOST = "smtp.office365.com";
	const EMAIL_USER = "lojatccfashionmoda@hotmail.com";
	const EMAIL_NOME = "Contato Loja Fashion Moda";
	const EMAIL_SENHA = "fashionmoda_@123";
	const EMAIL_PORTA = 587;
	const EMAIL_SMTPAUTH = true;
	const EMAIL_SMTPSECURE = "tls";
	const EMAIL_COPIA = "lojatccfashionmoda@hotmail.com";

	//CONSTANTES PARA O PAGSEGURO
	const PS_EMAIL  = "lojatccfashionmoda@hotmail.com"; // email pagseguro
    const PS_TOKEN  = "0E86ADF6373348509E7B35389D92004C"; // token produção
    const PS_TOKEN_SBX = "1FB4D7860EA9491BA7AB4A9D9336C275";  // token do sandbox
    const PS_AMBIENTE = "production"; // production   /  sandbox



}
 ?>

