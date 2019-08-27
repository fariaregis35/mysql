select * from cargo 
where salario=
(select (max(salario)) from cargo) 
order by salario desc
limit 1