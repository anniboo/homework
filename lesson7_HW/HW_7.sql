-- Задание 1 Хотя бы 1 заказ
USE shop;

SELECT id, name FROM users WHERE id IN (SELECT user_id FROM orders);

SELECT
  users.id, users.name
FROM
  users
JOIN
  orders
ON
  users.id = orders.user_id;
  
  -- 2. Вывести список товаров products и разделов catalogs, который соответствует товару.
  
  SELECT
  products.id,
  products.name,
  products.price,
  catalogs.name AS catalog
FROM
  products
LEFT JOIN
  catalogs
ON
  products.catalog_id = catalogs.id;