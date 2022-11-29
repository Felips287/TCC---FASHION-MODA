<?php 

Class Config{

	//INFORMÃÇÕES BÁSICAS DO SITE
	const SITE_URL = "http://localhost";
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



}
 ?>

