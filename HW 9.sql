

-- 1.� ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������.
-- ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.

START TRANSACTION;
  INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
  DELETE FROM shop.users WHERE id = 1 LIMIT 1;
COMMIT;

-- 2.�������� �������������, ������� ������� �������� name ��������
-- ������� �� ������� products � ��������������� �������� �������� name �� ������� catalogs.

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
 
 -- 4.����� ������� ����� ������� � ����������� ����� created_at. 
-- �������� ������, ������� ������� ���������� ������ �� �������, ��������
-- ������ 5 ����� ������ �������.

 CREATE TABLE some_table(
  id SERIAL PRIMARY KEY,
  some_product VARCHAR(100),
  created_at DATE NOT NULL
);

INSERT INTO some_table VALUES
(1, '�����-�� ����� ���','2019-08-01'),
(2, '�����-�� ����� ���','2010-11-12'),
(3, '�����-�� ����� ���','2012-12-12'), 
(4, '�����-�� ����� ������','2015-08-11'),
(5, '�����-�� ����� ����','2016-09-21'),
(6, '�����-�� ����� �����','2015-02-16'),
(7, '�����-�� ����� ������','2012-10-09'),
(8, '�����-�� ����� ������','2019-08-21'),
(9, '�����-�� ����� �����������','2017-12-22')

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

-- �������� ��������� � �������, ��������

-- 1.�������� �������� ������� hello(), ������� ����� ���������� �����������,
-- � ����������� �� �������� ������� �����. � 6:00 �� 12:00 ������� ������
-- ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ����������
-- ����� "������ ����", � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 �
-- "������ ����".
DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "������ �����";
  END CASE;
END //

DELIMITER ;

-- ������� 2

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
