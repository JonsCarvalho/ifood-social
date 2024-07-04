
-- -------------------------------------------------------------------
-- Script de Carga de Dados
-- -------------------------------------------------------------------

-- ****************************************************************************************
-- Dados básicos para localização de outros elementos
-- ****************************************************************************************
-- Dados básicos: Cidade ---------------------------------------------
select * from cidade;
INSERT INTO `ifoodsocial`.`cidade`
	(`COD_CIDADE`,		`DCR_CIDADE`)
VALUES
	(1,					'Itabuna');

INSERT INTO `ifoodsocial`.`cidade`
	(`COD_CIDADE`,		`DCR_CIDADE`)
VALUES
	(2,					'Ilhéus');

INSERT INTO `ifoodsocial`.`cidade`
	(`COD_CIDADE`,		`DCR_CIDADE`)
VALUES
	(3,					'Itauípe');
    
-- Dados básicos: Bairro  -------------------------------------------------------
select * from bairro order by cod_cidade;
INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(10,					'Centro',				1);

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(11,					'Conceição',			1);

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(12,					'Góes Calmon',			1);

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(20,					'Salobrinho',			2);

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(21,					'Centro',				2);

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(22,					'Pontal',				2); 

INSERT INTO `ifoodsocial`.`bairro`
(`COD_BAIRRO`,			`DCR_BAIRRO`,			`COD_CIDADE`)
VALUES
(30,					'Centro',				3); 
   
-- Dados básicos: Localidade  --------------------------------------------
select 		c.cod_cidade, c.DCR_CIDADE,
			b.cod_bairro, b.DCR_BAIRRO,
            loc.COD_LOCALIDADE, loc.DCR_LOCALIDADE
from 		localidade	loc,
			bairro		b,
			cidade		c
where		loc.COD_BAIRRO  = b.COD_BAIRRO	and
			b.cod_cidade	= c.cod_cidade
order by	c.cod_cidade, b.cod_bairro, loc.cod_localidade;

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(100,					'Praça Camacan',	10,				100);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(101,					'Igreja Matriz',	10,				101);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(110,					'Pracinha',			11,				110);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(111,					'Campo Lazer',		11,				111);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(120,					'Daniel San',		12,				120);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(121,					'Shopping',			12,				121);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(122,					'Shopping - Praça Alimentação',		12,				121);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(123,					'Shopping - Area 2o Andar',			12,				121);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(200,					'UESC',				20,				200);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(201,					'UESC - CEU',		20,				200);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(202,					'UESC - Cantina Sandro',		20,				200);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(203,					'UESC - Portaria',				20,				200);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(204,					'UESC - Bosque',				20,				200);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(210,					'Ponto da Rota',				21,				210);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(220,					'Passarela do Álcool',			22,				210);

INSERT INTO `ifoodsocial`.`localidade`
(`COD_LOCALIDADE`,		`DCR_LOCALIDADE`,	`COD_BAIRRO`,	`LOCALIDADE_COD_LOCALIDADE`)
VALUES
(300,					'Rodoviária',		30,				300);


-- ****************************************************************************************
--  Empreendedor
-- ****************************************************************************************
-- Empreendedor: Empreendimento --------------------------------------------------
INSERT INTO `ifoodsocial`.`empreendimento`
(`COD_EMPREEDIMENTO`,		`DCR_EMPREENDIMENTO`,		`DCR_NOME_FANTASIA`,	`DCR_ENDERECO`,
`DCR_COMPLEMENTO`,			`NUM_CEP`,					`COD_CIDADE`,			`BAIRRO_COD_BAIRRO`,
`COD_LOCALIDADE`,			`IMG_EMPREENDIMENTO`)
VALUES
(1,							'Esmeralda Delícias',		'Esmeralda Delícias',	'Rua Central, 20',
'-',						'45662-000',				2,						20,
200,						Null);

