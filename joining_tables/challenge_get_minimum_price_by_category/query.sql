SELECT category.name AS category_name, MIN(product.price) AS min_price
FROM category
JOIN product ON category.id = product.category_id
GROUP BY category_name
HAVING COUNT(product.name) > 5
ORDER BY category_name