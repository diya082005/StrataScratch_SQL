/* You are given the list of Facebook friends and the list of Facebook pages that users follow. Your task is to create a new recommendation system for Facebook. For each Facebook user, find pages that this user doesn't follow but at least one of their friends does. Output the user ID and the ID of the page that should be recommended to this user.
Tables
users_friends
users_pages

user_id	friend_id  
1	2
1	4
1	5
2	1
2	3
2	4
2	5
3	2
4	1
4	2
5	1
5	2
friend_id:
bigint
user_id:
bigint

users_pages

user_id	page_id
1	21
1	25
2	25
2	23
2	24
2	28
2	21
3	25
3	24
5	23
5	28
page_id:
bigint
user_id:
bigint  */
SELECT 
    f.user_id, 
    p.page_id
FROM users_friends f
JOIN users_pages p 
  ON f.friend_id = p.user_id
WHERE NOT EXISTS (
    SELECT 1 
    FROM users_pages up 
    WHERE up.user_id = f.user_id 
      AND up.page_id = p.page_id
);
