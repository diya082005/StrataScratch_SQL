/* You have been tasked with finding the worker IDs of individuals who logged in between the 13th to the 19th inclusive of December 2021.


In your output, provide the unique worker IDs for the dates requested.
worker_logins
Preview
id	worker_id	login_timestamp	ip_address	country	region	city	device_type
0	1	2021-12-14 09:01:00	65.111.191.14	USA	Florida	Miami	desktop
1	4	2021-12-18 10:05:00	46.212.154.172	Norway	Viken	Skjetten	desktop
2	3	2021-12-15 08:55:00	80.211.248.182	Poland	Mazovia	Warsaw
*/
select distinct worker_id
from worker_logins
WHERE login_timestamp >= '2021-12-13 00:00:00'
  AND login_timestamp < '2021-12-19 00:00:00'; 