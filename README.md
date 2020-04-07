<h1 align="center">
    <img alt="POKEMON" src="https://www.pngarts.com/files/4/Pokemon-Logo-PNG-Transparent-Image.png" width="400px" />
</h1>


<h3 align="center">
  Atividades banco de dados POKEMON
</h3>

<blockquote align="center">“Pokémon
Tenho que pegá-los (isso eu sei...)
Pegá-los eu tentarei,
Pokémon!”</blockquote>

<p align="center">

  <a href="pokemon.com">
    <img alt="Made by Ricardo Froeseler" src="https://img.shields.io/badge/made%20by-Ricardo Froeseler-%23F8952D">
  </a>
  <a href="pokemon.com">
    <img alt="License Pokémon. TM, ® Nintendo" src="https://img.shields.io/badge/-Pok%C3%A9mon.%20TM%2C%20%C2%AE%20Nintendo-yellow">
  </a>
</p>

<p align="center">
  <a href="## Exercicio 01">Atividade 01</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="## Exercicio 02">Atividade 02</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>


## Exercicio 01
<P>as respostas estão no arquivo pdf<P> 


use pokedex;

select * from pokemon;
	

select numero, nome, cor, altura_m, peso_kg from pokemon;
	

select numero, nome, geracao from pokemon where geracao = 1 ;select numero, nome from pokemon where geracao = 1 ;


select nome, cor, geracao  from pokemon where (geracao = 1 and cor = 'amarelo' or cor = 'yellow') ;


select numero, nome, ataque from pokemon where ataque = (select max(ataque) from pokemon);


select numero, nome, tipo1 from pokemon where tipo1 = 'Fire';
	

SELECT nome, numero, defesa FROM pokemon ORDER BY defesa DESC;


SELECT nome, numero, defesa FROM pokemon ORDER BY nome, numero, defesa DESC;


select numero, nome from pokemon where taxa_captura = (select min(taxa_captura) from pokemon);
	

select * from pokemon where ( tipo2 is null );
	

select numero, nome, tipo1, tipo2, peso_kg from pokemon WHERE peso_kg BETWEEN 100 and 500;
	

select  numero, nome , velocidade from pokemon order by  velocidade DESC LIMIT 10;
	

select numero, nome, tipo1, tipo2, taxa_captura from pokemon where tipo2 is not null and tipo1 is not null and taxa_captura > 100 ;
	

SELECT distinct tipo1 FROM pokemon;
	

select  numero, nome , cor from pokemon where nome like 'D%' or 'd%';
	
select numero, nome, ataque, defesa, hp, ataque_especial, defesa_especial, velocidade, total, geracao from pokemon where total = (select max(total) from pokemon);
	

select  numero, nome, defesa, ataque from pokemon where defesa > 60 and ataque <= 70 order by total desc;
	

select nome, cor, tipo1, tipo2 from pokemon where (tipo1 = 'planta' and tipo2 = 'venenoso') and cor <> "green" order by nome asc;
	

select nome from pokemon WHERE nome LIKE '___y%' order by nome asc;
	
select ataque_especial from pokemon where ataque_especial = (select max(ataque_especial) from pokemon);
	

select numero, nome, altura_m from pokemon where altura_m > "2.10m" ;
	

SELECT distinct cor  FROM pokemon order by cor asc;
	

select nome, velocidade from pokemon where velocidade > 30 and velocidade < 70 order by nome asc;select nome, velocidade from pokemon where velocidade > 30 and velocidade < 70 order by velocidade asc;
	

select * from pokemon where lendario = 1 order by total desc;
	

select * from pokemon where taxa_captura = 255 and geracao = 1 ;
	

select * from pokemonwhere nome in ('Pikachu', 'Squirtle', 'Bulbasaur', 'Charmander')order by total desc;
	

SELECT * FROM pokemon WHERE nome LIKE 'd%' and tipo2 is null;
	

select numero, nome, total, taxa_captura from pokemon where lendario = 1 order by taxa_captura desc limit 5;
	

select numero, nome, peso_kg from pokemon where peso_kg > "2kg" and peso_kg < "3kgs" ;

select numero, nome, tipo1, tipo2 from pokemon where tipo1 = 'Normal' and tipo2 is null and lendario <> 1;

select nome, cor, tipo1, tipo2 from pokemon where (tipo1 = 'water' or tipo2 = 'water') and cor <> "Blue" order by nome asc;
	

select * from pokemon order by  velocidade asc LIMIT 10;
	

 SELECT * FROM pokemon WHERE nome LIKE 'a%a';
	

select nome, cor, tipo1, tipo2 from pokemon where (tipo1 = 'fire' or tipo2 = 'fire') and cor <> "Red" order by nome asc;
	

SELECT distinct peso_kg FROM pokemon order by peso_kg asc;
	

select  numero, nome , hp from pokemon where hp >= 0 and hp <= 100 order by hp asc;
	

select numero, nome, hp, ataque, defesa, total from pokemon where  hp and ataque and defesa  >= 100 ;
	

SELECT * FROM pokemon where tipo1 = "water" and tipo2 = "gelo" order by total desc;

## Exercicio 02


-- Exercicio 1
select max(total), max(hp), max(ataque), 
max(defesa), max(ataque_especial), max(defesa_especial), 
max(velocidade),max(taxa_captura) from pokemon;

-- Exercicio 2
select count(distinct cor) from pokemon;

-- Exercicio 3
select avg(peso_kg) from pokemon;

-- Exercicio 4
select sum(altura_m) from pokemon;

-- Exercicio 5
select count(*) from pokemon;

-- Exercicio 6
select avg(altura_m) from pokemon;

-- Exercicio 7
select std(hp) from pokemon;

-- Exercicio 8
select count(*) from pokemon where tipo2 is not null;

-- Exercicio 9
select count(distinct tipo1) from pokemon;

-- Exercicio 10
select sum(peso_kg) from pokemon;

-- Exercicio 11
/* Lendários */
select count(*) from pokemon where lendario = true;

/* Não lendários */
select count(*) from pokemon where lendario = false;

-- Exercicio 12
select cor, count(*) as quantidade from pokemon
group by(cor) order by cor desc

-- Exercicio 13
SELECT tipo1, avg(peso_kg), avg(altura_m) from pokemon
group by tipo1 order by peso_kg desc

select tipo1, avg(peso_kg), avg(altura_m) from pokemon
group by tipo1 order by altura_m desc

-- Exercicio 14
select cor, avg(taxa_captura) as taxa_captura_media from pokemon
where lendario = true group by(cor);

-- Exercicio 15
select tipo1, avg(taxa_captura) from pokemon
group by tipo1 having avg(taxa_captura) > 100;

-- Exercicio 16
select cor, nome, total from pokemon where lendario = false
group by (cor) having avg(total) < 400;

-- Exercicio 17
select geracao, max(total) from pokemon
group by geracao;

-- Exercicio 18
select geracao, count(*) as "Total lendários" from pokemon where lendario = true
group by geracao;

-- Exercicio 19
select geracao, count(*) as "tem tipo1 e tipo2", avg(taxa_captura) from pokemon where tipo1 is not null and tipo2 is not null
group by geracao;

-- Exercicio 20
select count(cor), nome from pokemon where lendario = true
group by nome;
