-- Quais os 10 setups para os jogos mais bem avaliados?

SELECT s.positive_ratings, s.name, s.release_date, srd.minimum 
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.positive_ratings DESC
LIMIT 10;

