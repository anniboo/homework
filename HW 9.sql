

-- 1.В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
  INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
  DELETE FROM shop.users WHERE id = 1 LIMIT 1;
COMMIT;

-- 2.Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW products_catalogs AS
SELECT
  products.name AS product,
  catalogs.name AS catalog
FROM
  products
JOIN
  catalogs
ON
  products.catalog_id = catalogs.id;
 
 -- 4.Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя
-- только 5 самых свежих записей.

 CREATE TABLE some_table(
  id SERIAL PRIMARY KEY,
  some_product VARCHAR(100),
  created_at DATE NOT NULL
);

INSERT INTO some_table VALUES
(1, 'какой-то текст раз','2019-08-01'),
(2, 'какой-то текст два','2010-11-12'),
(3, 'какой-то текст три','2012-12-12'), 
(4, 'какой-то текст десять','2015-08-11'),
(5, 'какой-то текст пять','2016-09-21'),
(6, 'какой-то текст шесть','2015-02-16'),
(7, 'какой-то текст четыре','2012-10-09'),
(8, 'какой-то текст восемь','2019-08-21'),
(9, 'какой-то текст одиннадцать','2017-12-22')

SELECT * FROM some_table;

DELETE
  some_table
FROM
  some_table
JOIN
 (SELECT created_at FROM some_table
  ORDER BY created_at DESC
  LIMIT 5, 1) AS deletesome
ON
  some_table.created_at <= deletesome.created_at;
 
 SELECT * FROM some_table;

-- Хранимые процедуры и функции, триггеры

-- 1.Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна
-- возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать
-- фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 —
-- "Доброй ночи".
DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
  END CASE;
END //

DELIMITER ;

-- Задание 2

DELIMITER //

CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//
