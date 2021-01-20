create or replace view pricemorethanhundrad(view_id, view_name, view_price)
as select product.product_id, product.product_name, productinfo.product_price
from product@site_link2, productinfo@site_link2
where product.product_id= productinfo.product_id

select view_id, view_name, view_price
from pricemorethanhundrad 
where view_price >= 100