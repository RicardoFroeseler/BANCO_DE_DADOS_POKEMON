
	

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