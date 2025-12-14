SELECT product.name AS product_name, product.amount AS amount
FROM product
JOIN category ON product.category_id = category.id
WHERE (category.name = 'Meat' OR category.name = 'Grains') AND (amount <100 )
ORDER BY product_name