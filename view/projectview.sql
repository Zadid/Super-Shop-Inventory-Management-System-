create or replace view morethantenview(view_id, view_name, view_quantity)
as select product.product_id, product.product_name, productinfo.productt_stock
from product@site_link2, productinfo@site_link2
where product.product_id= productinfo.product_id

select view_id, view_name, view_quantity
from morethantenview 
where view_quantity >= 10