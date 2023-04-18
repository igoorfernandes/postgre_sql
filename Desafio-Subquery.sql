-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

select visit_id from sales.funnel


with visitas as (

	select customer_id,
		count(*) as n_visitas
	from sales.funnel
	group by customer_id
)

select cus.*, 
n_visitas
from sales.customers as cus 
left join visitas
 on cus.customer_id = visitas.customer_id
 