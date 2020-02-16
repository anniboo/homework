-- ����� ����� ��������� ������������. 
-- �� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.

   	SELECT users.id, CONCAT(users.first_name,' ', users.last_name) AS friend_name, COUNT(DISTINCT(messages.created_at)) AS activity
   	FROM users
   		JOIN messages
        	ON to_user_id = 4
        	AND from_user_id = users.id
        LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
    GROUP BY users.id
  	ORDER BY COUNT(messages.body) DESC
  LIMIT 1;

 -- ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
 
SELECT users.id, first_name, last_name, profiles.birthdate, COUNT(*) AS total_likes
  FROM users
  	JOIN profiles
    	ON users.id = profiles.user_id
    LEFT JOIN likes
      ON likes.target_id = users.id
  GROUP BY users.id
  ORDER BY profiles.birthdate DESC
  LIMIT 10;
 
-- ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?

SELECT CASE(sex)
			WHEN 'm' THEN 'man'
			WHEN 'f' THEN 'woman'
		END AS sex, 
	COUNT(*) as likes_count 
FROM profiles
  	JOIN likes
    	ON profiles.user_id = likes.user_id
  GROUP BY sex
  ORDER BY likes_count DESC
  LIMIT 1;
 
-- ����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ���������� ����.

 SELECT users.id, CONCAT(users.first_name,' ', users.last_name) AS name, 
 		COUNT(DISTINCT(media.id)) + COUNT(DISTINCT(messages.id)) + COUNT(DISTINCT(likes.id)) AS activity
 	FROM users
 		LEFT JOIN media
 			ON media.user_id = users.id
 		LEFT JOIN messages
 			ON messages.from_user_id = users.id
 		LEFT JOIN likes
 			ON likes.user_id = users.id
 	GROUP BY users.id
 	ORDER BY activity
 	LIMIT 10;