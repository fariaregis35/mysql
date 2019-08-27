select e.uf, p.valor_pib) from estado e 
where p.valor_pib =(select p.valor_pib from pib_estado p) 





/*b*/

select  e.uf,p.valor_pib, Avg(p.valor_pib) Media_pib from estado e 
inner join pib_estado p on e.id = p.id_estado
group by p.valor_pib 


/*c listar ano e pib total do pais para cada ano */ 




select ano_pib,sum(ano_pib) as total_pib from pib_estado 
group by ano_pib

/*e*/

SELECT 
    e.uf, COUNT(c.id) qt_cidades, SUM(p.valor_pib) / COUNT(c.id) as vl_por_cidade
FROM
    cidade c
        INNER JOIN
    estado e ON c.id_estado = e.id
        INNER JOIN
    pib_estado p ON e.id = p.id_estado
    where p.ano_pib =2015
GROUP BY e.id;


/*e*/
select p.ano_pib , 
	e.regiao, 
	sum(p.valor_pib), 
    Max(p.valor_pib) ,
    Min(p.valor_pib)
    from pib_estado p 
inner join estado e on e.id = p.id_estado

group by 
p.ano_pib ,e.regiao 



/*g*/
select e.regiao,p.valor_pib  from estado e 
inner join pib_estado p on p.id_estado =e.id



select e.regiao,(sum(p.valor_pib)*100)/(select sum(valor_pib)
from pib_estado where ano_pib=2015) from estado e 
inner join pib_estado p on p.id_estado = e.id
where p.ano_pib=2015
group by e.regiao