INSERT INTO `ifoodsocial`.`empreendimento`
(`COD_EMPREEDIMENTO`,		`DCR_EMPREENDIMENTO`,		`DCR_NOME_FANTASIA`,	`DCR_ENDERECO`,
`DCR_COMPLEMENTO`,			`NUM_CEP`,					`COD_CIDADE`,			`BAIRRO_COD_BAIRRO`,
`COD_LOCALIDADE`,			`IMG_EMPREENDIMENTO`)
VALUES
(2,							'Espaço das Empadas',		'Espaço das Empadas',	'Rua Aurora, 100',
'20 Andar',					'45605-340',				1,						11,
111,						Null);


-- Empreendedor: Funcionario -----------------------------------------------------
INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(10,					'Dona Esmeralda',		'73 983217876',		'merinha@gmail.com');

INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(11,					'Fabiana - (Filha Esmeralda)',	'73 983218023',		'fabizinha02@gmail.com');

INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(12,					'Luis Carlos - (Sobrinho Esmeralda)',	'73 93748023',		'lcporradao@gmail.com');

INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(20,					'Aline',				'73 983219500',		'alineempadas@gmail.com');


INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(21,					'Joice (Amiga Aline)',	'73 995553210',		'joiceempadas@gmail.com');

INSERT INTO `ifoodsocial`.`funcionario`
(`COD_FUNCIONARIO`,		`NOME_FUNCIONARIO`,		`NUM_TELEFONE`,		`DCR_EMAIL`)
VALUES
(22,					'Crizaldino',			'71 944213748',		'crizaldino@gmail.com');

-- Empreendedor: Empreend_Funcinonario -------------------------------------------
select 		e.COD_EMPREEDIMENTO, e.DCR_EMPREENDIMENTO,
			f.COD_FUNCIONARIO, f.NOME_FUNCIONARIO,
            ef.COD_EMPREEND_FUNCIONARIO, ef.TIP_FUNCIONARIO
from		empreendimento 	e,
			funcionario		f,
			emprend_funcionario ef
where
			e.COD_EMPREEDIMENTO = ef.COD_EMPREEDIMENTO 
	and		f.COD_FUNCIONARIO = ef.COD_FUNCIONARIO
order by	
			e.COD_EMPREEDIMENTO, f.cod_funcionario;
				

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(10,							'P',
1,								10,					NULL);

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(11,							'V',
1,								11,					NULL);

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(12,							'E',
1,								12,					NULL);

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(20,							'P',
2,								20,					NULL);

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(21,							'V',
2,								21,					NULL);

INSERT INTO `ifoodsocial`.`emprend_funcionario`
(`COD_EMPREEND_FUNCIONARIO`,	`TIP_FUNCIONARIO`,	
`COD_EMPREEDIMENTO`,			`COD_FUNCIONARIO`,	`IMG_EMPREEND_FUNCIONARIO`)
VALUES
(22,							'E',
2,								22,					NULL);

-- ******************************************************************************************
-- Produtos
-- ******************************************************************************************
select 		e.COD_EMPREEDIMENTO, e.DCR_EMPREENDIMENTO,
			c.COD_CATEGORIA, c.DCR_CATEGORIA,
            p.cod_produto, p.DCR_PRODUTO, p.VLR_PRODUTO
from		empreendimento 	e,
			categoria		c,
			produto			p
where
			e.COD_EMPREEDIMENTO = c.COD_EMPREEDIMENTO
	and		c.COD_CATEGORIA		= p.COD_CATEGORIA
order by
			e.COD_EMPREEDIMENTO, c.cod_categoria, p.cod_produto;


-- Produtos: Categoria -----------------------------------------------------------
INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(10,					'Refeições',			NULL,					1);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(11,					'Lasanhas',				NULL,					1);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(12,					'Bebidas',				NULL,					1);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(13,					'Sobremesas',			NULL,					1);


INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(20,					'Empadas salgadas',		NULL,					2);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(21,					'Empadas doces',		NULL,					2);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(22,					'Quiches',				NULL,					2);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(23,					'Salgados diversos',	NULL,					2);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(24,					'Salgados light',		NULL,					2);

INSERT INTO `ifoodsocial`.`categoria`
(`COD_CATEGORIA`,		`DCR_CATEGORIA`,		`IMG_CATEGORIA`,		`COD_EMPREEDIMENTO`)
VALUES
(25,					'Sucos',				NULL,					2);

