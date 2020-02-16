-- Задание 2 КТО БОЛЬШЕ ВСЕХ ОБЩАЛСЯ
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend,
  COUNT(*) AS total_messages 
  FROM messages 
    WHERE to_user_id = 17 
      AND from_user_id IN (
        SELECT friend_id AS id FROM friendship WHERE user_id = to_user_id
        UNION
        SELECT user_id AS id FROM friendship WHERE friend_id = to_user_id    
        )
    GROUP BY messages.from_user_id
    ORDER BY total_messages DESC
    LIMIT 1;
    
    -- Задание 3
    
SELECT SUM(likes_per_user) AS likes_total FROM ( 
  SELECT COUNT(*) AS likes_per_user 
    FROM likes 
      WHERE target_type_id = 2
        AND target_id IN (
          SELECT * FROM 
          (SELECT user_id FROM profiles ORDER BY birthdate DESC LIMIT 10) 
			AS sorted_profiles 
        ) 
      GROUP BY target_id
) AS counted_likes;

-- Задание 4 кто больше ставит лайков мужчины или женщины:

SELECT sex, COUNT(*) as likes_count 
	  FROM (
	    SELECT
	user_id as user, 
    (SELECT sex FROM profiles WHERE user_id IN (SELECT id FROM profiles)) AS sex FROM likes) some_table
    GROUP BY sex
    ORDER BY likes_count DESC
    LIMIT 1;
    
    -- Задание 5 самая маленькая активность в сети
    
SELECT CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;
	