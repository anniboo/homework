-- ������������ ������� �� ���� ������������ ��������
-- �������� ������� logs ���� Archive. 
-- ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� logs 
-- ���������� ����� � ���� �������� ������, �������� �������, ������������� ���������� ����� � ���������� ���� name.

CREATE TABLE logs(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	table_name VARCHAR(25) NOT NULL,
	created_at datetime DEFAULT CURRENT_TIMESTAMP,
	row_id INT UNSIGNED NOT NULL,
    row_name varchar(250)
    ) ENGINE = Archive;
    
CREATE TRIGGER users_update AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, 'users', NEW.id, NEW.name);
END;

CREATE TRIGGER catalogs_update AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, 'catalogs', NEW.id, NEW.name);
END;

CREATE TRIGGER products_update AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, 'products', NEW.id, NEW.name);
END;

-- ������������ ������� ���� "NoSQL"
-- 1. � ���� ������ Redis ��������� ��������� ��� �������� ��������� � ������������ IP-�������.
HINCRBY addresses '128.0.0.1' 1
HGETALL addresses

HINCRBY addresses '128.0.0.2' 1
HGETALL addresses

HGET addresses '128.0.0.1'

-- 2. ��� ������ ���� ������ Redis ������ ������ ������ ����� ������������ �� ������������
-- ������ � ��������, ����� ������������ ������ ������������ �� ��� �����.

HSET emails 'Alisa' 'alisa@mail.com'
HSET emails 'Katya' 'Katya@mail.com'
HSET emails 'Sasha' 'Sasha@mail.com'
HSET emails 'Sashan' 'Sashan@mail.com'

HGET emails 'Katya'

HSET users 'alisa@mail.com' 'Alisa'
HSET users 'Katya@mail.com' 'Katya'
HSET users 'Sasha@mail.com' 'Sasha'
HSET users 'Sashan@mail.com' 'Sashan'


HGET users 'Sashan@mail.com'

-- 3. ����������� �������� ��������� � �������� ������� ������� ���� ������ shop � ���� MongoDB.
--  ������ ���� ��������� ����� �������� � ��������� � ������ �������� � ���� ������ �� �����������