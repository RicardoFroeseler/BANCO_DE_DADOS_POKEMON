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