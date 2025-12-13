SELECT category.name, SUM(product.amount) AS total_amount
FROM product
JOIN category ON product.category_id = category.id
GROUP BY category.name
ORDER BY total_amount