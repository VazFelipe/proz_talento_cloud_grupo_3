INSERT INTO cliente (nome, email, telefone, mensagem, data_formulario, fk_id_pagina)
SELECT
    arrays.nome[s.a % ARRAY_LENGTH(arrays.nome,1) + 1] AS nome,
    CONCAT(arrays.nome[s.a % ARRAY_LENGTH(arrays.nome,1) + 1], '.', arrays.sobrenome[s.a % ARRAY_LENGTH(arrays.sobrenome,1) + 1], '@exemplo.com') AS email,
    arrays.telefone[s.a % ARRAY_LENGTH(arrays.telefone,1) + 1] AS telefone,
    arrays.mensagem[s.a % ARRAY_LENGTH(arrays.mensagem,1) + 1] AS mensagem,
    random_date() AS data_formulario,
    random_int(1, 5) AS fk_id_pagina
FROM generate_series(1, generate_data()) AS s(a) -- number of records to generate
CROSS JOIN(
    SELECT ARRAY[
    'Adam','Bill','Bob','Calvin','Donald','Dwight','Frank','Fred','George','Howard',
    'James','John','Jacob','Jack','Martin','Matthew','Max','Michael',
    'Paul','Peter','Phil','Roland','Ronald','Samuel','Steve','Theo','Warren','William',
    'Abigail','Alice','Allison','Amanda','Anne','Barbara','Betty','Carol','Cleo','Donna',
    'Jane','Jennifer','Julie','Martha','Mary','Melissa','Patty','Sarah','Simone','Susan'
    ] AS nome,
    ARRAY[
        'Matthews','Smith','Jones','Davis','Jacobson','Williams','Donaldson','Maxwell','Peterson','Stevens',
        'Franklin','Washington','Jefferson','Adams','Jackson','Johnson','Lincoln','Grant','Fillmore','Harding','Taft',
        'Truman','Nixon','Ford','Carter','Reagan','Bush','Clinton','Hancock'
    ] AS sobrenome,
  ARRAY[
        '11999999999','12999999999','13999999999','14999999999','15999999999','16999999999','17999999999',
    	'18999999999','19999999999','21999999999','22999999999','24999999999','27999999999','28999999999',
    	'31999999999','32999999999','33999999999','34999999999','35999999999','37999999999','38999999999',
    	'41999999999','42999999999','43999999999','44999999999','45999999999','46999999999','47999999999',
    	'48999999999','49999999999','51999999999','53999999999','54999999999','55999999999','61999999999',
    	'62999999999','63999999999','64999999999','65999999999','66999999999','67999999999','68999999999',
    	'69999999999','71999999999','73999999999','74999999999','75999999999','77999999999','79999999999',
    	'81999999999','82999999999','83999999999','84999999999','85999999999','86999999999','87999999999',
    	'88999999999','89999999999','91999999999','92999999999','93999999999','94999999999','95999999999',
    	'96999999999','97999999999','98999999999','99999999999'
    ] AS telefone,
  ARRAY[  
		'Olá, ligar para mim em São Paulo pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em São José dos Campos pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Santos pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Bauru pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Sorocaba pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Ribeirão Preto pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em São José do Rio Preto pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Presidente Prudente pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Campinas pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Rio de Janeiro pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Campos dos Goytacazes pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Volta Redonda pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Vitória / Vila Velha pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Cachoeiro de Itapemirim pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Belo Horizonte pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Juiz de Fora pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Governador Valadares pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Uberlândia pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Poços de Caldas pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Divinópolis pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Montes Claros pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Curitiba pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Ponta Grossa pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Londrina pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Maringá pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Foz do Iguaçú pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Pato Branco / Francisco Beltrão pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Joinville pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Florianópolis pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Chapecó pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Porto Alegre pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Pelotas pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Caxias do Sul pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Santa Maria pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Brasília pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Goiânia pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Palmas pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Rio Verde pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Cuiabá pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Rondonópolis pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Campo Grande pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Rio Branco pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Porto Velho pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Salvador pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Ilhéus pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Juazeiro pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Feira de Santana pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Barreiras pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Aracaju pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Recife pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Maceió pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em João Pessoa pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Natal pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Fortaleza pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Teresina pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Petrolina pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Juazeiro do Norte pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Picos pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Belém pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Manaus pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Santarém pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Marabá pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Boa Vista pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Macapá pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Coari pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em São Luís pois acessei o site e quero adquirir um pacote.',
        'Olá, ligar para mim em Imperatriz pois acessei o site e quero adquirir um pacote.'
    ] AS mensagem  
) AS arrays