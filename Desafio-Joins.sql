-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel



select
prod.brand,
count(*) visitas
from sales.funnel as fun
left join sales.products as prod
	on fun.product_id = prod.product_id
group by brand
order by visitas desc


-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel

select store_id from sales.funnel
select store_name from sales.stores


select st.store_name,
count(*) visitas
from sales.funnel as fun
left join sales.stores as st
	on fun.store_id = st.store_id
group by st.store_name
order by visitas desc


-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)


select state from temp_tables.regions
select state from sales.customers


select reg.size,
count(*) contagem

from temp_tables.regions as reg
left join sales.customers as cus
	on lower(reg.city) = lower (cus.city) 
	and reg.state = cus.state
group by size
order by contagem
 