-- Produtos: Produtos -------------------------------------------------------------------------
-- 10	Refeições		1
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(100,				'PF - 1 carne',		NULL,				15.00,
'S',				10,					1);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(101,				'PF - 2 carnes',		NULL,			19.00,
'S',				10,					1);

-- 11	Lasanhas		1
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(110,				'Lasanha de carne',	NULL,				16.00,
'S',				11,					1);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(111,				'Lasanha de frango',NULL,				13.00,
'S',				11,					1);

-- 12	Bebidas		1
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(120,				'Refri - Caçulinha', NULL,				2.50,
'S',				12,					1);

-- 12	Bebidas		1
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(121,				'Refri - Lata', 	NULL,				4.50,
'S',				12,					1);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(122,				'Suco do dia', 		NULL,				2.00,
'S',				12,					1);

-- 13	Sobremesas		1
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(130,				'Doce do dia', 		NULL,				2.20,
'S',				13,					1);

-- 20	Empadas salgadas		2
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(200,				'Frango', NULL,				5.00,
'S',				20,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(201,				'Frango com Catupiry', NULL,				5.50,
'S',				20,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(202,				'Camarão', NULL,				6.50,
'S',				20,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(203,				'Carne seca com banana', NULL,				5.00,
'S',				20,					2);

-- 21	Empadas doces		2
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(210,				'Brigadeiro', 		NULL,				4.00,
'S',				21,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(211,				'Romeu e Julieta', 	NULL,				4.00,
'S',				21,					2);

-- 22	Quiches		2
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(220,				'Alho poro com bacon', 	NULL,				6.50,
'S',				22,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(221,				'Calabresa apimentada', 	NULL,				5.50,
'S',				22,					2);

-- 23	Salgados diversos		2
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(230,				'Coxinha de frango', NULL,				4.50,
'S',				23,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(231,				'Quibe', 			NULL,				4.50,
'S',				23,					2);

-- 24	Salgados light		2
INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(240,				'Pastel integral - frango com ricota', 	NULL,				6.50,
'S',				24,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(241,				'Pastel integral - queijo e tomate seco', 	NULL,				6.50,
'S',				24,					2);


-- 25	Sucos		2

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(250,				'Cajá', 	NULL,	4.00,
'S',				25,					2);

INSERT INTO `ifoodsocial`.`produto`
(`COD_PRODUTO`, 	`DCR_PRODUTO`,		`IMG_PRODUTO`,		`VLR_PRODUTO`,
`FLAG_DISPONIVEL`,	`COD_CATEGORIA`,	`COD_EMPREEDIMENTO`)
VALUES
(251,				'Manga', 	NULL,	4.00,
'S',				25,					2);

-- Produtos: Cardapios ----------------------------------------------------------------------------
INSERT INTO `ifoodsocial`.`cardapio`
(`COD_CARDAPIO`,  		`DCR_CARDAPIO`,		`DCR_TITULO_APRES`,			`COD_EMPREEDIMENTO`)
VALUES
(1,						'Versão inicial- Esmeralda',	'Cardápio Dona Esmeralda',	1);

INSERT INTO `ifoodsocial`.`cardapio`
(`COD_CARDAPIO`,  		`DCR_CARDAPIO`,		`DCR_TITULO_APRES`,			`COD_EMPREEDIMENTO`)
VALUES
(2,						'Versão inicial - Aline',	'Cardápio Espaço da Empada',	2);

-- Produtos: Seções do cardápio --------------------------------------------------------------------
select 		e.COD_EMPREEDIMENTO, e.DCR_EMPREENDIMENTO,
			c.COD_CARDAPIO, c.DCR_CARDAPIO,
            sc.COD_SECAO_CARDAPIO, sc.DCR_TITULO_APRES
from		secao_cardapio  sc,
			cardapio		c,
			empreendimento	e
where
			sc.cod_cardapio = c.cod_cardapio
	and		c.COD_EMPREEDIMENTO = e.COD_EMPREEDIMENTO
order by
			e.COD_EMPREEDIMENTO, c.COD_CARDAPIO, sc.COD_SECAO_CARDAPIO;
		
select * from empreendimento;
select * from cardapio;
select * from secao_cardapio;

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(10,						'Refeições',				'Refeições',
1,							1);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(11,						'Lasanhas',					'Lasanhas',
1,							2);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(12,						'Bebidas',					'Bebidas',
1,							3);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(13,						'Sobremesas',				'Sobremesas',
1,							4);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(20,						'Empadas Salgadas',			'Empadas Salgadas',
2,							1);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(21,						'Empadas Doces',			'Empadas Doces',
2,							2);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(22,						'Quiches',					'Quiches',
2,							3);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(23,						'Salgados diversos',		'Salgados diversos',
2,							4);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(24,						'Salgados light',					'Salgados light',
2,							5);

INSERT INTO `ifoodsocial`.`secao_cardapio`
(`COD_SECAO_CARDAPIO`,		`DCR_SECAO_CARDAPIO`, 		`DCR_TITULO_APRES`,
`COD_CARDAPIO`,				`NUM_ORDEM`)
VALUES
(25,						'Sucos',					'Sucos',
2,							6);

-- Produtos: Produtos nas Secoes dos Cardápios ------------------------------------------------
select 		e.COD_EMPREEDIMENTO, e.DCR_EMPREENDIMENTO,
			c.COD_CARDAPIO, c.DCR_CARDAPIO,
            sc.COD_SECAO_CARDAPIO, sc.DCR_TITULO_APRES,
            p.COD_PRODUTO, p.DCR_PRODUTO
from		secao_cardapio  sc,
			cardapio		c,
			empreendimento	e,
            secao_produto   sp,
            produto			p
where
			sc.cod_cardapio = c.cod_cardapio
	and		c.COD_EMPREEDIMENTO = e.COD_EMPREEDIMENTO
    and		sp.SECAO_CARDAPIO_COD_SECAO_CARDAPIO = sc.COD_SECAO_CARDAPIO
    and     sp.PRODUTO_COD_PRODUTO = p.COD_PRODUTO
order by
			e.COD_EMPREEDIMENTO, c.COD_CARDAPIO, sc.COD_SECAO_CARDAPIO, 
            sc.NUM_ORDEM;

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(100,								100,
10,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(101,								101,
10,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(110,								110,
11,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(111,								111,
11,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(120,								120,
12,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(121,								121,
12,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(122,								122,
12,									3);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(130,								130,
13,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(200,								200,
20,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(201,								201,
20,									2);


INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(202,								202,
20,									3);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(203,								203,
20,									4);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(210,								210,
21,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(211,								211,
21,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(220,								220,
22,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(221,								221,
22,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(230,								230,
23,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(231,								231,
23,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(240,								240,
24,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(241,								241,
24,									2);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(250,								250,
25,									1);

INSERT INTO `ifoodsocial`.`secao_produto`
(`COD_SECAO_PRODUTO`,				`PRODUTO_COD_PRODUTO`,	
`SECAO_CARDAPIO_COD_SECAO_CARDAPIO`,`NUM_ORDEM`)
VALUES
(251,								251,
25,									2);

-- *******************************************************************************************
--  Cliente
-- *******************************************************************************************
select * from cliente;
INSERT INTO `ifoodsocial`.`cliente`
(`COD_CLIENTE`,			`NOME_CLIENTE`,			`DCR_ENDERECO`,
`DCR_COMPLEMENTO`,		`NUM_CEP`,				`COD_CIDADE`,
`COD_BAIRRO`,			`COD_LOCALIDADE`)
VALUES
(1,						'Carlos Alberto',		'UESC',
'UESC',					'45662-900',			2,
20,						200);

INSERT INTO `ifoodsocial`.`cliente`
(`COD_CLIENTE`,			`NOME_CLIENTE`,			`DCR_ENDERECO`,
`DCR_COMPLEMENTO`,		`NUM_CEP`,				`COD_CIDADE`,
`COD_BAIRRO`,			`COD_LOCALIDADE`)
VALUES
(2,						'João Marcos',			'UESC',
'UESC',					'45662-900',			2,
20,						200);

INSERT INTO `ifoodsocial`.`cliente`
(`COD_CLIENTE`,			`NOME_CLIENTE`,			`DCR_ENDERECO`,
`DCR_COMPLEMENTO`,		`NUM_CEP`,				`COD_CIDADE`,
`COD_BAIRRO`,			`COD_LOCALIDADE`)
VALUES
(3,						'Marcela',				'Rua Bela Vista, 30',
'Apto 102',				'45605-255',			1,
11,						110);

-- *******************************************************************************************
--  Pedido
-- *******************************************************************************************
-- Forma de pagamento -----------------------------------------------------------------------
select * from forma_pagto;
INSERT INTO `ifoodsocial`.`forma_pagto`
(`COD_FORMA_PAGTO`,			`DCR_FORMA_PAGTO`)
VALUES
(1,							'Dinheiro');

INSERT INTO `ifoodsocial`.`forma_pagto`
(`COD_FORMA_PAGTO`,			`DCR_FORMA_PAGTO`)
VALUES
(2,							'PIX');

INSERT INTO `ifoodsocial`.`forma_pagto`
(`COD_FORMA_PAGTO`,			`DCR_FORMA_PAGTO`)
VALUES
(3,							'Crédito');

INSERT INTO `ifoodsocial`.`forma_pagto`
(`COD_FORMA_PAGTO`,			`DCR_FORMA_PAGTO`)
VALUES
(4,							'Débito');

-- Pedido e Item Pedido -----------------------------------------------------------------------
select 	cli.NOME_CLIENTE, 
		ped.COD_PEDIDO, ped.DATA_PEDIDO, ped.VLR_PEDIDO,
        prod.cod_produto, prod.DCR_PRODUTO,
        ip.QTD_PRODUTO, ip.VLR_PRODUTO, ip.VLR_TOTAL
from 	pedido			ped,
		item_pedido		ip,
        cliente 		cli,
        produto			prod
where
		ped.cod_pedido 	= ip.COD_PEDIDO
and		ped.COD_CLIENTE	= cli.COD_CLIENTE
and		ip.COD_PRODUTO 	= prod.COD_PRODUTO;

select * from item_pedido;
-- Pedido; Carlos Alberto ------------------------------------------------
INSERT INTO `ifoodsocial`.`pedido`
(`COD_PEDIDO`,				`TIP_PEDIDO`,				`DATA_PEDIDO`,
`VLR_PEDIDO`,				`COD_CLIENTE`,				`COD_FORMA_PAGTO`,
`DCR_DADOS_PAGTO`)
VALUES
(10,						'P',						STR_TO_DATE("05/06/2024 11:45", "%d/%m/%Y %H:%i"),
19.20,						1,							1,
'Dinheiro');

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(100,						15.00,					1,
15.00,						10,						100);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(101,						2.00,					1,
2.00,						10,						122);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(102,						2.20,					1,
2.20,						10,						130);

-- Pedido 2 --------------------------------------------------------------------------------------
INSERT INTO `ifoodsocial`.`pedido`
(`COD_PEDIDO`,				`TIP_PEDIDO`,				`DATA_PEDIDO`,
`VLR_PEDIDO`,				`COD_CLIENTE`,				`COD_FORMA_PAGTO`,
`DCR_DADOS_PAGTO`)
VALUES
(20,						'P',						STR_TO_DATE("06/06/2024 15:12", "%d/%m/%Y %H:%i"),
33.5,						2,							2,
'CPF: 07129211032');

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(200, 						6.5,					2,
13.0,						20,						202);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(201, 						4.0,					1,
4.0,						20,						210);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(202, 						4.5,					1,
4.5,						20,						230);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(203, 						4.0,					2,
8.0,						20,						250);

INSERT INTO `ifoodsocial`.`item_pedido`
(`COD_ITEM_PEDIDO`,			`VLR_PRODUTO`,			`QTD_PRODUTO`,
`VLR_TOTAL`,				`COD_PEDIDO`,			`COD_PRODUTO`)
VALUES
(204, 						4.0,					1,
4.0,						20,						251);

select * from pedido;

-- *******************************************************************************************
--  Entregas
-- *******************************************************************************************
-- -- Eventos de entrega ---------------------------------------------------------------------
INSERT INTO `ifoodsocial`.`evento`
(`COD_EVENTO`,		`DCR_EVENTO`,		`NUM_ORDEM_EVENTO`)
VALUES
(1,					'A - Pedido feito',		1);

INSERT INTO `ifoodsocial`.`evento`
(`COD_EVENTO`,		`DCR_EVENTO`,		`NUM_ORDEM_EVENTO`)
VALUES
(2,					'B - Iniciada preparação',	2);

INSERT INTO `ifoodsocial`.`evento`
(`COD_EVENTO`,		`DCR_EVENTO`,		`NUM_ORDEM_EVENTO`)
VALUES
(3,					'C - Retirada',		3);

INSERT INTO `ifoodsocial`.`evento`
(`COD_EVENTO`,		`DCR_EVENTO`,		`NUM_ORDEM_EVENTO`)
VALUES
(2,					'D - Entrega',		4);

-- Entrega ------------------------------------------------------------------------------
INSERT INTO `ifoodsocial`.`entrega`
(`COD_ENTREGA`,			`COD_PEDIDO`,			`COD_FUNCIONARIO`,
`DATA_SAIDA`,			
`DATA_ENTREGA`,			`VLR_ENTREGA`,
`DCR_ENDERECO`,			`DCR_COMPLEM`,			`NUM_CEP`,
`TXT_REFERENCIA`,		`COD_CIDADE`,			`COD_BAIRRO`,
`COD_LOCALIDADE`,		`FLAG_ENCOMENDA`,		`FLAG_ENTREGADOR`)
VALUES
(200,					20,						22,
STR_TO_DATE("06/06/2024 15:20", "%d/%m/%Y %H:%i"),		
STR_TO_DATE("06/06/2024 15:35", "%d/%m/%Y %H:%i"),		33.50,
'UESC - CEU',			'-',					'-',
'Próximo à xerox',		2,						20,
201,					'N',					'S');

delete from  rastreamento_pedido where cod_rastreamento_pedido = 4;
select * from rastreamento_pedido;

-- Eventos de entrega ---------------------------------------------------------------
INSERT INTO `ifoodsocial`.`rastreamento_pedido`
(`COD_RASTREAMENTO_PEDIDO`,		`COD_PEDIDO`,
`COD_EVENTO_PEDIDO`,			`DATA_HORA_EVENTO`)
VALUES
(2001,		20,
1,			STR_TO_DATE("06/06/2024 15:12", "%d/%m/%Y %H:%i"));

INSERT INTO `ifoodsocial`.`rastreamento_pedido`
(`COD_RASTREAMENTO_PEDIDO`,		`COD_PEDIDO`,
`COD_EVENTO_PEDIDO`,			`DATA_HORA_EVENTO`)
VALUES
(2002,		20,
2,			STR_TO_DATE("06/06/2024 15:15", "%d/%m/%Y %H:%i"));

INSERT INTO `ifoodsocial`.`rastreamento_pedido`
(`COD_RASTREAMENTO_PEDIDO`,		`COD_PEDIDO`,
`COD_EVENTO_PEDIDO`,			`DATA_HORA_EVENTO`)
VALUES
(2003,		20,
3,			STR_TO_DATE("06/06/2024 15:20", "%d/%m/%Y %H:%i"));

INSERT INTO `ifoodsocial`.`rastreamento_pedido`
(`COD_RASTREAMENTO_PEDIDO`,		`COD_PEDIDO`,
`COD_EVENTO_PEDIDO`,			`DATA_HORA_EVENTO`)
VALUES
(2004,		20,
4,			STR_TO_DATE("06/06/2024 15:35", "%d/%m/%Y %H:%i"));

02D - IFoodSocial - Script DML - Carga de Dados.sql
Exibindo 02D - IFoodSocial - Script DML - Carga de Dados.sql…