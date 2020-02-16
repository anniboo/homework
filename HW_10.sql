-- Задания на БД vk:

-- Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
-- Возможные индексы для запросовБ необходимость считать кол-во сообщений, локации пользователей, для 
 CREATE INDEX profiles_country_hometown_idx ON profiles(country, hometown);
 CREATE INDEX communities_users_idx ON communities_users(user_id);
 CREATE INDEX messages_from_user_id_idx ON communities(from_user_id);
 CREATE INDEX messages_to_user_id_idx ON messages(to_user_id);


-- Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100


SELECT DISTINCT communities.name AS communitie_name, 
COUNT(communities_users.user_id) OVER () / (SELECT COUNT(DISTINCT(communities.id)) FROM communities) AS AVR_Users,
FIRST_VALUE (CONCAT(users.first_name,' ',users.last_name)) OVER (PARTITION BY communities.id ORDER BY profiles.birthdate DESC) AS Younger,
FIRST_VALUE (CONCAT(users.first_name,' ',users.last_name)) OVER (PARTITION BY communities.id ORDER BY profiles.birthdate) AS Oldest,
COUNT(communities_users.user_id) OVER (PARTITION BY communities.id) AS Users_in_Community,
COUNT(users.id) OVER () AS Total_Users,
COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) / COUNT(users.id) OVER() *100 AS users_persent
FROM communities 
	JOIN communities_users
		ON communities.id = communities_users.community_id
	JOIN users
		ON communities_users.user_id = users.id
	JOIN profiles
		ON 	users.id = profiles.user_id;
