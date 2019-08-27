-- 1



-- 2
select f.nome , f.sexo 
from funcionario f
where f.cod_cargo in
(select c.cod_cargo from cargo c where c.salario > 1400) 



-- 3 Listar	as	informações	dos	cargos	que não possuem
-- funcionários

select * from cargo a where 
(select * from cargo where cod_


select * from funcionario

-- 4 Listar	o	nome,	data	de	admissão	e	sexo	dos	funcionarios
-- do	departamento Financeiro
 


select nome , data_adm ,sexo from funcionario 
where cod_depto = 
(select cod_depto from departamento where nome ='financeiro')


select f.cod_func, f.nome , f.data_adm, f.sexo , f.cod_depto  
from funcionario f where sexo ='M' and data_adm <
(select data_adm from funcionario where nome ='Janete Rosa') 
